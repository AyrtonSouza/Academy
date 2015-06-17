/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.inb.dao;

import br.com.inb.entity.Aparelho;
import org.springframework.stereotype.Repository;

/**
 *
 * @author ale
 */
@Repository("aparelhoDao")
public class AparelhoDAO extends GenericDao<Aparelho>{


    public AparelhoDAO() {
        super(Aparelho.class);
        
    }

    
}
