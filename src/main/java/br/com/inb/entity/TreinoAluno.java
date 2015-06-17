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
import javax.persistence.Table;

/**
 *
 * @author INB-07
 */
@Entity
@Table(name = "treino_aluno")
public class TreinoAluno implements Serializable {
    private static final long serialVersionUID = 1L;
    
    
    @Basic(optional = false)
    @Column(name = "ta_id")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer taId;
    
    @Basic(optional = false)
    @Column(name = "fk_tre_id")
    private Integer fkTreId;
    
    @Basic(optional = false)
    @Column(name = "fk_usu_id")
    private Integer fkUsuId;
    
    @Basic(optional = false)
    @Column(name = "fk_peso_id")
    private Integer fkPesoId;

    public TreinoAluno() {
    }

    public TreinoAluno(int taId, int fkTreId, int fkUsuId, int fkPesoId) {
        this.taId = taId;
        this.fkTreId = fkTreId;
        this.fkUsuId = fkUsuId;
        this.fkPesoId = fkPesoId;
    }

    public int getTaId() {
        return taId;
    }

    public void setTaId(int taId) {
        this.taId = taId;
    }

    public int getFkTreId() {
        return fkTreId;
    }

    public void setFkTreId(int fkTreId) {
        this.fkTreId = fkTreId;
    }

    public int getFkUsuId() {
        return fkUsuId;
    }

    public void setFkUsuId(int fkUsuId) {
        this.fkUsuId = fkUsuId;
    }

    public int getFkPesoId() {
        return fkPesoId;
    }

    public void setFkPesoId(int fkPesoId) {
        this.fkPesoId = fkPesoId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += taId;
        hash += fkTreId;
        hash += fkUsuId;
        hash += fkPesoId;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TreinoAluno)) {
            return false;
        }
        TreinoAluno other = (TreinoAluno) object;
        if (this.taId != other.taId) {
            return false;
        }
        if (this.fkTreId != other.fkTreId) {
            return false;
        }
        if (this.fkUsuId != other.fkUsuId) {
            return false;
        }
        if (this.fkPesoId != other.fkPesoId) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.inb.entity.TreinoAluno[ taId=" + taId + ", fkTreId=" + fkTreId + ", fkUsuId=" + fkUsuId + ", fkPesoId=" + fkPesoId + " ]";
    }
    
}
