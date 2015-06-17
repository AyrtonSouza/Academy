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
@Table(name = "meses")
public class Meses implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "mes_id")
    private Integer mesId;
    
    @Basic(optional = false)
    @Column(name = "mes_nome")
    private String mesNome;
    

    public Meses() {
    }

    public Meses(Integer mesId) {
        this.mesId = mesId;
    }

    public Meses(Integer mesId, String mesNome) {
        this.mesId = mesId;
        this.mesNome = mesNome;
    }

    public Integer getMesId() {
        return mesId;
    }

    public void setMesId(Integer mesId) {
        this.mesId = mesId;
    }

    public String getMesNome() {
        return mesNome;
    }

    public void setMesNome(String mesNome) {
        this.mesNome = mesNome;
    }

    

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (mesId != null ? mesId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Meses)) {
            return false;
        }
        Meses other = (Meses) object;
        if ((this.mesId == null && other.mesId != null) || (this.mesId != null && !this.mesId.equals(other.mesId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.inb.entity.Meses[ mesId=" + mesId + " ]";
    }
    
}
