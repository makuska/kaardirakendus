package com.synnigeograafia.backend.repository.DAO;

import com.synnigeograafia.backend.DTO.MarkerDataDTO;

import java.util.List;

public interface MarkerDao {
    public List<MarkerDataDTO> selectAllMarkers();
}
