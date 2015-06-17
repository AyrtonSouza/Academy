/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.inb.dao;

import br.com.inb.entity.Meses;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Thrax
 */
@Repository("mesesDao")
public class MesesDAO extends GenericDao<Meses> {

    public MesesDAO() {
    super(Meses.class);
    }
    

}
