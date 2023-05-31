package rs.ac.singidunum.fir.pj.films.entities;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

//Domenski objekat - tabela film

@Entity(name = "film")
public class Film {
	
	@Id //primary key
	@GeneratedValue(strategy = GenerationType.IDENTITY) //Auto increment
	private int film_id;
	
	private String name;
	private String director;
	private int year;
	private String genre;
	
	@ManyToMany(mappedBy = "films")
	private Set<Actor> actors;
	
	public Film(int film_id, String name, String director, int year, String genre) {
		this.film_id = film_id;
		this.name = name;
		this.director = director;
		this.year = year;
		this.genre = genre;
	}

	public Film() {
	
	}

	public int getFilm_id() {
		return film_id;
	}

	public void setFilm_id(int film_id) {
		this.film_id = film_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}
}
