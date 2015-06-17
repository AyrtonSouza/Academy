/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.inb.controller;

import br.com.inb.dao.AparelhoDAO;
import br.com.inb.dao.ExercicioDAO;
import br.com.inb.dao.TreinoAlunoDAO;
import br.com.inb.dao.TreinoDAO;
import br.com.inb.dao.UsuarioDAO;
import br.com.inb.entity.Exercicio;
import br.com.inb.entity.Usuario;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Thrax
 */
@Controller
@RequestMapping("/treinos")
public class TreinoController {

    public TreinoController() {
    }

    @Autowired
    private TreinoDAO treinoDao;

    @Autowired
    private TreinoAlunoDAO treinoAlunoDao;

    @Autowired
    private AparelhoDAO aparelhoDao;

    @Autowired
    private ExercicioDAO exercicioDao;

    @Autowired
    private UsuarioDAO usuarioDao;

    /**
     * Carrega para a visão do professor os alunos daquela academia,onde o mesmo
     * escolherá qual vai ser gerenciado.
     *
     * @param modelMap
     * @param session
     * @return
     */
    @RequestMapping("/listAluno")
    public String formListAluno(ModelMap modelMap, HttpSession session) {
        Usuario usu = (Usuario) session.getAttribute("usuarioLogado");
        modelMap.addAttribute("alunos", usuarioDao.findByAcademiaAndPermission(4, usu.getFkAcadId()));
        return "/Mobile/listAluno";
    }

    /**
     *
     * @param modelMap
     * @return
     */
    @RequestMapping("/cadTreino")
    public String formCadTreino(ModelMap modelMap) {
        modelMap.addAttribute("usuario", treinoDao.findById(0));
        modelMap.addAttribute("aparelhos", aparelhoDao.findAll());

        return "/professor/cadTreino";
    }

    @RequestMapping("/listTreino")
    public String formListTreino(ModelMap modelMap, HttpSession session) {
        Usuario usu = (Usuario) session.getAttribute("usuarioLogado");
        modelMap.addAttribute("treino", treinoDao.findByAcademia(usu.getFkAcadId()));

        return "/professor/listTreino";
    }

    /**
     *
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/aparelho", method = RequestMethod.GET)
    public List<Exercicio> getLista(@RequestParam(value = "stateName", required = true) String state) {

        return exercicioDao.findByAparelho(Integer.parseInt(state));
    }

}
