package com.synnigeograafia.backend.repository;

import com.synnigeograafia.backend.mapper.PersonRowMapper;
import com.synnigeograafia.backend.DTO.MarkerDataDTO;
import com.synnigeograafia.backend.repository.DAO.MarkerDao;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("jdbc-marker")
public class MarkerJDBCDataAccessService implements MarkerDao {

    private final JdbcTemplate jdbcTemplate;
    private final PersonRowMapper personRowMapper;

    public MarkerJDBCDataAccessService(JdbcTemplate jdbcTemplate, PersonRowMapper personRowMapper) {
        this.jdbcTemplate = jdbcTemplate;
        this.personRowMapper = personRowMapper;
    }

    @Override
    public List<MarkerDataDTO> selectAllMarkers() {
//        var sql = """
//                SELECT *
//                FROM synnigeograafia.avalikud_koos_koordinaatidega
//                """;
//        return jdbcTemplate.query(sql, personRowMapper);
        return null;
    }
}
