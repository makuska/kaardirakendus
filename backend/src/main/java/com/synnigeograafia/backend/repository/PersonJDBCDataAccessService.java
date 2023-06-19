package com.synnigeograafia.backend.repository;

import com.synnigeograafia.backend.domain.Person;
import com.synnigeograafia.backend.repository.DAO.PersonDao;
import com.synnigeograafia.backend.mapper.PersonRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Repository("jdbc-person")
public class PersonJDBCDataAccessService implements PersonDao {

    private final JdbcTemplate jdbcTemplate;
    private final PersonRowMapper personRowMapper;
    private final String ANDMEBAASI_TABEL = "avalikud_koos_koordinaatidega";

    public PersonJDBCDataAccessService(JdbcTemplate jdbcTemplate, PersonRowMapper personRowMapper) {
        this.jdbcTemplate = jdbcTemplate;
        this.personRowMapper = personRowMapper;
    }

    @Override
    public Optional<Person> selectPersonById(UUID id) {
        var sql = """
                SELECT id, eesnimi, perekonnanimi, varjunimi, synniaeg, kasvukoht, surmaaeg, valdkond, tunnus
                FROM postgres.postgres.avalikud_koos_koordinaatidega
                WHERE id = ?
                """;
        return jdbcTemplate.query(sql, personRowMapper, id)
                .stream()
                .findFirst();
    }

    @Override
    public List<Person> selectAllPersons() {
        var sql = """
                SELECT *
                FROM postgres.postgres.avalikud_koos_koordinaatidega
                LIMIT 1000 -- To make sure that user can't request large chunks of data
                """;
        return jdbcTemplate.query(sql, personRowMapper);
    }

    @Override
    public List<Person> selectAllPersonsNoLimit() {
        var sql = """
                SELECT *
                FROM postgres.postgres.avalikud_koos_koordinaatidega
                """;
        return jdbcTemplate.query(sql, personRowMapper);
    }

    @Override
    public List<Person> selectPersonByNameLikeIgnoreCase(String name) {
        var sql = """
            SELECT *
            FROM postgres.postgres.avalikud_koos_koordinaatidega
            WHERE eesnimi ILIKE ? OR perekonnanimi ILIKE ? -- ILIKE performs a case-insensitive search
            LIMIT 10
            """;
        return jdbcTemplate.query(sql, personRowMapper, name + "%", name + "%"); // Appending the wildcard character %
    }

}
