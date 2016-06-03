package com.bcgc.umedication.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Classe qui repr�sente le Bean Question.
 * Cette classe va auto g�n�rer la table qui lui correspond en BDD (Question)
 */
@Entity
@Table(name="QUESTION")
public class Question {
	/* ---------- Attributs ---------- */
    @Id
    @Column(name="id_medicament")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

    @Column(name="libelle")
    private String libelle;
    
    @Column(name="statut")
    private String statut;
    
}
