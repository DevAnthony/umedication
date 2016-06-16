package com.bcgc.umedication.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Classe qui représente le Bean Drug.
 * Cette classe va auto générer la table qui lui correspond en BDD (Medicament)
 */
@Entity
@Table(name="MEDICAMENT")
public class Drug {

	/* ---------- Attributs ---------- */
    @Id
    @Column(name="id_drug")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

    @Column(name="nom")
    private String name;
    
    @Column(name="is_from_urgo")
    private boolean isFromUrgo;

	private String indications;
	private String présentation;
	
	
	/* ---------- Debug ---------- */
	@Override
	public String toString() {
		return "Drug [id=" + id +"]";
	}
}
