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

import com.antoinelamoureux.playhouse.utils.CustomListSerializer;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIdentityReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

@Table(name = "platform_type")
@Entity
public class PlatformType {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Basic(optional = false)
	@Column(name = "id_platform_type")
	private Long id;
	
	@Enumerated(EnumType.STRING)
	@Column(length = 20)
	private EPlatformType name;
	
	//@JsonSerialize(using = CustomListSerializer.class)
	@JsonIgnore
	@OneToMany(mappedBy = "id")
    private List<Platform> platforms;
	
	public PlatformType() {
	
	}

	public PlatformType(EPlatformType name, List<Platform> platforms) {
		this.name = name;
		this.platforms = platforms;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public EPlatformType getName() {
		return name;
	}

	public void setName(EPlatformType name) {
		this.name = name;
	}

	public List<Platform> getPlatforms() {
		return platforms;
	}

	public void setPlatforms(List<Platform> platforms) {
		this.platforms = platforms;
	}

	
	
	
	
}
