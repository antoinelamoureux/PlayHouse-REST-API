package com.antoinelamoureux.playhouse.models;

import java.util.List;

import javax.persistence.*;
import javax.validation.constraints.*;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@JsonIdentityInfo(
		  generator = ObjectIdGenerators.PropertyGenerator.class, 
		  property = "id", scope = Platform.class)
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
@Entity
@Table(name = "platform")
@NamedQueries({
    @NamedQuery(name = "Platform.findAll", query = "SELECT p FROM Platform p"),
    @NamedQuery(name = "Platform.findByIdPlatform", query = "SELECT p FROM Platform p WHERE p.id = :id"),
    @NamedQuery(name = "Platform.findByPlatformType", query = "SELECT p FROM Platform p WHERE p.type = :type")})
public class Platform {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_platform")
    private Long id;
    @Basic(optional = false)
    @Column(name = "name")
    private String name; 
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 8)
    @JsonManagedReference
    @JoinColumn(name = "id_platform_type", referencedColumnName = "id_platform_type")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private PlatformType type;
    @JsonBackReference
    @ManyToMany(fetch = FetchType.LAZY, mappedBy = "platformCollection")
    private List<Game> games;

    public Platform() {
    	
    }

    public Platform(Long id) {
        this.id = id;
    }

    public Platform(Long id, PlatformType type) {
        this.id = id;
        this.type = type;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public PlatformType getType() {
        return type;
    }

    public void setPlatformType(PlatformType type) {
        this.type = type;
    }

    public List<Game> getGames() {
        return games;
    }

    public void setGames(List<Game> games) {
        this.games = games;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Platform)) {
            return false;
        }
        Platform other = (Platform) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.antoinelamoureux.springjwt.models[ idPlatform=" + id+ " ]";
    }
    
}
