package com.synnigeograafia.backend.controller;

import com.synnigeograafia.backend.DTO.MarkerDataDTO;
import com.synnigeograafia.backend.service.MarkerService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/api/v1/marker")
public class MarkerController {

    private final MarkerService markerService;

    public MarkerController(MarkerService markerService) {
        this.markerService = markerService;
    }

    @GetMapping("/getMarkers")
    public ResponseEntity<List<MarkerDataDTO>> getAllMarkers(){
        return ResponseEntity.ok(this.markerService.getAllMarkers());
    }

//    @GetMapping("/marker/{id}")
//    public ResponseEntity<MarkerDataDTO> getMarkerById(@PathVariable("id") UUID id) {
//        MarkerDataDTO marker = this.markerService.getMarkerById(id);
//        if (marker != null) {
//            return ResponseEntity.ok(marker);
//        } else {
//            return ResponseEntity.notFound().build();
//        }
//    }
}
