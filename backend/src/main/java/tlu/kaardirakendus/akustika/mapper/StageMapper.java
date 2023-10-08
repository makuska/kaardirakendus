package tlu.kaardirakendus.akustika.mapper;

import org.hibernate.Hibernate;
import tlu.kaardirakendus.akustika.dto.StageDto;
import tlu.kaardirakendus.akustika.model.StageModel;

import java.util.ArrayList;
import java.util.List;

public class StageMapper {
    public static StageModel mapToModel(StageDto stageDto) {
        return StageModel.builder()
                .id(stageDto.getId())
                .name(stageDto.getName())
                .county(stageDto.getCounty())
                .address(stageDto.getAddress())
                .longitude(stageDto.getLongitude())
                .latitude(stageDto.getLatitude())
                .stageDataModels(stageDto.getStageData())
                .build();
    }

    public static StageDto mapToDto(StageModel model) {
        Hibernate.initialize(model.getStageDataModels());
        return StageDto.builder()
                .id(model.getId())
                .name(model.getName())
                .county(model.getCounty())
                .address(model.getAddress())
                .longitude(model.getLongitude())
                .latitude(model.getLatitude())
                .stageData(model.getStageDataModels())
                .build();
    }

    public static List<StageDto> mapToDtos(List<StageModel> model) {
        var list = new ArrayList<StageDto>();
        for (StageModel stageModel : model) {
            list.add(mapToDto(stageModel));
        }
        return list;
    }
}
