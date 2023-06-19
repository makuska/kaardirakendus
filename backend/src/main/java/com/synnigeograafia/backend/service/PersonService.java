package com.synnigeograafia.backend.service;

import com.synnigeograafia.backend.domain.Person;
import com.synnigeograafia.backend.repository.DAO.PersonDao;
import com.synnigeograafia.backend.exception.PersonNotFoundException;
import com.synnigeograafia.backend.mapper.PersonMapper;
import com.synnigeograafia.backend.DTO.PersonDTO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

@Service
public class PersonService {

    private final PersonDao personDao;
    private final PersonMapper personMapper;
    private final Logger logger = LoggerFactory.getLogger(PersonService.class);

    public PersonService(@Qualifier("jdbc-person") PersonDao personDao, PersonMapper personMapper) {
        this.personDao = personDao;
        this.personMapper = personMapper;
    }

    public List<PersonDTO> getAllPersons(){
        return this.personDao.selectAllPersons()
                .stream()
                .map(personMapper::personToPersonDto)
                .collect(Collectors.toList());
    }

    public PersonDTO getPersonById(UUID personId) {
        return this.personDao.selectPersonById(personId)
                .map(personMapper::personToPersonDto)
                .orElseThrow(() -> new PersonNotFoundException("Person with id: '" + personId + "' not found!"));
    }

    public List<PersonDTO> getPersonByFirstNameIgnoreCaseLike(String name){
        return this.personDao.selectPersonByNameLikeIgnoreCase(name)
                .stream()
                .map(personMapper::personToPersonDto)
                .collect(Collectors.toList());
    }
    public PersonDTO addPerson(PersonDTO personDTO) {
        // Convert the PersonDTO to Person entity
        Person person = this.personMapper.personDtoToPerson(personDTO);
        person.setX_koordinaat(personDTO.getX_koordinaat());
        person.setY_koordinaat(personDTO.getY_koordinaat());

        // Generate a new UUID for the person
        UUID personId = UUID.randomUUID();
        person.setId(personId);
        logger.info(String.valueOf(person));
        logger.info(String.valueOf(person.getId()));
        logger.info("x koordinaat: " + person.getX_koordinaat());
        logger.info("y koordinaat: " + person.getY_koordinaat());

        // Save the person in the database
        this.personDao.insertPerson(person);

        // Convert the saved Person entity back to PersonDTO
        return this.personMapper.personToPersonDto(person);
    }
}
