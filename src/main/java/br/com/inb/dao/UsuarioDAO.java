/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.inb.dao;

import br.com.inb.entity.Usuario;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author ale
 */
@Repository("usuarioDao")
public class UsuarioDAO extends GenericDao<Usuario> {

    public UsuarioDAO() {
        super(Usuario.class);
    }

    @SuppressWarnings("unchecked")
    public Usuario findByName(String nome) {
        return entityManager.createQuery("from Usuario u where u.usuEmail ='" + nome + "'", entity).getResultList().get(0);

    }
    
    /**
     * Procura na tabela, os resultados nos quais possui a coluna fk_permi_id e fk_acad_id corretas.
     * ex: fk_permi_id = 1, fk_acad_id = 2 se for verdadeiro ele retornas os valores onde esse dois campo possuirem o valor informado.
     * @param fk_permi
     * @param fk_acad
     * @return
     */
    @SuppressWarnings("unchecked")
    public List<Usuario> findByAcademiaAndPermission(int fk_permi, Integer fk_acad) {
        return entityManager.createQuery("from Usuario u where u.fkPermiId ='" + fk_permi + "' and u.fkAcadId='"+ fk_acad +"'", entity).getResultList();

    }

    
   

}
