/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.inb.dao;

import br.com.inb.entity.Exercicio;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author INB-07
 */
@Repository("exercicioDao")
public class ExercicioDAO extends GenericDao<Exercicio>{

    public ExercicioDAO() {
        super(Exercicio.class);
    }
    
    public List<Exercicio> findByAparelho(Integer id){
    
    return entityManager.createQuery("from Exercicio e where e.fkApaId='"+id+"'",entity).getResultList();
    }
    
}
