package com.synnigeograafia.backend.DTO;

import java.util.UUID;

public class MarkerDataDTO {
    private UUID id;
    private double latitude;
    private double longitude;
    private String title;
    private String body;

    public MarkerDataDTO(UUID id, double latitude, double longitude, String title, String body) {
        this.id = id;
        this.latitude = latitude;
        this.longitude = longitude;
        this.title = title;
        this.body = body;
    }

    public MarkerDataDTO(double latitude, double longitude, String title, String body) {
        this.latitude = latitude;
        this.longitude = longitude;
        this.title = title;
        this.body = body;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    @Override
    public String toString() {
        return "MarkerDataDTO{" +
               "latitude=" + latitude +
               ", longitude=" + longitude +
               ", title='" + title + '\'' +
               ", body='" + body + '\'' +
               '}';
    }


}
