/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.inb.controller;

import br.com.inb.dao.MedidaDAO;
import br.com.inb.dao.UsuarioDAO;
import br.com.inb.entity.Medida;
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
 * @author ale
 */
@Controller
public class MedidaContrller {

    public MedidaContrller() {
    }
    
    @Autowired
    private MedidaDAO medidaDao;
    
    @Autowired
    private UsuarioDAO usuarioDao;
    
    /**
     * Metodo responsavel pela chamada do do cadastro de medida trazendo da visão o id do aluno.
     *
     * @param modelMap
     * @param id
     * @return
     */
    @RequestMapping(value = "/mobile/cadMedida", method = RequestMethod.GET, params = "alunoid")
    public String formulario(ModelMap modelMap, @RequestParam("id") int id ) {
        modelMap.addAttribute("medida", medidaDao.findById(id));
        modelMap.addAttribute("aluno", usuarioDao.findById(id));
        return "professor/cadMedida";
    }
    
    /**
     * Metodo responsavel pela chamada da listMedida.jsp alem de carregar para
     * esta visao a lista de medidas para serem listadas pela mesma
     *
     * @param modelMap
     * @return
     */
    @RequestMapping("/listMedida")
    public String listarMedida(ModelMap modelMap) {
        modelMap.addAttribute("medidas", medidaDao.findAll());

        return "/listMedida";
    }
    
    /**
     * Resposavel por cadastrar o objeto medida que vem da visao e persistir o
     * mesmo no banco de dados.
     *
     * @param medida
     * @return
     */
    @RequestMapping(value = "/adicionaMedida", method = POST)
    public String cadastrarMedida(@ModelAttribute Medida medida) {
        if (medida.getMedId()== null) {
            medidaDao.persist(medida);
        } else {
            medidaDao.merge(medida);
        }
        return "redirect:listMedida";

    }
    
    /**
     * Responsavel por trazer do banco baseado no id passado pela url a medida
     * para ser editado e enviar a mesma para o cadMedida.jsp
     *
     * @param id
     * @param modelMap
     * @return
     */
    @RequestMapping(value = "/editarMedida", method = RequestMethod.GET, params = "id")
    public String editarMedida(@RequestParam("id") int id, ModelMap modelMap) {

        modelMap.addAttribute("medida", medidaDao.findById(id));

        return "/cadMedida";

    }
    
    /**
     * Responsavel por remover do banco de dados a medida informada pelo id
     * enviado pela url
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/removerMedida", method = RequestMethod.GET, params = "id")

    public String delete(@RequestParam("id") int id) {

        medidaDao.remove(medidaDao.findById(id));

        return "redirect:/listMedida";

    }

}
