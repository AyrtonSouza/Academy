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
@Table(name = "medida")
public class Medida implements Serializable{
    
    private static final long serialVersionUID = 1L;
   
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "med_id")
    private Integer medId;
    
    @Basic(optional = false)
    @Column(name = "med_pant_esquerda")
    private float medPantEsquerda;
    
    @Basic(optional = false)
    @Column(name = "mad_pant_direita")
    private float medPantDireita;
    
    @Basic(optional = false)
    @Column(name = "med_cox_esquerda")
    private float medCoxEsquerda;
    
    @Basic(optional = false)
    @Column(name = "med_cox_direita")
    private float medCoxDireita;
    
    @Basic(optional = false)
    @Column(name = "med_cintura")
    private float medCintura;
    
    @Basic(optional = false)
    @Column(name = "med_peito")
    private float medPeito;
    
    @Basic(optional = false)
    @Column(name = "med_biceps_esquerdo")
    private float medBicepsEsquerdo;
    
    @Basic(optional = false)
    @Column(name = "med_biceps_direito")
    private float medBicepsDireito;
    
    @Basic(optional = false)
    @Column(name = "med_antebraco_esquerdo")
    private float medAntebracoEsquerdo;
    
    @Basic(optional = false)
    @Column(name = "med_antebraco_direito")
    private float medAntebracoDireito;
    
    @Basic(optional = false)
    @Column(name = "med_quadril")
    private float medQuadril;
    
    @Basic(optional = false)
    @Column(name = "fk_usu_id")
    private float fkUsuId;
    
    public Medida() {
		// TODO Auto-generated constructor stub
	}

    public Medida(Integer medId) {
        this.medId = medId;
    }

    public Medida(Integer medId, float medPantEsquerda, float medPantDireita, float medCoxEsquerda, float medCoxDireita, float medCintura, float medPeito, float medBicepsEsquerdo, float medBicepsDireito, float medAntebracoEsquerdo, float medAntebracoDireito, float medQuadril, float fkUsuId) {
        this.medId = medId;
        this.medPantEsquerda = medPantEsquerda;
        this.medPantDireita = medPantDireita;
        this.medCoxEsquerda = medCoxEsquerda;
        this.medCoxDireita = medCoxDireita;
        this.medCintura = medCintura;
        this.medPeito = medPeito;
        this.medBicepsEsquerdo = medBicepsEsquerdo;
        this.medBicepsDireito = medBicepsDireito;
        this.medAntebracoEsquerdo = medAntebracoEsquerdo;
        this.medAntebracoDireito = medAntebracoDireito;
        this.medQuadril = medQuadril;
        this.fkUsuId = fkUsuId;
    }

    public Integer getMedId() {
        return medId;
    }

    public void setMedId(Integer medId) {
        this.medId = medId;
    }

    public float getMedPantEsquerda() {
        return medPantEsquerda;
    }

    public void setMedPantEsquerda(float medPantEsquerda) {
        this.medPantEsquerda = medPantEsquerda;
    }

    public float getMedPantDireita() {
        return medPantDireita;
    }

    public void setMedPantDireita(float medPantDireita) {
        this.medPantDireita = medPantDireita;
    }

    public float getMedCoxEsquerda() {
        return medCoxEsquerda;
    }

    public void setMedCoxEsquerda(float medCoxEsquerda) {
        this.medCoxEsquerda = medCoxEsquerda;
    }

    public float getMedCoxDireita() {
        return medCoxDireita;
    }

    public void setMedCoxDireita(float medCoxDireita) {
        this.medCoxDireita = medCoxDireita;
    }

    public float getMedCintura() {
        return medCintura;
    }

    public void setMedCintura(float medCintura) {
        this.medCintura = medCintura;
    }

    public float getMedPeito() {
        return medPeito;
    }

    public void setMedPeito(float medPeito) {
        this.medPeito = medPeito;
    }

    public float getMedBicepsEsquerdo() {
        return medBicepsEsquerdo;
    }

    public void setMedBicepsEsquerdo(float medBicepsEsquerdo) {
        this.medBicepsEsquerdo = medBicepsEsquerdo;
    }

    public float getMedBicepsDireito() {
        return medBicepsDireito;
    }

    public void setMedBicepsDireito(float medBicepsDireito) {
        this.medBicepsDireito = medBicepsDireito;
    }

    public float getMedAntebracoEsquerdo() {
        return medAntebracoEsquerdo;
    }

    public void setMedAntebracoEsquerdo(float medAntebracoEsquerdo) {
        this.medAntebracoEsquerdo = medAntebracoEsquerdo;
    }

    public float getMedAntebracoDireito() {
        return medAntebracoDireito;
    }

    public void setMedAntebracoDireito(float medAntebracoDireito) {
        this.medAntebracoDireito = medAntebracoDireito;
    }

    public float getMedQuadril() {
        return medQuadril;
    }

    public void setMedQuadril(float medQuadril) {
        this.medQuadril = medQuadril;
    }

    public float getFkUsuId() {
        return fkUsuId;
    }

    public void setFkUsuId(float fkUsuId) {
        this.fkUsuId = fkUsuId;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 37 * hash + Objects.hashCode(this.medId);
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
        final Medida other = (Medida) obj;
        return Objects.equals(this.medId, other.medId);
    }

    @Override
    public String toString() {
        return "br.com.inb.entity.Medida{" + "medId=" + medId + ", medQuadril=" + medQuadril + '}';
    }
    
    
    
    
}
