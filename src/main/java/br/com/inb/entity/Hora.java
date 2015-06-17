/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.inb.entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Thrax
 */
@Entity
@Table(name = "hora")
public class Hora implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "hora_id")
    private Integer horaId;
   
    @Basic(optional = false)
    @Column(name = "hora")
    private String hora;
    
    
    public Hora() {
    }

    public Hora(Integer horaId) {
        this.horaId = horaId;
    }

    public Hora(Integer horaId, String hora) {
        this.horaId = horaId;
        this.hora = hora;
    }

    public Integer getHoraId() {
        return horaId;
    }

    public void setHoraId(Integer horaId) {
        this.horaId = horaId;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }


    @Override
    public int hashCode() {
        int hash = 0;
        hash += (horaId != null ? horaId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Hora)) {
            return false;
        }
        Hora other = (Hora) object;
        if ((this.horaId == null && other.horaId != null) || (this.horaId != null && !this.horaId.equals(other.horaId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.inb.entity.Hora[ horaId=" + horaId + " ]";
    }
    
}
