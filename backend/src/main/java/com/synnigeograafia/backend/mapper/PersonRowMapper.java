package com.synnigeograafia.backend.mapper;

import com.synnigeograafia.backend.domain.Person;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.UUID;

@Component
public class PersonRowMapper implements RowMapper<Person> {
    public Person mapRow(ResultSet rs, int rowNum) throws SQLException {
        UUID id = UUID.fromString(rs.getString("id"));
        String eesnimi = rs.getString("eesnimi");
        String perekonnanimi = rs.getString("perekonnanimi");
        String varjunimi = rs.getString("varjunimi");
        String synniaeg = rs.getString("synniaeg");
        String kasvukoht = rs.getString("kasvukoht");
        String surmaaeg = rs.getString("surmaaeg");
        String valdkond = rs.getString("valdkond");
        String tunnus = rs.getString("tunnus");
        String x_koordinaat = rs.getString("x_koordinaat");
        String y_koordinaat = rs.getString("y_koordinaat");

        return new Person(id, eesnimi, perekonnanimi, varjunimi, synniaeg, kasvukoht, surmaaeg, valdkond, tunnus, x_koordinaat, y_koordinaat);
    }
}