package com.synnigeograafia.backend.controller;

import com.synnigeograafia.backend.domain.Person;
import com.synnigeograafia.backend.model.PersonDTO;
import com.synnigeograafia.backend.service.PersonDao;
import com.synnigeograafia.backend.service.PersonService;

import com.synnigeograafia.backend.service.PersonServiceDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@RestController
@RequestMapping("/api/v1")
public class PersonController {

    private final Logger logger = LoggerFactory.getLogger(PersonController.class);
    private final PersonService personService;
    private final PersonDao personDao;
    private final PersonServiceDAO personServiceDAO;

    // The @Qualifier("jdbc") annotation is used to specify which implementation of the PersonDao interface should be used for injection.
    public PersonController(PersonService personService, @Qualifier("jdbc") PersonDao personDao, PersonServiceDAO personServiceDAO) {
        this.personService = personService;
        this.personDao = personDao;
        this.personServiceDAO = personServiceDAO;
    }

    @GetMapping("/allPersons")
    public ResponseEntity<List<Person>> getAllPersons(){
        return ResponseEntity.ok(this.personService.getAllPersons());
    }

    //JPA
    @GetMapping("/allPersons2")
    public ResponseEntity<List<Person>> getAllPersons2(){
        return ResponseEntity.ok(this.personDao.selectAllPersons());
    }

    //DTO
    @GetMapping("/DTOAllPersons")
    public ResponseEntity<List<PersonDTO>> getAllPersons3(){
        return ResponseEntity.ok(this.personServiceDAO.getAllPersons());
    }

//    @GetMapping("/person")
//    public ResponseEntity<Person> getPersonById(@RequestParam UUID id) {
//        logger.info("Received request to fetch person with ID: {}", id);
//        return ResponseEntity.ok(this.personService.getPersonById(id));
//    }

    @GetMapping("/jdbc-person")
    public ResponseEntity<Optional<Person>> getPersonByIdJDBC(@RequestParam UUID id) {
        logger.info("Received request to fetch person with ID: {}", id);
        return ResponseEntity.ok(this.personDao.selectPersonById(id));
    }

    // http://localhost:8080/api/v1/search?name=
    @GetMapping("/search")
    public ResponseEntity<List<Person>> searchPersonByNameLikeCaseInsensitive(@RequestParam String name){
        logger.info("Received request to fetch person with name: {}", name);
        return ResponseEntity.ok(this.personDao.selectPersonByNameLikeIgnoreCase(name));
    }

    @GetMapping("/search2")
    public ResponseEntity<List<String>> searchPersonByNameOnlyLikeCaseInsensitive(@RequestParam String name){
        logger.info("Received request to fetch person with name: {}", name);
        return ResponseEntity.ok(this.personDao.selectOnlyPersonNameLikeIgnoreCase(name));
    }

    @GetMapping("/personByJDBC")
    public ResponseEntity<PersonDTO> JDBCPersonSearch(@RequestParam UUID personId){
        logger.info("Received request to fetch person with ID: {}", personId);
        return ResponseEntity.ok(this.personServiceDAO.getPersonById(personId));
    }
}
