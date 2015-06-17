/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.inb.entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author INB-07
 */
@Entity
@Table(name = "peso")
public class Peso implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "peso_id")
    private Integer pesoId;
    
    @Column(name = "peso_inicial")
    private Integer pesoInicial;
    
    @Column(name = "peso_final")
    private Integer pesoFinal;

    public Peso() {
    }

    public Peso(Integer pesoId) {
        this.pesoId = pesoId;
    }

    public Integer getPesoId() {
        return pesoId;
    }

    public void setPesoId(Integer pesoId) {
        this.pesoId = pesoId;
    }

    public Integer getPesoInicial() {
        return pesoInicial;
    }

    public void setPesoInicial(Integer pesoInicial) {
        this.pesoInicial = pesoInicial;
    }

    public Integer getPesoFinal() {
        return pesoFinal;
    }

    public void setPesoFinal(Integer pesoFinal) {
        this.pesoFinal = pesoFinal;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (pesoId != null ? pesoId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Peso)) {
            return false;
        }
        Peso other = (Peso) object;
        if ((this.pesoId == null && other.pesoId != null) || (this.pesoId != null && !this.pesoId.equals(other.pesoId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.inb.entity.Peso[ pesoId=" + pesoId + " ]";
    }
    
}
