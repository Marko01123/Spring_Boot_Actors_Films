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
import rs.ac.singidunum.fir.pj.films.repositories.FilmsRepository;

@RestController
public class FilmsController {
	
	@Autowired
	private FilmsRepository repository;
	
	//Ispis svih zapisa iz tabele film
	@GetMapping("/films")
	public List<Film> getAllFilms(){
		return (List<Film>)repository.findAll();
	}
	
	//Ispis samo jednog zapisa iz tabele film
	@GetMapping("/films/{id}")
	public Film getFilm(@PathVariable int id) {
		return repository.findById(id).orElse(null);
	}
	
	//Ubacivanje novog filma u bazu
	@PostMapping("/films")
	public Film addFilm(@RequestBody Film film) {
		return repository.save(film);
	}
	
	//Azuriranje jednog filma iz baze
	@PutMapping("/films/{id}")
	public Film updateFilm(@PathVariable int id, @RequestBody Film film) {
		return repository.save(film);		
	}
	
	//Brisanje jednog filma iz baze
	@DeleteMapping("/films/{id}")
	public void deleteFilm(@PathVariable int id) {
		repository.deleteById(id);
	}
	
	//Ukupan broj filmova u bazi
	@GetMapping("/films/total")
	public long countFilms() {
		return repository.count();
	}
	
	//Ispis svih filmova po zanru
	@GetMapping("/films/genre/{genre}")
	public List<Film> getFilmsByGenre(@PathVariable String genre){
		return repository.findByGenre(genre);
	}
	
	//Ispis svih filmova po godini izlaska
	@GetMapping("/films/year/{year}")
	public List<Film> getFilmsByYear(@PathVariable int year){
		return repository.findByYear(year);
	}
	
	//Ispis svih filmova u kojem je glumio odredjeni glumac
	@GetMapping("/films/actor")
	public List<Film> getFilmsByActor(@RequestBody Actor actor){
		return repository.findAllFilmsByActors(actor);
	}
}
