package com.antoinelamoureux.playhouse.models;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import javax.persistence.*;
import javax.validation.constraints.*;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@Table(name = "games")
@NamedQueries({
    @NamedQuery(name = "Game.findAll", query = "SELECT g FROM Game g"),
    @NamedQuery(name = "Game.findByIdGame", query = "SELECT g FROM Game g WHERE g.id = :id"),
    @NamedQuery(name = "Game.findByTitle", query = "SELECT g FROM Game g WHERE g.title = :title"),
    @NamedQuery(name = "Game.findByAddDate", query = "SELECT g FROM Game g WHERE g.addDate = :addDate"),
    @NamedQuery(name = "Game.findByReleaseDate", query = "SELECT g FROM Game g WHERE g.releaseDate = :releaseDate"),
    @NamedQuery(name = "Game.findByNote", query = "SELECT g FROM Game g WHERE g.note = :note"),
    @NamedQuery(name = "Game.findByCategory", query = "SELECT g FROM Game g WHERE g.category = :category"),
    @NamedQuery(name = "Game.findByState", query = "SELECT g FROM Game g WHERE g.state = :state"),
    @NamedQuery(name = "Game.findByClassification", query = "SELECT g FROM Game g WHERE g.classification = :classification")})
public class Game implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_game")
    private Long id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "title")
    private String title;
    @Lob
    @Size(max = 65535)
    @Column(name = "description")
    private String description;
    @Size(min = 1, max = 255)
    @Column(name = "cover")
    private String cover;
    @Basic(optional = false)
    @NotNull
    @Column(name = "add_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date addDate;
    @Basic(optional = false)
    @NotNull
    @Column(name = "release_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date releaseDate;
    @Column(name = "price")
    private BigDecimal price;

    @JoinColumn(name = "id_note", referencedColumnName = "id_note")
    @ManyToOne(optional = false, fetch = FetchType.EAGER)
    private Note note;

    @JoinColumn(name = "id_category", referencedColumnName = "id_category")
    @ManyToOne(optional = false, fetch = FetchType.EAGER)
    private Category category;

    @JoinColumn(name = "id_state", referencedColumnName = "id_state")
    @ManyToOne(optional = false, fetch = FetchType.EAGER)
    private State state;

    @JoinColumn(name = "id_classification", referencedColumnName = "id_classification")
    @ManyToOne(optional = false, fetch = FetchType.EAGER)
    private Classification classification;
    
    @JoinColumn(name = "id_developper", referencedColumnName = "id_developper")
    @ManyToOne(optional = false, fetch = FetchType.EAGER)
    private Developper idDevelopper;

    @JoinColumn(name = "id_editor", referencedColumnName = "id_editor")
    @ManyToOne(optional = false, fetch = FetchType.EAGER)
    private Editor idEditor;
    
    @ManyToMany(fetch = FetchType.LAZY, mappedBy = "games")
    @OrderBy("id DESC")
    private List<User> userCollection;
    
    @JoinTable(name = "games_tags", joinColumns = {
            @JoinColumn(name = "id_game", referencedColumnName = "id_game")}, inverseJoinColumns = {
            @JoinColumn(name = "id_tag", referencedColumnName = "id_tag")})
    @ManyToMany(fetch = FetchType.LAZY, cascade = {CascadeType.ALL})
    private List<Tag> tagsCollection;
    @JoinTable(name = "games_platform", joinColumns = {
        @JoinColumn(name = "id_game", referencedColumnName = "id_game")}, inverseJoinColumns = {
        @JoinColumn(name = "id_platform", referencedColumnName = "id_platform")})
    @ManyToMany(fetch = FetchType.LAZY, cascade = {CascadeType.ALL})
    private List<Platform> platformCollection;

    public Game() {
    }

    public Game(Long id) {
        this.id = id;
    }

    public Game(Long id, String title, Date addDate, Date releaseDate, Note note, Category category, 
    		State state, Classification classification, Developper idDevelopper, Editor idEditor) {
        this.id = id;
        this.title = title;
        this.addDate = addDate;
        this.releaseDate = releaseDate;
        this.note = note;
        this.category = category;
        this.state = state;
        this.classification = classification;
        this.idDevelopper = idDevelopper;
        this.idEditor = idEditor;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCover() {
		return cover;
	}

	public void setCover(String cover) {
		this.cover = cover;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getAddDate() {
        return addDate;
    }

    public void setAddDate(Date addDate) {
        this.addDate = addDate;
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    public Note getNote() {
        return note;
    }

    public void setNote(Note note) {
        this.note = note;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public State getState() {
        return state;
    }

    public void setState(State state) {
        this.state = state;
    }

    public Classification getClassification() {
        return classification;
    }

    public void setClassification(Classification classification) {
        this.classification = classification;
    }

    public List<User> getUserCollection() {
        return userCollection;
    }

    public void setUserCollection(List<User> userCollection) {
        this.userCollection = userCollection;
    }

    public List<Tag> getTagsCollection() {
        return tagsCollection;
    }

    public void setTagsCollection(List<Tag> tagsCollection) {
        this.tagsCollection = tagsCollection;
    }

    public List<Platform> getPlatformCollection() {
        return platformCollection;
    }

    public void setPlatformCollection(List<Platform> platformCollection) {
        this.platformCollection = platformCollection;
    }

    public Developper getIdDevelopper() {
        return idDevelopper;
    }

    public void setIdDevelopper(Developper idDevelopper) {
        this.idDevelopper = idDevelopper;
    }

    public Editor getIdEditor() {
        return idEditor;
    }

    public void setIdEditor(Editor idEditor) {
        this.idEditor = idEditor;
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
        if (!(object instanceof Game)) {
            return false;
        }
        Game other = (Game) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.antoinelamoureux.springjwt.models[ idGame=" + id + " ]";
    }
    
}
