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
@Table(name = "treino")
public class Treino implements Serializable {

    private static final long serialVersionUID = 1L;

    @Basic(optional = false)
    @Column(name = "tre_id")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int treId;
    
    @Basic(optional = false)
    @Column(name = "fk_acad_id")
    private int fkAcadId;

    @Basic(optional = false)
    @Column(name = "tre_nome")
    private String treNome;

    public Treino() {
    }

    public Treino(int treId, int fkAcadId, String treNome) {
        this.treId = treId;
        this.fkAcadId = fkAcadId;
        this.treNome = treNome;
    }

    /**
     * @return the treId
     */
    public int getTreId() {
        return treId;
    }

    /**
     * @param treId the treId to set
     */
    public void setTreId(int treId) {
        this.treId = treId;
    }

    /**
     * @return the fkAcadId
     */
    public int getFkAcadId() {
        return fkAcadId;
    }

    /**
     * @param fkAcadId the fkAcadId to set
     */
    public void setFkAcadId(int fkAcadId) {
        this.fkAcadId = fkAcadId;
    }

    /**
     * @return the treNome
     */
    public String getTreNome() {
        return treNome;
    }

    /**
     * @param treNome the treNome to set
     */
    public void setTreNome(String treNome) {
        this.treNome = treNome;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 31 * hash + this.treId;
        hash = 31 * hash + this.fkAcadId;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Treino other = (Treino) obj;
        if (this.treId != other.treId) {
            return false;
        }
        if (this.fkAcadId != other.fkAcadId) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Treino{" + "treId=" + treId + ", fkAcadId=" + fkAcadId + ", treNome=" + treNome + '}';
    }
   
    

    

    

    

    

    

}
