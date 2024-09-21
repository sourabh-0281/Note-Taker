package com.entities;

import java.util.Date;
import java.util.Random;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Notemaker {
    @Id
    private int id;
	private String Title;
	@Column(length = 1500)
	private String content;
	private Date addedDate;
	
	
	public Notemaker() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Notemaker( String title, String content, Date addedDate) {
		super();
		this.id = new Random().nextInt(10000);
		Title = title;
		this.content = content;
		this.addedDate = addedDate;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getAddedDate() {
		return addedDate;
	}
	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}
	
	
}
