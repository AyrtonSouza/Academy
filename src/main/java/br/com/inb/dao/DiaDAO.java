/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.inb.dao;

import br.com.inb.entity.Dia;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Thrax
 */
@Repository("diaDao")
public class DiaDAO extends GenericDao<Dia> {

    public DiaDAO() {
    super(Dia.class);
    }
    
    
    
}
