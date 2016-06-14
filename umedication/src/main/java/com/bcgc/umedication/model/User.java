package com.bcgc.umedication.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
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
	
	private boolean enabled;

    @ManyToOne
    @JoinColumn(name ="id_role")
	private Role role;

    
    @ManyToMany
    @JoinColumn(name ="id_categorie")
    private List<Category> categories;
	
	
	/* ---------- Constructeurs ---------- */
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	/* ---------- Accesseurs ---------- */
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
	
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	
	
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	/* ---------- Debug ---------- */
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + "]";
	}
}
