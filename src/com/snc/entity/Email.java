package com.snc.entity;

import java.sql.Timestamp;

/**
 * AbstractEmail entity provides the base persistence definition of the Email
 * entity. @author MyEclipse Persistence Tools
 */

public class Email implements java.io.Serializable {

	// Fields

	private Integer id;
	private String phone;
	private Timestamp date;
	private String email;
	private String content;

	// Constructors

	/** default constructor */
	public Email() {
	}

	/** full constructor */
	public Email(String phone, Timestamp date, String email,
			String content) {
		this.phone = phone;
		this.date = date;
		this.email = email;
		this.content = content;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Timestamp getDate() {
		return this.date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}