package com.antoinelamoureux.playhouse.models;

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
		property = "id", scope = State.class)
@Entity
@Table(name = "state")
public class State {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Basic(optional = false)
	@Column(name = "id_state")
	private Long id;
	@Enumerated(EnumType.STRING)
	@Basic(optional = false)
	@NotNull
	@Size(min = 1, max = 9)
	@Column(name = "name")
	private EState name;
	@JsonBackReference
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "id")
	private List<Game> games;

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public EState getName() {
		return name;
	}
	public void setName(EState name) {
		this.name = name;
	}
	public List<Game> getGames() {
		return games;
	}
	public void setGames(List<Game> games) {
		this.games = games;
	}


}