package tlu.kaardirakendus.akustika.service;

import org.springframework.http.ResponseEntity;
import tlu.kaardirakendus.akustika.dto.StageDto;
import tlu.kaardirakendus.akustika.dto.StageImageInfoDto;

import java.util.List;

public interface IAkustikaService {

    List<StageDto> getAllStages();

    String getStageById(Integer id);

    ResponseEntity<byte[]> getStageImageByStageIdImageId(Integer stageId, Integer imageId);

    ResponseEntity<List<StageImageInfoDto>> getStageImageInfo(Integer id, String baseUrl);
}
