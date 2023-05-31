package rs.ac.singidunum.fir.pj.films.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import rs.ac.singidunum.fir.pj.films.entities.Actor;
import rs.ac.singidunum.fir.pj.films.entities.Film;

public interface ActorsRepository extends CrudRepository<Actor, Integer>{
	List<Actor> findByCountry(String country);
	
	List<Actor> findAllActorsByFilms(Film film);
}
