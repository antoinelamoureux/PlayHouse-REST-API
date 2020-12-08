package com.antoinelamoureux.playhouse.models;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@JsonIdentityInfo(
		generator = ObjectIdGenerators.PropertyGenerator.class, 
		property = "id", scope = Note.class)
@Entity
@Table(name = "notes")
public class Note implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Basic(optional = false)
	@Column(name = "id_note")
	private Long id;
	@Enumerated(EnumType.ORDINAL)
	@Basic(optional = false)
	@NotNull
	@Size(min = 1, max = 9)
	@Column(name = "note")
	private EState note;
	@JsonBackReference
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "id")
	private List<Game> games;
	
	public Note(@NotNull @Size(min = 1, max = 9) EState note, List<Game> games) {;
		this.note = note;
		this.games = games;
	}

	public Note() {

	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public EState getNote() {
		return note;
	}
	
	public void setNote(EState note) {
		this.note = note;
	}
	
	public List<Game> getGames() {
		return games;
	}
	
	public void setGames(List<Game> games) {
		this.games = games;
	}


}