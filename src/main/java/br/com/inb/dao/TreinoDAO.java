/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.inb.dao;

import br.com.inb.entity.Treino;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Thrax
 */
@Repository("treinoDao")
public class TreinoDAO extends GenericDao<Treino>{

    public TreinoDAO() {
    super(Treino.class);
    }
    
    public List<Treino> findByAcademia(int id){
        
        return entityManager.createQuery("from Treino t where t.fkAcadId ='" + id + "'", entity).getResultList();
    }
    
}
