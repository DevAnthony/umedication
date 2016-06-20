package com.bcgc.umedication.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.apache.commons.lang.builder.ToStringBuilder;

@Entity
@Table(name="CATEGORIE")
public class Category {
	/* ---------- Attributs ---------- */
    @Id
    @Column(name="id_categorie")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

    @Column(name="libelle")
    private String wording;

    @Transient
    private List<String> QUESTION;
    
    public Category(){}
    
    public Category(int id, String wording){
    	super();
    	this.id=id;
    	this.wording=wording;
    }
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getWording() {
		return wording;
	}

	public void setWording(String wording) {
		this.wording = wording;
	}
	public List<String> getQUESTION() {
		return QUESTION;
	}
	public void setQUESTION(List<String> qUESTION) {
		QUESTION = qUESTION;
	}

	  @Override
	  public String toString()
	  {
	   return ToStringBuilder.reflectionToString(this);
	  }
}
