package tlu.kaardirakendus.akustika.mapper;

import org.hibernate.Hibernate;
import tlu.kaardirakendus.akustika.dto.StageDataDto;
import tlu.kaardirakendus.akustika.model.StageDataModel;

import java.util.HashSet;
import java.util.Set;

public class StageDataMapper {

    public static StageDataDto mapToDto(StageDataModel stageDataModel) {
        Hibernate.initialize(stageDataModel.getStageDataTypeModel());
        Hibernate.initialize(stageDataModel.getMeasurementResultModels());
        return StageDataDto.builder()
                .id(stageDataModel.getId())
                .type(stageDataModel.getStageDataTypeModel().getType())
                .value(stageDataModel.getValue() != null ? stageDataModel.getValue() : stageDataModel.getMeasurementResultModels()) // measurement results value is always null
                .build();
    }

    public static HashSet<StageDataDto> mapToDtoList(Set<StageDataModel> stageDataModelSet) {
        var list = new HashSet<StageDataDto>();

        for (StageDataModel stageDataModel : stageDataModelSet) {
            list.add(mapToDto(stageDataModel));
        }

        return list;
    }

}
