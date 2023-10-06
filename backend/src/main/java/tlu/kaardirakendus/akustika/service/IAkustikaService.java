package tlu.kaardirakendus.akustika.service;

import tlu.kaardirakendus.akustika.dto.StageDto;

import java.util.List;

public interface IAkustikaService {

    List<StageDto> getAllStages();

    String getStageById(Integer id);

}
