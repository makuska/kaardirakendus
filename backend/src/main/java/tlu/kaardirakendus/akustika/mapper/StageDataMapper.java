package tlu.kaardirakendus.akustika.mapper;

import org.hibernate.Hibernate;
import tlu.kaardirakendus.akustika.dto.StageDataDto;
import tlu.kaardirakendus.akustika.model.StageDataModel;

import java.util.HashSet;
import java.util.Set;

public class StageDataMapper {

    public static StageDataDto mapToDto(StageDataModel stageDataModel) {
        Hibernate.initialize(stageDataModel.getStageDataTypeModel());
        return StageDataDto.builder()
                .id(stageDataModel.getId())
                .type(stageDataModel.getStageDataTypeModel().getType())
                .value(stageDataModel.getValue())
                .description(stageDataModel.getDescription())
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
