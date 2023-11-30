package tlu.kaardirakendus.akustika.controller;


import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import tlu.kaardirakendus.akustika.dto.StageDto;
import tlu.kaardirakendus.akustika.service.IAkustikaService;

import java.util.List;

@Log4j2
@RestController
@RequestMapping("/v1")
@RequiredArgsConstructor
@CrossOrigin(maxAge = 3600)
public class AkustikaController {

    private final IAkustikaService service;

    @GetMapping(value = "/stage", produces = MediaType.APPLICATION_JSON_VALUE)
    public List<StageDto> getAllStages() {
        log.info("Getting all stages.");
        return service.getAllStages();
    }

    @GetMapping(value = "/stage/{id}", produces = MediaType.APPLICATION_JSON_VALUE)
    public String getStageById(@PathVariable Integer id) {
        log.info("Getting stage by id: " + id);
        return service.getStageById(id);
    }

}
