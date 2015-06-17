/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.inb.dao;

import br.com.inb.entity.Hora;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Thrax
 */
@Repository("horaDao")
public class HoraDAO extends GenericDao<Hora> {

    public HoraDAO() {
    super(Hora.class);
    }
    
    @SuppressWarnings("unchecked")
    public List<Integer> findHoraById(int id){
    List<Integer> listHour = new ArrayList();
        
        String hour;
        hour = entityManager.createQuery("SELECT h.hora FROM Hora h WHERE h.horaId='"+ id + "'").getResultList().get(0).toString();
        String[] h = hour.split(":");
        listHour.add(Integer.parseInt(h[0]));

        hour = entityManager.createQuery("SELECT h.hora FROM Hora h WHERE h.horaId='"+ id + "'").getResultList().get(0).toString();
        h = hour.split(":");
        listHour.add(Integer.parseInt(h[0]));
        
        return listHour;
    
    
    }
    
    
    
}
