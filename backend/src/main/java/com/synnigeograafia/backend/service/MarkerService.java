package com.synnigeograafia.backend.service;

import com.synnigeograafia.backend.domain.Person;
import com.synnigeograafia.backend.DTO.MarkerDataDTO;
import com.synnigeograafia.backend.exception.PersonNotFoundException;
import com.synnigeograafia.backend.repository.DAO.MarkerDao;
import com.synnigeograafia.backend.repository.DAO.PersonDao;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Service
public class MarkerService {

    private final MarkerDao markerDao;
    private final PersonDao personDao;

    public MarkerService(@Qualifier("jdbc-marker") MarkerDao markerDao, @Qualifier("jdbc-person") PersonDao personDao) {
        this.markerDao = markerDao;
        this.personDao = personDao;
    }


    public List<MarkerDataDTO> getAllMarkers() {
        List<Person> persons = personDao.selectAllPersonsNoLimit();
        List<MarkerDataDTO> markerDataList = new ArrayList<>();

        for (Person person : persons) {
            String latitudeStr = person.getX_koordinaat();
            String longitudeStr = person.getY_koordinaat();

            if (latitudeStr != null && longitudeStr != null) {
                double latitude = Double.parseDouble(latitudeStr.trim());
                double longitude = Double.parseDouble(longitudeStr.trim());
                String title = person.getEesnimi() + " " + person.getPerekonnanimi();
                String body = "Eesnimi: " + person.getEesnimi() + "<br>" +
                              "Perekonnanimi: " + person.getPerekonnanimi() + "<br>" +
                              "Varjunimi: " + person.getVarjunimi() + "<br>" +
                              "Sünniaeg: " + person.getSynniaeg() + "<br>" +
                              "Kasvukoht: " + person.getKasvukoht() + "<br>" +
                              "Valdkond: " + person.getValdkond() + "<br>" +
                              "Tunnus: " + person.getTunnus();

                MarkerDataDTO markerData = new MarkerDataDTO(latitude, longitude, title, body);
                markerData.setId(person.getId()); // Set the unique identifier for the marker data
                markerDataList.add(markerData);
            }
        }

        return markerDataList;
    }
}
