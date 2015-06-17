/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.inb.dao;

import br.com.inb.entity.Publicidade;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Thrax
 */
@Repository("publicidadeDao")
public class PublicidadeDAO extends GenericDao<Publicidade>{

    public PublicidadeDAO() {
    super(Publicidade.class);
    }
    
    @SuppressWarnings("unchecked") 
    public List<Publicidade> findByAcademia(int id){
     
     return entityManager.createQuery("From Publicidade p where p.fkAcadId = '"+ id + "'",entity).getResultList();
     
     }
     
    @SuppressWarnings("unchecked")
     public List<String> findDiaById(int id){
      
        return entityManager.createQuery("select p.pubDias from Publicidade p where p.pubId='"+id+"'").getResultList();

     }
    
}
