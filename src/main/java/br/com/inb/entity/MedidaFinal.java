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
 * @author Thrax
 */
@Entity
@Table(name = "medida_final")
public class MedidaFinal implements Serializable {
    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "med_id")
    private int medId;
    
    @Basic(optional = false)
    @Column(name = "fk_usu_id")
    private int fkUsuId;
    
    @Basic(optional = false)
    @Column(name = "med_pant_esquerda_f")
    private float medPantEsquerdaF;
    
    @Basic(optional = false)
    @Column(name = "med_pant_direita_f")
    private float medPantDireitaF;
    
    @Basic(optional = false)
    @Column(name = "med_cox_esquerda_f")
    private float medCoxEsquerdaF;
    
    @Basic(optional = false)
    @Column(name = "med_cox_direita_f")
    private float medCoxDireitaF;
    
    @Basic(optional = false)
    @Column(name = "med_cintura_f")
    private float medCinturaF;
    
    @Basic(optional = false)
    @Column(name = "med_peito_f")
    private float medPeitoF;
    
    @Basic(optional = false)
    @Column(name = "med_biceps_esquerdo_f")
    private float medBicepsEsquerdoF;
    
    @Basic(optional = false)
    @Column(name = "med_biceps_direito_f")
    private float medBicepsDireitoF;
    
    @Basic(optional = false)
    @Column(name = "med_antebraco_esquerdo_f")
    private float medAntebracoEsquerdoF;
    
    @Basic(optional = false)
    @Column(name = "med_antebraco_direito_f")
    private float medAntebracoDireitoF;
    
    @Basic(optional = false)
    @Column(name = "med_quadril_f")
    private float medQuadrilF;

    public MedidaFinal() {
    }

    

    public MedidaFinal(Integer med_id, Integer fkUsuId,float medPantEsquerdaF, float medPantDireitaF, float medCoxEsquerdaF, float medCoxDireitaF, float medCinturaF, float medPeitoF, float medBicepsEsquerdoF, float medBicepsDireitoF, float medAntebracoEsquerdoF, float medAntebracoDireitoF, float medQuadrilF) {
        this.medId = med_id;
        this.fkUsuId = fkUsuId;
        this.medPantEsquerdaF = medPantEsquerdaF;
        this.medPantDireitaF = medPantDireitaF;
        this.medCoxEsquerdaF = medCoxEsquerdaF;
        this.medCoxDireitaF = medCoxDireitaF;
        this.medCinturaF = medCinturaF;
        this.medPeitoF = medPeitoF;
        this.medBicepsEsquerdoF = medBicepsEsquerdoF;
        this.medBicepsDireitoF = medBicepsDireitoF;
        this.medAntebracoEsquerdoF = medAntebracoEsquerdoF;
        this.medAntebracoDireitoF = medAntebracoDireitoF;
        this.medQuadrilF = medQuadrilF;
    }

   

    public float getMedPantEsquerdaF() {
        return medPantEsquerdaF;
    }

    public void setMedPantEsquerdaF(float medPantEsquerdaF) {
        this.medPantEsquerdaF = medPantEsquerdaF;
    }

    public float getMedPantDireitaF() {
        return medPantDireitaF;
    }

    public void setMedPantDireitaF(float medPantDireitaF) {
        this.medPantDireitaF = medPantDireitaF;
    }

    public float getMedCoxEsquerdaF() {
        return medCoxEsquerdaF;
    }

    public void setMedCoxEsquerdaF(float medCoxEsquerdaF) {
        this.medCoxEsquerdaF = medCoxEsquerdaF;
    }

    public float getMedCoxDireitaF() {
        return medCoxDireitaF;
    }

    public void setMedCoxDireitaF(float medCoxDireitaF) {
        this.medCoxDireitaF = medCoxDireitaF;
    }

    public float getMedCinturaF() {
        return medCinturaF;
    }

    public void setMedCinturaF(float medCinturaF) {
        this.medCinturaF = medCinturaF;
    }

    public float getMedPeitoF() {
        return medPeitoF;
    }

    public void setMedPeitoF(float medPeitoF) {
        this.medPeitoF = medPeitoF;
    }

    public float getMedBicepsEsquerdoF() {
        return medBicepsEsquerdoF;
    }

    public void setMedBicepsEsquerdoF(float medBicepsEsquerdoF) {
        this.medBicepsEsquerdoF = medBicepsEsquerdoF;
    }

    public float getMedBicepsDireitoF() {
        return medBicepsDireitoF;
    }

    public void setMedBicepsDireitoF(float medBicepsDireitoF) {
        this.medBicepsDireitoF = medBicepsDireitoF;
    }

    public float getMedAntebracoEsquerdoF() {
        return medAntebracoEsquerdoF;
    }

    public void setMedAntebracoEsquerdoF(float medAntebracoEsquerdoF) {
        this.medAntebracoEsquerdoF = medAntebracoEsquerdoF;
    }

    public float getMedAntebracoDireitoF() {
        return medAntebracoDireitoF;
    }

    public void setMedAntebracoDireitoF(float medAntebracoDireitoF) {
        this.medAntebracoDireitoF = medAntebracoDireitoF;
    }

    public float getMedQuadrilF() {
        return medQuadrilF;
    }

    public void setMedQuadrilF(float medQuadrilF) {
        this.medQuadrilF = medQuadrilF;
    }
    
    /**
     * @return the medId
     */
    public int getMedId() {
        return medId;
    }

    /**
     * @param medId the medId to set
     */
    public void setMedId(int medId) {
        this.medId = medId;
    }

    /**
     * @return the fkUsuId
     */
    public int getFkUsuId() {
        return fkUsuId;
    }

    /**
     * @param fkUsuId the fkUsuId to set
     */
    public void setFkUsuId(int fkUsuId) {
        this.fkUsuId = fkUsuId;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 53 * hash + this.medId;
        hash = 53 * hash + this.fkUsuId;
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
        final MedidaFinal other = (MedidaFinal) obj;
        if (this.medId != other.medId) {
            return false;
        }
        if (this.fkUsuId != other.fkUsuId) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "MedidaFinal{" + "medId=" + medId + ", fkUsuId=" + fkUsuId + ", medPantEsquerdaF=" + medPantEsquerdaF + ", medPantDireitaF=" + medPantDireitaF + ", medCoxEsquerdaF=" + medCoxEsquerdaF + ", medCoxDireitaF=" + medCoxDireitaF + ", medCinturaF=" + medCinturaF + ", medPeitoF=" + medPeitoF + ", medBicepsEsquerdoF=" + medBicepsEsquerdoF + ", medBicepsDireitoF=" + medBicepsDireitoF + ", medAntebracoEsquerdoF=" + medAntebracoEsquerdoF + ", medAntebracoDireitoF=" + medAntebracoDireitoF + ", medQuadrilF=" + medQuadrilF + '}';
    }
    
    
    
}
