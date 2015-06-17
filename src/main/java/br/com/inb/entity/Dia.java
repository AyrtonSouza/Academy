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
 * @author Thrax
 */
@Entity
@Table(name = "dia")
public class Dia implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "dia_id")
    private Integer diaId;
    
    @Basic(optional = false)
    @Column(name = "dia_nome")
    private String diaNome;

    public Dia() {
    }

    public Dia(Integer diaId) {
        this.diaId = diaId;
    }

    public Dia(Integer diaId, String diaNome) {
        this.diaId = diaId;
        this.diaNome = diaNome;
    }

    public Integer getDiaId() {
        return diaId;
    }

    public void setDiaId(Integer diaId) {
        this.diaId = diaId;
    }

    public String getDiaNome() {
        return diaNome;
    }

    public void setDiaNome(String diaNome) {
        this.diaNome = diaNome;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (diaId != null ? diaId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Dia)) {
            return false;
        }
        Dia other = (Dia) object;
        if ((this.diaId == null && other.diaId != null) || (this.diaId != null && !this.diaId.equals(other.diaId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.inb.entity.Dia[ diaId=" + diaId + " ]";
    }
    
}
