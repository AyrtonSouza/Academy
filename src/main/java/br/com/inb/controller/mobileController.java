/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.inb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author INB-07
 */
@Controller
public class mobileController {

    public mobileController() {
    }
    
    @RequestMapping(value="/Mobile/Dash_aluno", method=RequestMethod.GET)
    public String form(){
    
    return "/Mobile/Dash_aluno";
    }
    
    @RequestMapping(value="/Mobile/listarTreinoAluno", method=RequestMethod.GET)
    public String form2(){
    
    return "/Mobile/listarTreinoAluno";
    }
    
     @RequestMapping(value="/Mobile/listarMedidas", method=RequestMethod.GET)
    public String form3(){
    
    return "/Mobile/listarMedidas";
    }
    
    //@RequestMapping(value="/principal", method=RequestMethod.GET)
    //public String form4(){
    
   // return "/principal";
    //}
    
}
