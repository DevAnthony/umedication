package com.bcgc.umedication.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

/**
 * Classe qui représente le Bean Answer.
 * Cette classe va auto générer la table qui lui correspond en BDD (Reponse)
 */
@Entity
@Table(name="REPONSE")
public class Answer {
	/* ---------- Attributs ---------- */

	@GenericGenerator(name = "generator", strategy = "foreign", 
	parameters = @Parameter(name = "property", value = "question"))
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "id_question", unique = true, nullable = false)
	private int id;


	@OneToOne(fetch = FetchType.LAZY)
	@PrimaryKeyJoinColumn
    private Question question;
    

    @ManyToOne
    @JoinColumn(name ="id_user")
    private User sponsor;

    @Column(name="answer_message")
    private String message;

    
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	public User getSponsor() {
		return sponsor;
	}

	public void setSponsor(User sponsor) {
		this.sponsor = sponsor;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	@Override
	public String toString(){
		return ToStringBuilder.reflectionToString(this);
	}
}
