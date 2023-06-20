package com.synnigeograafia.backend.service;

import com.synnigeograafia.backend.domain.Person;
import com.synnigeograafia.backend.DTO.MarkerDataDTO;
import com.synnigeograafia.backend.repository.DAO.PersonDao;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class MarkerService {

    private final PersonDao personDao;

    public MarkerService(@Qualifier("jdbc-person") PersonDao personDao) {
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
                String body = constructMarkerBody(person);

                MarkerDataDTO markerData = new MarkerDataDTO(latitude, longitude, title, body);
                markerData.setId(person.getId()); // Set the unique identifier for the marker data
                markerDataList.add(markerData);
            }
        }

        return markerDataList;
    }

    private String constructMarkerBody(Person person){
        StringBuilder bodyBuilder = new StringBuilder();
        String newLine = "<br>";
        if (person.getEesnimi() != null) {
            bodyBuilder.append("Eesnimi: ").append(person.getEesnimi()).append(newLine);
        }
        bodyBuilder.append("Perekonnanimi: ").append(person.getPerekonnanimi()).append(newLine);
        if (person.getVarjunimi() != null) {
            bodyBuilder.append("Varjunimi: ").append(person.getVarjunimi()).append(newLine);
        }
        if (person.getSynniaeg() != null) {
            bodyBuilder.append("Sünniaeg: ").append(person.getSynniaeg()).append(newLine);
        }
        if (person.getKasvukoht() != null) {
            bodyBuilder.append("Kasvukoht: ").append(person.getKasvukoht()).append(newLine);
        }
        if (person.getValdkond() != null) {
            bodyBuilder.append("Valdkond: ").append(person.getValdkond()).append(newLine);
        }
        if (person.getTunnus() != null) {
            bodyBuilder.append("Tunnus: ").append(person.getTunnus()).append(newLine);
        }
        return bodyBuilder.toString();
    }

}
