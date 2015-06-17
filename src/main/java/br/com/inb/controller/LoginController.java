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
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author INB-07
 */
@Controller
public class LoginController {

    public LoginController() {
    }
    @Autowired
    UsuarioDAO usuarioDAO;
   
    /**
     *
     * @param modelMap
     * @param session
     * @return
     */
    @RequestMapping("/principal")
   public String principal(ModelMap modelMap, HttpSession session) {
       session.setAttribute("usuarioLogado", 
       usuarioDAO.findByName(SecurityContextHolder.getContext().getAuthentication().getName())); 
       Usuario usu = (Usuario) session.getAttribute("usuarioLogado");
       
       if(usu.getFkPermiId() < 3){
       return "/principal";
       }
       if(usu.getFkPermiId() == 3){
       return "redirect:mostrarPublicidade";
       }
       else{
       return "redirect:mostrarPublicidade";
       }
       
   }
    
    /**
     *
     * @param modelMap
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET, params = "logout")
   public String sair(ModelMap modelMap ){
   String msg="Saida realizada com sucesso";
   modelMap.addAttribute("msg", msg);
   return "redirect:/login";
   }
   
    /**
     *
     * @param modelMap
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET, params = "error")
   public String loginAcesso(ModelMap modelMap){
   String msg="Erro ao realizar autenticação, Por gentileza Verifique Usuario e Senha";
   modelMap.addAttribute("msg", msg);
   return "redirect:/login";
   }
   
    /**
     *
     * @return
     */
    @RequestMapping(value="/acessoNegado", method=RequestMethod.GET)
   public String acessoNegado(){
   return "/acessoNegado";
   }
   
   }
