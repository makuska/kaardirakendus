package tlu.kaardirakendus.akustika.controller;

import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import tlu.kaardirakendus.akustika.dto.StageImageInfoDto;
import tlu.kaardirakendus.akustika.service.IAkustikaService;
import tlu.kaardirakendus.akustika.util.ServerRequestUtil;

import java.util.List;

@Log4j2
@RestController
@RequestMapping("/v1")
@RequiredArgsConstructor
public class AkustikaImageController {

    private final IAkustikaService service;

    @GetMapping(value = "/stage/{id}/images/info", produces = "application/json")
    public ResponseEntity<List<StageImageInfoDto>> getStageImageInfo(@PathVariable Integer id, HttpServletRequest request) {
        String baseUrl = ServerRequestUtil.getBaseUrl(request);
        return service.getStageImageInfo(id, baseUrl);
    }

    @GetMapping(value = "/stage/{stageId}/image/{imageId}")
    public ResponseEntity<byte[]> getStageImageById(@PathVariable Integer stageId, @PathVariable Integer imageId) {
        return service.getStageImageByStageIdImageId(stageId, imageId);
    }

    @GetMapping(value = "/stage/{id}/images/zip", produces = "application/zip")
    public ResponseEntity<byte[]> getStageImagesById(@PathVariable Integer id) {
        return service.getStageImagesById(id);
    }

}
