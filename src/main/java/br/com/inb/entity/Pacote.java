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
@Table(name = "pacote")
public class Pacote implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "pac_id")
    private Integer pacId;
    @Basic(optional = false)
    @Column(name = "pac_nome")
    private String pacNome;
    @Basic(optional = false)
    @Column(name = "pac_num_usuario")
    private int pacNumUsuario;
    @Basic(optional = false)
    @Column(name = "pac_valor")
    private float pacValor;

    public Pacote() {
    }

    public Pacote(Integer pacId) {
        this.pacId = pacId;
    }

    public Pacote(Integer pacId, String pacNome, int pacNumUsuario, float pacValor) {
        this.pacId = pacId;
        this.pacNome = pacNome;
        this.pacNumUsuario = pacNumUsuario;
        this.pacValor = pacValor;
    }

    public Integer getPacId() {
        return pacId;
    }

    public void setPacId(Integer pacId) {
        this.pacId = pacId;
    }

    public String getPacNome() {
        return pacNome;
    }

    public void setPacNome(String pacNome) {
        this.pacNome = pacNome;
    }

    public int getPacNumUsuario() {
        return pacNumUsuario;
    }

    public void setPacNumUsuario(int pacNumUsuario) {
        this.pacNumUsuario = pacNumUsuario;
    }

    public float getPacValor() {
        return pacValor;
    }

    public void setPacValor(float pacValor) {
        this.pacValor = pacValor;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (pacId != null ? pacId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Pacote)) {
            return false;
        }
        Pacote other = (Pacote) object;
        if ((this.pacId == null && other.pacId != null) || (this.pacId != null && !this.pacId.equals(other.pacId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.inb.entity.Pacote[ pacId=" + pacId + " ]";
    }
    
}
