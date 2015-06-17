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
import javax.persistence.Lob;
import javax.persistence.Table;

/**
 *
 * @author INB-07
 */
@Entity
@Table(name = "academia")
public class Academia implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Column(name = "acad_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int acadId;

    @Basic(optional = false)
    @Column(name = "fk_pac_id")
    private int fkPacId;
    
    @Basic(optional = false)
    @Column(name = "acad_nome")
    private String acadNome;
    
    @Basic(optional = false)
    @Lob
    @Column(name = "acad_cpf_cnpj")
    private String acadCpfCnpj;
    
    @Basic(optional = false)
    @Column(name = "acad_endereco")
    private String acadEndereco;
    
    @Basic(optional = false)
    @Column(name = "acad_logo")
    private String acadLogo;
    
    @Basic(optional = false)
    @Column(name = "acad_status")
    private boolean acadStatus;

    public Academia() {
    }

    public Academia(int acadId, int fkPacId, String acadNome, String acadCpfCnpj, String acadEndereco, String acadLogo, boolean acadStatus) {
        this.acadId = acadId;
        this.fkPacId = fkPacId;
        this.acadNome = acadNome;
        this.acadCpfCnpj = acadCpfCnpj;
        this.acadEndereco = acadEndereco;
        this.acadLogo = acadLogo;
        this.acadStatus = acadStatus;
    }

    public int getAcadId() {
        return acadId;
    }

    public int getFkPacId() {
        return fkPacId;
    }

    public void setAcadId(int acadId) {
        this.acadId = acadId;
    }

    public void setFkPacId(int fkPacId) {
        this.fkPacId = fkPacId;
    }

    public String getAcadNome() {
        return acadNome;
    }

    public void setAcadNome(String acadNome) {
        this.acadNome = acadNome;
    }

    public String getAcadCpfCnpj() {
        return acadCpfCnpj;
    }

    public void setAcadCpfCnpj(String acadCpfCnpj) {
        this.acadCpfCnpj = acadCpfCnpj;
    }

    public String getAcadEndereco() {
        return acadEndereco;
    }

    public void setAcadEndereco(String acadEndereco) {
        this.acadEndereco = acadEndereco;
    }

    public String getAcadLogo() {
        return acadLogo;
    }

    public void setAcadLogo(String acadLogo) {
        this.acadLogo = acadLogo;
    }

    public boolean isAcadStatus() {
        return acadStatus;
    }

    public void setAcadStatus(boolean acadStatus) {
        this.acadStatus = acadStatus;
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int hashCode() {
        return super.hashCode(); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String toString() {
        return super.toString(); //To change body of generated methods, choose Tools | Templates.
    }
}
