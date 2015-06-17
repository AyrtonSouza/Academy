/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.inb.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaQuery;
import org.springframework.transaction.annotation.Transactional;

/**
 *Clase Generica para o uso de outras DAOs da aplicacao, 
 *a anotacao suppressWarnings, e pra avisar que esta clase nao e para ser checada pelo spring.
 * @author INB-07
 * @param <E>
 */

@SuppressWarnings("unchecked")
public abstract class GenericDao<E> {

    protected EntityManager entityManager;

    protected Class<E> entity;

    public GenericDao(Class<E> entity) {
        
        this.entity = entity;
    }

    public GenericDao() {
    
    }
    
    /**
     * objeto que cuidara do contexto da aplicacao
     * @param entityManager
     */
    @PersistenceContext
    public void setEntityManager(EntityManager entityManager) {
        this.entityManager = entityManager;

    }

    /**
     * metodo, que realiza a persistencia no banco de dados baseado na entitade informada
     * @param entity
     */
    @Transactional
    public void persist(E entity) {
       entityManager.persist(entity);
               
    }

    @Transactional
    public void merge(E entity) {
        entityManager.merge(entity);

    }

    /**
     * remove do banco o dados passados pelo objeto. a coluna especifica.
     * @param contato
     */
    @Transactional
    public void remove(E contato) {
        entityManager.remove(contato);

    }
    
    /**
     * Metodo Responsavel por encontrar no banco o resultado baseado no id da entidade informada.
     * o id tera de ser um inteiro, tipo este declarado como inteiro,uma vez que no banco a coluna id e do tipo inteiro
     * @param id
     * @return
     */
    public E findById(int id){
    
    return entityManager.find(entity, id);
    }
    
    /**
     * retorna todos os resultados de uma tabela, baseado na entidade informada.
     * @return
     */
    @SuppressWarnings({"unchecked","rawtypes"})
    public List<E> findAll(){
        CriteriaQuery cq  = entityManager.getCriteriaBuilder().createQuery();
        cq.select(cq.from(entity));
        
        return entityManager.createQuery(cq).getResultList();
    }
    

}
