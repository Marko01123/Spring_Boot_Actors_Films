package rs.ac.singidunum.fir.pj.films.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import rs.ac.singidunum.fir.pj.films.entities.Actor;
import rs.ac.singidunum.fir.pj.films.entities.Film;

public interface FilmsRepository extends CrudRepository<Film, Integer>{
	List<Film> findByGenre(String genre);
	
	List<Film> findByYear(int year);
	
	List<Film> findAllFilmsByActors(Actor actor);
}
