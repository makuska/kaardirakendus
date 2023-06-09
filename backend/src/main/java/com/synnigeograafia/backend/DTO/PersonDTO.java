package com.synnigeograafia.backend.DTO;

import lombok.*;

import java.util.UUID;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class PersonDTO {

    private UUID id;
    private String eesnimi;
    private String perekonnanimi;
    private String varjunimi;
    private String synniaeg;
    private String kasvukoht;
    private String surmaaeg;
    private String valdkond;
    private String tunnus;
    private String x_koordinaat;
    private String y_koordinaat;

}
