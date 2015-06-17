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
@Table(name = "exercicio")
public class Exercicio implements Serializable {

    private static final long serialVersionUID = 1L;
    
    
    @Basic(optional = false)
    @Column(name = "exe_nome")
    private String exeNome;
    
    @Basic(optional = false)
    @Column(name = "exe_id")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer exeId;
    
    @Basic(optional = false)
    @Column(name = "fk_apa_id")
    private int fkApaId;

    public Exercicio() {
    }

    public Exercicio(String exeNome, Integer exeId, int fkApaId) {
        this.exeNome = exeNome;
        this.exeId = exeId;
        this.fkApaId = fkApaId;
    }

    public String getExeNome() {
        return exeNome;
    }

    public void setExeNome(String exeNome) {
        this.exeNome = exeNome;
    }

    public Integer getExeId() {
        return exeId;
    }

    public void setExeId(Integer exeId) {
        this.exeId = exeId;
    }

    /**
     * @return the fkApaId
     */
    public int getFkApaId() {
        return fkApaId;
    }

    /**
     * @param fkApaId the fkApaId to set
     */
    public void setFkApaId(int fkApaId) {
        this.fkApaId = fkApaId;
    }

    
    
    

}
