package com.synnigeograafia.backend.domain;

import jakarta.annotation.Nullable;
import lombok.*;
import java.util.UUID;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Person {

    private UUID id;
    @Nullable
    private String eesnimi;
    @Nullable
    private String perekonnanimi;
    @Nullable
    private String varjunimi;
    @Nullable
    private String synniaeg;
    @Nullable
    private String kasvukoht;
    @Nullable
    private String surmaaeg;
    @Nullable
    private String valdkond;
    @Nullable
    private String tunnus;
    @Nullable
    private String x_koordinaat;
    @Nullable
    private String y_koordinaat;

}