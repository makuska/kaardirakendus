package tlu.kaardirakendus.akustika.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tlu.kaardirakendus.akustika.dto.StageDto;
import tlu.kaardirakendus.akustika.mapper.StageMapper;
import tlu.kaardirakendus.akustika.repository.StageRepository;

import java.util.List;

@Log4j2
@Service
@RequiredArgsConstructor
public class AkustikaService implements IAkustikaService {
    private final StageRepository stageRepository;

    @Transactional(readOnly = true)
    public List<StageDto> getAllStages() {
        List<StageDto> stages = StageMapper.mapToDtos(stageRepository.findAll());
        if (stages.isEmpty()) {
            log.warn("No stages found!");
        }
        return stages;
    }

    public String getStageById(Integer id){
        return "Siia tuleb päringu vastus :) 2";
    }

}
