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
 * @author ale
 */
@Entity
@Table(name = "aparelho")
public class Aparelho implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "apa_id")
    private Integer apaId;

    @Basic(optional = false)
    @Column(name = "apa_nome")
    private String apaNome;

    public Aparelho() {
    }

    public Aparelho(Integer apaId) {
        this.apaId = apaId;
    }

    public Aparelho(Integer apaId, String apaNome) {
        this.apaId = apaId;
        this.apaNome = apaNome;
    }

    public Integer getApaId() {
        return apaId;
    }

    public void setApaId(Integer apaId) {
        this.apaId = apaId;
    }

    public String getApaNome() {
        return apaNome;
    }

    public void setApaNome(String apaNome) {
        this.apaNome = apaNome;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (apaId != null ? apaId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Aparelho)) {
            return false;
        }

        Aparelho other = (Aparelho) object;
        return !((this.apaId == null && other.apaId != null) || (this.apaId != null && !this.apaId.equals(other.apaId)));
    }

    @Override
    public String toString() {
        return "br.com.inb.entity.Aparelho[ apaId=" + apaId + " ]";
    }

}
