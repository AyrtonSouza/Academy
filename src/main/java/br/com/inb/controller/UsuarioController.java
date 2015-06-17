/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.inb.controller;

import br.com.inb.dao.UsuarioDAO;
import br.com.inb.entity.Usuario;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author ale
 */
@Controller
public class UsuarioController {

    public UsuarioController() {
    }

    @Autowired
    private UsuarioDAO usuarioDao;

    /**
     * Metodo responsavel pela chamada do cadAluno.jsp
     *
     * @param modelMap
     * @param session
     * @return
     */
    @RequestMapping("/academia/cadAluno")
    public String formularioAluno(ModelMap modelMap, HttpSession session) {
        Usuario usuario = new Usuario();
        usuario.setFkPermiId(4);
        modelMap.addAttribute("usuarioLogado", session.getAttribute("usuarioLogado"));
        modelMap.addAttribute("usuario", usuario);
        return "/cadUsuario";
    }

    /**
     * Metodo responsavel pela chamada do cadProfessor.jsp
     *
     * @param modelMap
     * @param session
     * @return
     */
    @RequestMapping( "/academia/cadProfessor")
    public String formularioProfessor(ModelMap modelMap, HttpSession session) {
        Usuario usuario = usuarioDao.findById(0);
        usuario.setFkPermiId(3);
        modelMap.addAttribute("usuarioLogado", session.getAttribute("usuarioLogado"));
        modelMap.addAttribute("usuario", usuario);
        return "/cadUsuario";
    }

    /**
     * Metodo responsavel pela chamada da listAluno.jsp alem de carregar para
     * esta visao a lista de Alunos baseado pelo id da academia.
     *
     * @param modelMap
     * @param session
     * @return
     */
    @RequestMapping("/academia/listAluno")
    public String listarAlunos(ModelMap modelMap, HttpSession session) {
        Usuario usu = (Usuario) session.getAttribute("usuarioLogado");
        modelMap.addAttribute("usuario", usuarioDao.findByAcademiaAndPermission(4, usu.getFkAcadId()));
        modelMap.addAttribute("caminho","cadAluno");

        return "/listUsuario";
    }

    /**
     * Metodo responsavel pela chamada de listUsuario.jsp alem de carregar para
     * esta visao a lista de Professores basedo pelo o id da academia.
     *
     * @param modelMap
     * @param session
     * @return
     */
    @RequestMapping("/academia/listProfessor")
    public String listarProfessores(ModelMap modelMap, HttpSession session) {
        Usuario usu = (Usuario) session.getAttribute("usuarioLogado");
        modelMap.addAttribute("usuario", usuarioDao.findByAcademiaAndPermission(3, usu.getFkAcadId()));
        modelMap.addAttribute("caminho","cadProfessor");
        
        return "/listUsuario";
    }

    /**
     * Resposavel por cadastrar o usuario que vem da visao e persistir o mesmo
     * no banco de dados baseado no seu nivel de permissao, se for 4 o mesmo
     * sera cadastrado e retornado para a lista de aluno, se for igual a 3 o
     * mesmo retornará para a lista de professor
     *
     * @param usuario
     * @return
     */
    @RequestMapping(value = "/academia/adicionaUsuario", method = POST)
    public String cadastrarPacote(@ModelAttribute Usuario usuario,  ModelMap modelMap) {
        
        if (usuario.getUsuId() == null && usuario.getFkPermiId() == 4) {
            usuarioDao.persist(usuario);
            return "redirect:listAluno";
        } else if (usuario.getFkPermiId() == 4) {
            usuarioDao.merge(usuario);
            return "redirect:listAluno";
        }

        if (usuario.getUsuId() == null && usuario.getFkPermiId() == 3) {
            usuarioDao.persist(usuario);
            return "redirect:listProfessor";
        } else if (usuario.getFkPermiId() == 3) {
            usuarioDao.merge(usuario);
            return "redirect:listProfessor";
        }else{
       
        modelMap.addAttribute("msg", "Cadastro Não Foi Possivel, Tente Novamente");
        return"redirect:principal";
        }
       

    }

    /**
     * Responsavel por trazer do banco baseado no id passado pela url o usuario
     * para ser editado e enviar o mesmo para o cadUsuario.jsp
     *
     * @param id
     * @param modelMap
     * @return
     */
    @RequestMapping(value = "/academia/editarUsuario", method = RequestMethod.GET, params = "id")
    public String editarPacote(@RequestParam("id") int id, ModelMap modelMap) {

        modelMap.addAttribute("usuario", usuarioDao.findById(id));

        return "/cadUsuario";
    }

}
