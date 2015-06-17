/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.inb.dao;

import br.com.inb.entity.Pacote;
import org.springframework.stereotype.Repository;

/**
 *
 * @author INB-07
 */
@Repository("pacoteDao")
public class PacoteDAO extends GenericDao<Pacote> {

    public PacoteDAO() {
        super(Pacote.class);
    }

}
