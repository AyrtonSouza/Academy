/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.inb.dao;

import br.com.inb.entity.Academia;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Thrax
 */
@Repository("academiaDao")
public class AcademiaDAO extends GenericDao<Academia> {

    public AcademiaDAO() {
    super(Academia.class);
    }

    
    public boolean isActive(Academia academia) {

        return super.findById(academia.getAcadId()).isAcadStatus();
    }

}
