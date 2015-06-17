/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.inb.dao;

import br.com.inb.entity.Peso;
import org.springframework.stereotype.Repository;

/**
 *
 * @author INB-07
 */
@Repository("pesoDao")
public class PesoDAO extends GenericDao<Peso>{

    public PesoDAO() {
    super(Peso.class);
    }
    
    
}
