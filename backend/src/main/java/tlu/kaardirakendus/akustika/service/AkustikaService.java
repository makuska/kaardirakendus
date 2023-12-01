package tlu.kaardirakendus.akustika.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tlu.kaardirakendus.akustika.dto.StageDto;
import tlu.kaardirakendus.akustika.dto.StageImageInfoDto;
import tlu.kaardirakendus.akustika.mapper.StageMapper;
import tlu.kaardirakendus.akustika.repository.StageImageRepository;
import tlu.kaardirakendus.akustika.repository.StageRepository;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;

@Log4j2
@Service
@RequiredArgsConstructor
public class AkustikaService implements IAkustikaService {

    private final StageRepository stageRepository;
    private final StageImageRepository stageImageRepository;


    @Transactional(readOnly = true)
    public List<StageDto> getAllStages() {
        var stages = StageMapper.mapToDtos(stageRepository.findAll());
        if (stages.isEmpty()) {
            log.info("No stages found!");
        }
        return stages;
    }

    public String getStageById(Integer id){
        return "Siia tuleb päringu vastus :) 2";
    }

    @Transactional(readOnly = true)
    public ResponseEntity<byte[]> getStageImageByStageIdImageId(Integer stageId, Integer imageId) {
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.IMAGE_JPEG);
        headers.setContentType(MediaType.IMAGE_PNG);
        headers.setContentType(MediaType.IMAGE_GIF);

        try {
            var stageImage = stageImageRepository.findByStageIdAndId(stageId, imageId)
                    .orElseThrow(() -> new RuntimeException("Stage image not found!"));

            byte[] image = null;
            String baseDir = System.getProperty("user.dir");

            // if sys is linux the basedir is /data
           if (System.getProperty("os.name").toLowerCase().contains("linux")) {
                baseDir = "";
            }

            try {
                log.info(
                        "Reading image file from: " + baseDir + "/data/stage/images/"
                                + stageImage.getStage().getId() + "/" + stageImage.getFilename()
                );
                File img = new File(
                        baseDir + "/data/stage/images/" +
                                stageImage.getStage().getId() + "/" + stageImage.getFilename()
                );
                image = Files.readAllBytes(img.toPath());
            } catch (IOException e) {
                log.error("Error reading image file: " + stageImage.getFilename());
                log.error(e.getMessage(), e);
                return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
            }

            if (image.length == 0) {
                log.error("Image not found!");
                return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
            }

            return ResponseEntity
                    .ok()
                    .headers(headers)
                    .body(image);

        } catch (Exception e) {
            log.error(e.getMessage());
            return ResponseEntity
                    .status(HttpStatus.NOT_FOUND)
                    .body(null);
        }
    }

    @Transactional(readOnly = true)
    public ResponseEntity<List<StageImageInfoDto>> getStageImageInfo(Integer id, String baseUrl) {
        try {
            var stageImages = stageImageRepository.findByStageId(id)
                    .orElseThrow(() -> new RuntimeException("Stage image not found!"));

            List<StageImageInfoDto> images = new ArrayList<>();

            for (var stageImage : stageImages) {
                images.add(
                        StageImageInfoDto.builder()
                                .imageId(stageImage.getId())
                                .imageName(stageImage.getFilename())
                                .imageUri(
                                        baseUrl +
                                        "/v1/stage/" +
                                        stageImage.getStage().getId() +
                                        "/image/" +
                                        stageImage.getId()
                                )
                                .imagePath(
                                        "/v1/stage/" +
                                        stageImage.getStage().getId() +
                                        "/image/" +
                                        stageImage.getId()
                                )
                                .build()
                );
            }

            if (images.isEmpty()) {
                log.warn("Images not found for stage id: " + id);
                return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
            }

            return ResponseEntity
                    .ok()
                    .body(images);

        } catch (Exception e) {
            log.error(e.getMessage());
            return ResponseEntity
                    .status(HttpStatus.NOT_FOUND)
                    .body(null);
        }
    }

}
