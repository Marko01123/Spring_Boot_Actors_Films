package rs.ac.singidunum.fir.pj.films.entities;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.JoinColumn;

//Domenski objekat - tabela actor

@Entity(name = "actor")
public class Actor {
	
	@Id //primary key
	@GeneratedValue(strategy = GenerationType.IDENTITY) //Auto increment
	private int actor_id;
	
	private String name;
	private int birth_year;
	private String country;
	
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "actor_film", 
	joinColumns = @JoinColumn(name = "actor_id", referencedColumnName = "actor_id"), //polje iz trenutne tabele na polje iz vezne tabele
	inverseJoinColumns = @JoinColumn(name = "film_id", referencedColumnName = "film_id")) //polje iz druge tabele na polje iz vezne tabele
	private Set<Film> films;
	
	public Actor(int actor_id, String name, int birth_year, String country) {
		this.actor_id = actor_id;
		this.name = name;
		this.birth_year = birth_year;
		this.country = country;
	}

	public Actor() {
	
	}

	public int getActor_id() {
		return actor_id;
	}

	public void setActor_id(int actor_id) {
		this.actor_id = actor_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getBirth_year() {
		return birth_year;
	}

	public void setBirth_year(int birth_year) {
		this.birth_year = birth_year;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
}
