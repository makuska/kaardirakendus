package com.synnigeograafia.backend.controller;

import com.synnigeograafia.backend.DTO.PersonDTO;

import com.synnigeograafia.backend.service.PersonService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/api/v1")
public class PersonController {

    private final Logger logger = LoggerFactory.getLogger(PersonController.class);
    private final PersonService personService;

    // The @Qualifier("jdbc") annotation is used to specify which implementation of the PersonDao interface should be used for injection.
    public PersonController(PersonService personService) {
        this.personService = personService;
    }

    @GetMapping("/AllPersons")
    public ResponseEntity<List<PersonDTO>> getAllPersons3(){
        return ResponseEntity.ok(this.personService.getAllPersons());
    }

    @GetMapping("/searchById")
    public ResponseEntity<PersonDTO> JDBCPersonSearch(@RequestParam UUID personId){
        logger.info("Received request to fetch person with ID: {}", personId);
        return ResponseEntity.ok(this.personService.getPersonById(personId));
    }

    // http://localhost:8080/api/v1/searchByFirstName?name=
    @GetMapping("/searchByName")
    public ResponseEntity<List<PersonDTO>> searchPersonByNameLikeCaseInsensitive(@RequestParam String name){
        logger.info("Received request to fetch person with name: {}", name);
        return ResponseEntity.ok(this.personService.getPersonByFirstNameIgnoreCaseLike(name));
    }
    @PostMapping("/addPerson")
        public ResponseEntity<PersonDTO> addPerson(@RequestBody PersonDTO personDTO) {
            logger.info("Received request to add a person: {}", personDTO);
            logger.info(personDTO.getPerekonnanimi());


            PersonDTO addedPerson = this.personService.addPerson(personDTO);
            return new ResponseEntity<>(addedPerson, HttpStatus.CREATED);
    }

}
