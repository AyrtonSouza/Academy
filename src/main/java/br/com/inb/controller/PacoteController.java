/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.inb.controller;

import br.com.inb.dao.PacoteDAO;
import br.com.inb.entity.Pacote;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import static org.springframework.web.bind.annotation.RequestMethod.POST;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Ayrton
 */
@Controller
public class PacoteController {

    public PacoteController() {
    }

    @Autowired
    private PacoteDAO pacoteDao;

    /**
     * Metodo responsavel pela chamada do cadPacote.jsp
     *
     * @param modelMap
     * @return
     */
    @RequestMapping("/cadPacote")
    public String formulario(ModelMap modelMap) {
        modelMap.addAttribute("pacote", pacoteDao.findById(0));
        return "/cadPacote";
    }

    /**
     * Metodo responsavel pela chamada da listPacote.jsp alem de carregar para
     * esta visao a lista de pacotes para serem listados pela mesma
     *
     * @param modelMap
     * @return
     */
    @RequestMapping("/listPacote")
    public String listarPacote(ModelMap modelMap) {
        modelMap.addAttribute("pacotes", pacoteDao.findAll());

        return "/listPacote";
    }

    /**
     * Resposavel por cadastrar o objeto pacote que vem da visao e persistir o
     * mesmo no banco de dados.
     *
     * @param pacote
     * @return
     */
    @RequestMapping(value = "/adicionaPacote", method = POST )
    public String cadastrarPacote(@ModelAttribute Pacote pacote) {
        if (pacote.getPacId() == null) {
            pacoteDao.persist(pacote);
        } else {
            pacoteDao.merge(pacote);
        }
        return "redirect:listPacote";

    }

    /**
     * Responsavel por trazer do banco baseado no id passado pela url o pacote
     * para ser editado e enviar o mesmo para o cadPacote.jsp
     *
     * @param id
     * @param modelMap
     * @return
     */
    @RequestMapping(value = "/editarPacote", method = RequestMethod.GET, params = "id")
    public String editarPacote(@RequestParam("id") int id, ModelMap modelMap) {

        modelMap.addAttribute("pacote", pacoteDao.findById(id));

        return "/cadPacote";

    }

    /**
     * Responsavel por remover do banco de dados o pacote informado pelo id
     * enviado pela url
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/removerPacote", method = RequestMethod.GET, params = "id")

    public String delete(@RequestParam("id") int id) {

        pacoteDao.remove(pacoteDao.findById(id));

        return "redirect:/listPacote";

    }

}
