/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.inb.controller;

import br.com.inb.dao.AparelhoDAO;
import br.com.inb.dao.ExercicioDAO;
import br.com.inb.entity.Aparelho;
import br.com.inb.entity.Exercicio;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author INB-07
 */
@Controller
public class ExercicioController {

    public ExercicioController() {
    }

    @Autowired
    private ExercicioDAO exercicioDao;

    @Autowired
    private AparelhoDAO aparelhoDao;

    /**
     * Metodo responsavel pela chamada do cadExercicio.jsp, carregando na visao
     * um objeto exercicio nulo e uma lista com todos os aparelhos
     *
     * @param modelMap
     * @return
     */
    @RequestMapping("/cadExercicio")
    public String formulario(ModelMap modelMap) {
        modelMap.addAttribute("exercicio", exercicioDao.findById(0));
        modelMap.addAttribute("aparelho", aparelhoDao.findAll());

        return "/cadExercicio";
    }

    /**
     * Metodo responsavel pela chamada da listExercicios.jsp alem de carregar
     * para esta visao a lista de exercicios para serem listados pela mesma
     *
     * @param modelMap
     * @return
     */
    @RequestMapping("/listExercicio")
    public String listarExercicio(ModelMap modelMap) {

        @SuppressWarnings({"unchecked", "rawtypes"})
        List<Aparelho> aparelhos = new ArrayList();
        List<Exercicio> exercicios = exercicioDao.findAll();
        for (Exercicio exer : exercicios) {
            aparelhos.add(aparelhoDao.findById(exer.getFkApaId()));
        }
        modelMap.addAttribute("exercicios", exercicios);
        modelMap.addAttribute("listaparelhos", aparelhos);

        return "/listExercicio";
    }

    /**
     * Resposavel por cadastrar o objeto exercicio que vem da visao e persistir
     * o mesmo no banco de dados.caso o mesmo ja exista o valor no banco entao e alterado
     *
     * @param exercicio
     * @return
     */
    @RequestMapping(value = "/adicionaExercicio", method = RequestMethod.POST)
    public String cadastrarExercicio(@ModelAttribute Exercicio exercicio) {
        if (exercicio.getExeId()== null) {
            exercicioDao.persist(exercicio);
        } else {
            exercicioDao.merge(exercicio);
        }
        return "redirect:listExercicio";

    }

    /**
     * Responsavel por trazer do banco baseado no id passado pela url o
     * exercicio para ser editado e enviar o mesmo para o cadExercicio.jsp
     *
     * @param id
     * @param modelMap
     * @return
     */
    @RequestMapping(value = "/editarExercicio", method = RequestMethod.GET, params = "id")
    public String editarExercicio(@RequestParam("id") int id, ModelMap modelMap) {
        modelMap.addAttribute("exercicio", exercicioDao.findById(id));
        modelMap.addAttribute("aparelho", aparelhoDao.findAll());
        
        return "/cadExercicio";

    }

    /**
     * Responsavel por remover do banco de dados o exercicio informado pelo id
     * enviado pela url
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/removerExercicio", method = RequestMethod.GET, params = "id")

    public String delete(@RequestParam("id") int id) {

        exercicioDao.remove(exercicioDao.findById(id));

        return "redirect:/listExercicio";

    }
}
