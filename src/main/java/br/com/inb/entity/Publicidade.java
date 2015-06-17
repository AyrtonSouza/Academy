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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.Type;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Thrax
 */
@Entity
@Table(name = "publicidade")
public class Publicidade implements Serializable {
    
    private static final long serialVersionUID = -5829322077410238754L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "pub_id")
    private int pubId;
    
    @Basic(optional = false)
    @Column(name = "fk_mes_id")
    private int fkMesId;
    
    @Basic(optional = false)
    @Column(name = "fk_acad_id")
    private int fkAcadId;
    
    @Basic(optional = false)
    @Column(name = "fk_hora_id")
    private int fkHoraId;

    @Basic(optional = false)
    @Column(name = "pub_nome")
    private String pubNome;

    @Basic(optional = false)
    @Column(name = "pub_imagem_nome")
    private String pubImagemNome;

    @Basic(optional = false)
    @Column(name = "pub_dias")
    private String pubDias;

    
    @Transient
    private MultipartFile imagem;

    public MultipartFile getImagem() {
        return imagem;
    }

    public void setImagem(MultipartFile imagem) {
        this.imagem = imagem;
    }

    public Publicidade() {
    }

    

    public Publicidade(Integer pubId, Integer fkAcadId, Integer fkHoraId, Integer fkMesId,String pubNome, String pubImagemNome, String pubDias) {
        this.pubId = pubId;
        this.fkAcadId = fkAcadId;
        this.fkHoraId = fkHoraId;
        this.fkMesId = fkMesId;
        this.pubNome = pubNome;
        this.pubImagemNome = pubImagemNome;
        this.pubDias = pubDias;
    }

    public int getPubId() {
        return pubId;
    }

    public void setPubId(int pubId) {
        this.pubId = pubId;
    }

    public int getFkMesId() {
        return fkMesId;
    }

    public void setFkMesId(int fkMesId) {
        this.fkMesId = fkMesId;
    }

    public int getFkAcadId() {
        return fkAcadId;
    }

    public void setFkAcadId(int fkAcadId) {
        this.fkAcadId = fkAcadId;
    }

    public int getFkHoraId() {
        return fkHoraId;
    }

    public void setFkHoraId(int fkHoraId) {
        this.fkHoraId = fkHoraId;
    }


    public String getPubNome() {
        return pubNome;
    }

    public void setPubNome(String pubNome) {
        this.pubNome = pubNome;
    }

    public String getPubImagemNome() {
        return pubImagemNome;
    }

    public void setPubImagemNome(String pubImagemNome) {
        this.pubImagemNome = pubImagemNome;
    }

    public String getPubDias() {
        return pubDias;
    }

    public void setPubDias(String pubDias) {
        this.pubDias = pubDias;
    }


    @Override
    public int hashCode() {
        int hash = 7;
        hash = 79 * hash + this.pubId;
        hash = 79 * hash + this.fkMesId;
        hash = 79 * hash + this.fkAcadId;
        hash = 79 * hash + this.fkHoraId;
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
        final Publicidade other = (Publicidade) obj;
        if (this.pubId != other.pubId) {
            return false;
        }
        if (this.fkMesId != other.fkMesId) {
            return false;
        }
        if (this.fkAcadId != other.fkAcadId) {
            return false;
        }
        if (this.fkHoraId != other.fkHoraId) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Publicidade{" + "pubId=" + pubId + ", fkMesId=" + fkMesId + ", fkAcadId=" + fkAcadId + ", fkHoraId=" + fkHoraId + ", pubNome=" + pubNome + ", pubImagemNome=" + pubImagemNome + ", pubDias=" + pubDias + ", imagem=" + imagem + '}';
    }
    

    

    

    

}
