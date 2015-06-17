package br.com.inb.controller;

import br.com.inb.dao.AcademiaDAO;
import br.com.inb.dao.PacoteDAO;
import br.com.inb.entity.Academia;
import br.com.inb.entity.Pacote;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class AcademiaController {

    @Autowired
    private AcademiaDAO academiaDAO;

    @Autowired
    private PacoteDAO pacoteDAO;

    @RequestMapping(value = "/cadAcademia", method = RequestMethod.GET)
    public String formulario(ModelMap modelMap) {
        modelMap.addAttribute("academia", academiaDAO.findById(0));
        modelMap.addAttribute("pacote", pacoteDAO.findAll());

        return "/cadAcademia";
    }

    @RequestMapping(value = "/listAcademia", method = RequestMethod.GET)
    public String listarAcademia(ModelMap modelMap) {
        List<Academia> academias = academiaDAO.findAll();
        @SuppressWarnings({"unchecked", "rawtypes"})
        List<Pacote> pacotes = new ArrayList();
        for (Academia aca : academias) {
            pacotes.add(pacoteDAO.findById(aca.getFkPacId()));
        }

        modelMap.addAttribute("academia", academias);
        modelMap.addAttribute("pacote", pacotes);

        return "/listAcademia";
    }

    @RequestMapping(value = "/adicionaAcademia", method = POST)
    public String cadastrarAcademia(@ModelAttribute Academia academia) {
        if (academia == null) {
            academiaDAO.persist(academia);
        } else {
            academiaDAO.merge(academia);
        }
        return "redirect:listAcademia";
    }

    @RequestMapping(value = "/editarAcademia", method = RequestMethod.GET, params = "id")
    public String editarAcademia(@RequestParam("id") int id, ModelMap modelMap) {
        modelMap.addAttribute("academia", academiaDAO.findById(id));
        modelMap.addAttribute("pacote", pacoteDAO.findAll());
        return "/cadAcademia";
    }

    @RequestMapping(value = "/alterarStatus", method = RequestMethod.GET, params = "id")
    public String alterarStatus(@RequestParam("id") int id) {
        Academia academia = academiaDAO.findById(id);
        if (academia.isAcadStatus()) {
            academia.setAcadStatus(false);
        } else {
            academia.setAcadStatus(true);
        }

        academiaDAO.merge(academia);
        return "redirect:/listAcademia";
    }
}
