# Spring_Boot_Actors_Films
A Spring Boot application that provides a RESTful web service for managing actor and film data. In this project there are packages entities,
repositories and controllers. Entities are Java classes that represent two tables (Actor, Film) in films.sql database. These entities have 
different attributes (e.g., actor's name, birth year, film's name, director, genre, etc.) and are related to each other through many-to-many 
relationship (actors can act in multiple films, and films can have multiple actors). Repositories are interfaces that provide access 
to data from the database. They provide basic CRUD (Create, Read, Update, Delete) operations, as well as other specific queries.
ActorsRepository and FilmsRepository extend CrudRepository interface and add additional methods for retrieving actors by country,
retrieving actors by film, retrieving films by genre, etc. Controllers are responsible for handling HTTP requests and generating HTTP responses.
They define different routes that users can call (in Postman, for example) to perform specific operations on the data. ActorsController and 
FilmsController have @RestController annotation, defining different methods that handle requests such as retrieving all actors, 
retrieving a single actor, adding an actor, deleting an actor, etc.

