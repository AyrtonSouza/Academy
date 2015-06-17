/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.inb.entity;

import java.io.Serializable;
import java.util.Objects;
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
@Table(name = "usuario")
public class Usuario implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "usu_id")
    private Integer usuId;

    @Basic(optional = false)
    @Column(name = "usu_nome")
    private String usuNome;

    @Basic(optional = false)
    @Column(name = "usu_mail")
    private String usuEmail;

    @Basic(optional = false)
    @Column(name = "usu_endereco")
    private String usuEndereco;

    @Basic(optional = false)
    @Column(name = "usu_cpf")
    private Integer usuCpf;

    @Basic(optional = false)
    @Column(name = "usu_senha")
    private String usuSenha;

    @Basic(optional = false)
    @Column(name = "usu_status")
    private String usuStatus;

    @Basic(optional = false)
    @Column(name = "fk_acad_id")
    private Integer fkAcadId;

    @Basic(optional = false)
    @Column(name = "fk_permi_id")
    private Integer fkPermiId;

    public Usuario() {
    }

    public Usuario(Integer usuId) {
        this.usuId = usuId;
    }

    public Usuario(Integer usuId, String usuNome, String usuEmail, Integer usuCpf, String usuEndereco, String usuSenha, Integer fkPermiId, String usuStatus, Integer fkAcadId) {
        this.usuId = usuId;
        this.usuNome = usuNome;
        this.usuEmail = usuEmail;
        this.usuCpf = usuCpf;
        this.usuEndereco = usuEndereco;
        this.usuSenha = usuSenha;
        this.fkPermiId = fkPermiId;
        this.usuStatus = usuStatus;
        this.fkAcadId = fkAcadId;

    }

    public Integer getUsuId() {
        return usuId;
    }

    public void setUsuId(Integer usuId) {
        this.usuId = usuId;
    }

    public String getUsuNome() {
        return usuNome;
    }

    public void setUsuNome(String usuNome) {
        this.usuNome = usuNome;
    }

    public String getUsuEmail() {
        return usuEmail;
    }

    public void setUsuEmail(String usuEmail) {
        this.usuEmail = usuEmail;
    }

    /**
     * @return the usuCpf
     */
    public Integer getUsuCpf() {
        return usuCpf;
    }

    /**
     * @param usuCpf the usuCpf to set
     */
    public void setUsuCpf(Integer usuCpf) {
        this.usuCpf = usuCpf;
    }

    /**
     * @return the usuEndereco
     */
    public String getUsuEndereco() {
        return usuEndereco;
    }

    /**
     * @param usuEndereco the usuEndereco to set
     */
    public void setUsuEndereco(String usuEndereco) {
        this.usuEndereco = usuEndereco;
    }

    public String getUsuSenha() {
        return usuSenha;
    }

    public void setUsuSenha(String usuSenha) {
        this.usuSenha = usuSenha;
    }

    public Integer getFkPermiId() {
        return fkPermiId;
    }

    public void setFkPermiId(Integer fkPermiId) {
        this.fkPermiId = fkPermiId;
    }

    public String getUsuStatus() {
        return usuStatus;
    }

    public void setUsuStatus(String usuStatus) {
        this.usuStatus = usuStatus;
    }

    public Integer getFkAcadId() {
        return fkAcadId;
    }

    public void setFkAcadId(Integer fkAcadId) {
        this.fkAcadId = fkAcadId;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 97 * hash + Objects.hashCode(this.usuId);
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
        final Usuario other = (Usuario) obj;
        return Objects.equals(this.usuId, other.usuId);
    }

    @Override
    public String toString() {
        return "br.com.inb.entity.Usuario{" + "usuId=" + usuId + '}';
    }

}
