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
    private boolean fromUrgo;

    @Column(name="laboratoire", columnDefinition="TEXT", nullable = true)
	private String laboratory;

    @Column(name="indications", columnDefinition="TEXT", nullable = true)
	private String indications;

    @Column(name="presentation", columnDefinition="TEXT", nullable = true)
	private String presentation;
    
    @Column(name="mode_administration", columnDefinition="TEXT", nullable = true)
	private String administration;

    @Column(name="mode_conservation", columnDefinition="TEXT", nullable = true)
	private String conservation;
    
    @Column(name="effets_indesirables", columnDefinition="TEXT", nullable = true)
	private String sideEffects;
	
	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public boolean isFromUrgo() {
		return fromUrgo;
	}


	public void setFromUrgo(boolean fromUrgo) {
		this.fromUrgo = fromUrgo;
	}


	public String getLaboratory() {
		return laboratory;
	}


	public void setLaboratory(String laboratory) {
		this.laboratory = laboratory;
	}


	public String getIndications() {
		return indications;
	}


	public void setIndications(String indications) {
		this.indications = indications;
	}


	public String getPresentation() {
		return presentation;
	}


	public void setPresentation(String presentation) {
		this.presentation = presentation;
	}


	public String getAdministration() {
		return administration;
	}


	public void setAdministration(String administration) {
		this.administration = administration;
	}


	public String getConservation() {
		return conservation;
	}


	public void setConservation(String conservation) {
		this.conservation = conservation;
	}


	public String getSideEffects() {
		return sideEffects;
	}


	public void setSideEffects(String sideEffects) {
		this.sideEffects = sideEffects;
	}


	/* ---------- Debug ---------- */
	@Override
	public String toString() {
		return "Drug [id=" + id +"]";
	}
}
