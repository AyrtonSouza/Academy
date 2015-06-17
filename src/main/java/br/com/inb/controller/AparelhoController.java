/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.inb.controller;

import br.com.inb.dao.AparelhoDAO;
import br.com.inb.entity.Aparelho;
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
 * @author Thrax
 */
@Controller
public class AparelhoController {

    public AparelhoController() {
    }

    @Autowired
    private AparelhoDAO aparelhoDao;

//Metodo responsavel pela chamada do cadAparelho.jsp
    @RequestMapping("/cadAparelho")
    public String formulario(ModelMap modelMap) {
        modelMap.addAttribute("aparelho", aparelhoDao.findById(0));
        return "/cadAparelho";
    }

    /**
     * Metodo responsavel pela chamada da listAparelho.jsp alem de carregar para
     * esta visao a lista de pacotes para serem listados pela mesma
     *
     * @param modelMap
     * @return
     */
    @RequestMapping("/listAparelho")
    public String listarAparelho(ModelMap modelMap) {
        modelMap.addAttribute("aparelho", aparelhoDao.findAll());

        return "/listAparelho";
    }

    /**
     * Resposavel por cadastrar o objeto aparelho que vem da visao e persistir o
     * mesmo no banco de dados.
     *
     * @param aparelho
     * @return
     */
    @RequestMapping(value = "/adicionaAparelho", method = POST)
    public String cadastrarAparelho(@ModelAttribute Aparelho aparelho) {
        if (aparelho.getApaId()== null) {
            aparelhoDao.persist(aparelho);
        } else {
            aparelhoDao.merge(aparelho);
        }
        return "redirect:listAparelho";

    }

    /**
     * Responsavel por trazer do banco baseado no id passado pela url o pacote
     * para ser editado e enviar o mesmo para o cadAparelho.jsp
     *
     * @param id
     * @param modelMap
     * @return
     */
    @RequestMapping(value = "/editarAparelho", method = RequestMethod.GET, params = "id")
    public String editarAparelho(@RequestParam("id") int id, ModelMap modelMap) {

        modelMap.addAttribute("aparelho", aparelhoDao.findById(id));

        return "/cadAparelho";

    }

    /**
     * Responsavel por remover do banco de dados o pacote informado pelo id
     * enviado pela url
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/removerAparelho", method = RequestMethod.GET, params = "id")

    public String delete(@RequestParam("id") int id) {

        aparelhoDao.remove(aparelhoDao.findById(id));

        return "redirect:/listAparelho";

    }

}