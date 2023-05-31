package rs.ac.singidunum.fir.pj.films.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import rs.ac.singidunum.fir.pj.films.entities.Actor;
import rs.ac.singidunum.fir.pj.films.entities.Film;
import rs.ac.singidunum.fir.pj.films.repositories.ActorsRepository;

@RestController
public class ActorsController {
	
	@Autowired
	private ActorsRepository repository;
	
	//Ispis svih zapisa iz tabele actor
	@GetMapping("/actors")
	public List<Actor> getAllActors(){
		return (List<Actor>)repository.findAll();
	}
	
	//Ispis samo jednog zapisa iz tabele actor
	@GetMapping("/actors/{id}")
	public Actor getActor(@PathVariable int id) {
		return repository.findById(id).orElse(null);
	}
	
	//Ubacivanje novog actora u bazu
	@PostMapping("/actors")
	public Actor addActor(@RequestBody Actor actor) {
		return repository.save(actor);
	}
	
	//Azuriranje jednog actora iz baze
	@PutMapping("/actors/{id}")
	public Actor updateActor(@PathVariable int id, @RequestBody Actor actor) {
		return repository.save(actor);
	}
	
	//Brisanje jednog actora iz baze
	@DeleteMapping("/actors/{id}")
	public void deleteActor(@PathVariable int id) {
		repository.deleteById(id);
	}
	
	//Ukupan broj glumaca u tabeli actor
	@GetMapping("/actors/total")
	public long countActors() {
		return repository.count();
	}
	
	//Ispis svih glumaca koji poticu iz odredjene zemlje (npr. USA, UK...)
	@GetMapping("/actors/country/{country}")
	public List<Actor> getActorsByCountry(@PathVariable String country){
		return repository.findByCountry(country);
	}
	
	//Ispis svih glumaca koji su glumili u odredjenom filmu
	@GetMapping("/actors/film")
	public List<Actor> getActorsByFilm(@RequestBody Film film){
		return repository.findAllActorsByFilms(film);
	}
}
