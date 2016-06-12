package com.bcgc.umedication.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.apache.commons.lang.builder.ToStringBuilder;

/**
 * Classe qui représente le Bean Question.
 * Cette classe va auto générer la table qui lui correspond en BDD (Question)
 */
@Entity
@Table(name="QUESTION")
public class Question {
	/* ---------- Attributs ---------- */
    @Id
    @Column(name="id_question")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

    @Column(name="demandeur")
    private String asker;

    @Column(name="mail_demandeur")
    private String asker_mail;

    @Column(name="sujet")
    private String subject;
    
    @Column(name="message")
    private String message;
    
    @Column(name="statut")
    private String status;


	@OneToOne(fetch = FetchType.LAZY, mappedBy = "question", cascade = CascadeType.ALL)
    private Answer answer;

    @ManyToOne
    @JoinColumn(name ="id_categorie")
    private Category category;
	

    public Question()
    {
    	this.answer=new Answer();
    }
    
    public Question(int QUESTION_ID, String subject, String asker, String asker_mail, String message, String status, Category category )
    {
     super();
     this.id = QUESTION_ID;
     this.subject = subject;
     this.asker = asker;
     this.asker_mail = asker_mail;
     this.message = message;
     this.status = status;
     this.category = category;
    }
    
    public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAsker() {
		return asker;
	}

	public void setAsker(String asker) {
		this.asker = asker;
	}

	public String getAsker_mail() {
		return asker_mail;
	}

	public void setAsker_mail(String asker_mail) {
		this.asker_mail = asker_mail;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	
	public Answer getAnwser() {
		return answer;
	}

	public void setAnswer(Answer answer) {
		this.answer = answer;
	}

	@Override
	public String toString(){
		return ToStringBuilder.reflectionToString(this);
	}
    
}
