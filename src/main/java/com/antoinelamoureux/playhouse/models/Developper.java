package com.antoinelamoureux.playhouse.models;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;
import javax.validation.constraints.*;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIdentityReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.antoinelamoureux.playhouse.utils.EntityIdResolver;

@JsonIdentityInfo(
		  generator = ObjectIdGenerators.PropertyGenerator.class, resolver = EntityIdResolver.class,
		  property = "id", scope = Developper.class)
@Entity
@Table(name = "developper")
@NamedQueries({
    @NamedQuery(name = "Developper.findAll", query = "SELECT d FROM Developper d"),
    @NamedQuery(name = "Developper.findByIdDevelopper", query = "SELECT d FROM Developper d WHERE d.id = :id"),
    @NamedQuery(name = "Developper.findByName", query = "SELECT d FROM Developper d WHERE d.name = :name"),
    @NamedQuery(name = "Developper.findByCountry", query = "SELECT d FROM Developper d WHERE d.country = :country")})
public class Developper implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_developper")
    private Long id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "name")
    private String name;
    @Lob
    @Size(max = 65535)
    @Column(name = "history")
    private String history;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "country")
    private String country;
    @JsonIgnore
    @OneToMany(mappedBy = "id")
    private List<Game> gamesCollection;

    public Developper() {
    }

    public Developper(Long id, String name, String country, List<Game> gamesCollection) {
        this.id = id;
        this.name = name;
        this.country = country;
        this.gamesCollection = gamesCollection;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getHistory() {
        return history;
    }

    public void setHistory(String history) {
        this.history = history;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public List<Game> getGamesCollection() {
        return gamesCollection;
    }

    public void setGamesCollection(List<Game> gamesCollection) {
        this.gamesCollection = gamesCollection;
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
        if (!(object instanceof Developper)) {
            return false;
        }
        Developper other = (Developper) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.antoinelamoureux.springjwt.models[ idDevelopper=" + id + " ]";
    }
    
}