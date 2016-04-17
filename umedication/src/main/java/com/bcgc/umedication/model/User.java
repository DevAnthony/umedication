package com.bcgc.umedication.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Classe qui représente le Bean User.
 * Cette classe va auto générer la table qui lui correspond en BDD (user)
 */
@Entity
@Table(name="USER")
public class User {

	/* ---------- Attributs ---------- */
    @Id
    @Column(name="id_user")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private String username;
	private String password;
	/* ---------- Constructeurs ---------- */
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getUsername() { // username
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() { // password
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	/* ---------- Debug ---------- */
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + "]";
	}
}
