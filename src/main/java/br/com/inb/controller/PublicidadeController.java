/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.inb.controller;

import br.com.inb.dao.AcademiaDAO;
import br.com.inb.dao.DiaDAO;
import br.com.inb.dao.HoraDAO;
import br.com.inb.dao.MesesDAO;
import br.com.inb.dao.PublicidadeDAO;
import br.com.inb.entity.Academia;
import br.com.inb.entity.Hora;
import br.com.inb.entity.Meses;
import br.com.inb.entity.Publicidade;
import br.com.inb.entity.Usuario;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import static org.springframework.web.bind.annotation.RequestMethod.POST;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Julika
 */
@Controller
public class PublicidadeController {

    @Autowired
    private PublicidadeDAO publicidadeDAO;

    @Autowired
    private AcademiaDAO academiaDAO;

    @Autowired
    private HoraDAO horaDAO;

    @Autowired
    private DiaDAO diaDAO;

    @Autowired
    private MesesDAO mesesDAO;

    @RequestMapping("/cadPublicidade")
    public String formulario(ModelMap model) {
        model.addAttribute("academias", academiaDAO.findAll());
        model.addAttribute("meses", mesesDAO.findAll());
        model.addAttribute("horas", horaDAO.findAll());
        return "/cadPublicidade";
    }
    
    @RequestMapping(value="adicionaPublicidade", method = POST )
    public String cadastroPublicidade(@ModelAttribute Publicidade publicidade, HttpServletRequest request, @RequestParam("dias") String[] dias) {
        File serverFile = null;
        if (publicidade.getImagem().getSize() != 0) {
            String nomeArquivo = publicidade.getImagem().getOriginalFilename();
            String extensaoArquivo = "";
            String[] parametrosArquivo = nomeArquivo.split("\\.");
            extensaoArquivo = parametrosArquivo[1];
            try {
                byte[] bytes = publicidade.getImagem().getBytes();
                 
                String rootPath = request.getRequestURL().toString();

                File dir = new File(rootPath + File.separator + "/resources/Publicidades");
                if (!dir.exists()) {
                    dir.mkdirs();
                }

                String arquivo = publicidade.getPubNome()+ "Publicidade." + extensaoArquivo;

                publicidade.setPubImagemNome(arquivo);
                // Create the file on server
                serverFile = new File(dir.getAbsolutePath()
                        + File.separator + arquivo);
                BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
            } catch (Exception e) {
                System.out.println(e.getCause());
            }
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < dias.length; i++) {
                sb.append(dias[i]);
                if (i != dias.length - 1) {
                    sb.append("/");
                }
            }
            publicidade.setPubDias(sb.toString());
            publicidadeDAO.persist(publicidade);
        }
        return "redirect:/listPublicidade";
    }
    @SuppressWarnings("unchecked")
    @RequestMapping("listPublicidade")
    public String listarPublicidades(ModelMap model) {
        List<Publicidade> listPublicidade = publicidadeDAO.findAll();

        model.addAttribute("publicidades", listPublicidade);
        
        List<Academia> listAcademia = new ArrayList();
        for (Publicidade publicidade : listPublicidade) {
            listAcademia.add(academiaDAO.findById(publicidade.getFkAcadId()));
        }
        model.addAttribute("todasAcademias", listAcademia);

        
        List<Hora> listHora = new ArrayList();
        for (Publicidade publicidade : listPublicidade) {
            listHora.add(horaDAO.findById(publicidade.getFkHoraId()));
        }
        model.addAttribute("horas", listHora);

        return "/listPublicidade";
    }

    /**
     *
     * @param session
     * @param model
     * @return
     */
    @RequestMapping("mostrarPublicidade")
    public String mostrarPublicidade(HttpSession session, ModelMap model) {
        Usuario user = (Usuario) session.getAttribute("usuarioLogado");
        Calendar cal = Calendar.getInstance();
        String currentDay = diaDAO.findById(cal.get(Calendar.DAY_OF_WEEK)).getDiaNome();
        String currentMoth = mesesDAO.findById(cal.get(Calendar.MONTH) + 1).getMesNome();
        int currentHour = cal.get(Calendar.HOUR_OF_DAY);

        List<Publicidade> listPublicidade = publicidadeDAO.findByAcademia(user.getFkAcadId());

        if (listPublicidade.isEmpty()) {
            if (user.getFkPermiId() == 4) {
                return "Mobile/Dash_aluno";
            } else {
                return "Professor/dashProfessor";
            }
        } else {
            for (Publicidade pub : listPublicidade) {
                List<String> dias = publicidadeDAO.findDiaById(pub.getPubId());
                if (dias.contains(currentDay) && mesesDAO.findById(pub.getFkMesId()).getMesNome().equals(currentMoth)) {
                    List<Integer> hour = horaDAO.findHoraById(pub.getFkHoraId());
                    if (currentHour >= hour.get(0) && currentHour <= hour.get(1)) {
                        model.addAttribute("image", pub.getPubImagemNome());
                        if (user.getFkPermiId() == 4) {
                            return "Mobile/Publicidade";
                        } else {
                            return "Professor/Publicidade";
                        }
                    }
                }
            }
            if (user.getFkPermiId() == 4) {
                return "Mobile/Dash_aluno";
            } else {
                return "Professor/dashProfessor";
            }
        }
    }
    @SuppressWarnings("unchecked")
    @RequestMapping("editarPublicidade")
    public ModelAndView editarPublicidade(@RequestParam("id") int id
    ) {
        ModelAndView mv = new ModelAndView("Admin/editarPublicidade");
        List<Publicidade> list = new ArrayList();

        list.add(publicidadeDAO.findById(id));
        mv.addObject("publicidadeedit", list);

        String imagem = list.get(0).getPubImagemNome();
        mv.addObject("image", imagem);

        List<Academia> listAcademia = academiaDAO.findAll();
        mv.addObject("academias", listAcademia);

        List<Meses> listMes = mesesDAO.findAll();
        mv.addObject("meses", listMes);

        List<Hora> listHoras = horaDAO.findAll();
        mv.addObject("horas", listHoras);

//        List<String> listDiasPub = pubDao.getDias(id);
        mv.addObject("diasPub", list.get(0).getPubDias());
        return mv;
    }
    
    @RequestMapping("removerPublicidade")
    public String removerPublicidade(@RequestParam("id") int id, HttpServletRequest request
    ) {
        Publicidade p = publicidadeDAO.findById(id);
        String rootPath = request.getServletPath();

        File dir = new File(rootPath + File.separator + "/resources/Publicidades/" + p.getPubImagemNome());
        dir.delete();
        publicidadeDAO.remove(p);
        return "redirect: listarPublicidade";
    }

    @RequestMapping("redirecionar")
    public String redirecionar(HttpSession session) {
        Usuario user = (Usuario) session.getAttribute("usuarioLogado");
        if (user.getFkPermiId() == 4) {
            return "Mobile/Dash_aluno";
        } else {
            return "Professor/dashProfessor";
        }
    }

}
