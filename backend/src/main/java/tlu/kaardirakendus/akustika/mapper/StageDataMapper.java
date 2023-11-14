package tlu.kaardirakendus.akustika.mapper;

import org.hibernate.Hibernate;
import tlu.kaardirakendus.akustika.dto.MeasurementResultDto;
import tlu.kaardirakendus.akustika.dto.StageDataDto;
import tlu.kaardirakendus.akustika.model.MeasurementResultModel;
import tlu.kaardirakendus.akustika.model.StageDataModel;

import java.util.HashSet;
import java.util.Set;

public class StageDataMapper {

    public static StageDataDto mapToDto(StageDataModel stageDataModel) {
        Hibernate.initialize(stageDataModel.getStageDataTypeModel());
        Hibernate.initialize(stageDataModel.getMeasurementResultModel());
        return StageDataDto.builder()
                .id(stageDataModel.getId())
                .type(stageDataModel.getStageDataTypeModel().getType())
                .value(stageDataModel.getValue() != null
                        ? stageDataModel.getValue()
                        : mapMeasurementToDto(stageDataModel.getMeasurementResultModel())) // measurement results value is always null
                .build();
    }

    public static HashSet<StageDataDto> mapToDtoList(Set<StageDataModel> stageDataModelSet) {
        var list = new HashSet<StageDataDto>();

        for (StageDataModel stageDataModel : stageDataModelSet) {
            list.add(mapToDto(stageDataModel));
        }

        return list;
    }

    public static HashSet<MeasurementResultDto> mapMeasurementToDto(Set<MeasurementResultModel> measurementResultModelSet) {
        var list = new HashSet<MeasurementResultDto>();

        for (MeasurementResultModel measurementResultModel : measurementResultModelSet) {
            list.add(MeasurementResultDto.builder()
                    .id(measurementResultModel.getId())
                    .type(measurementResultModel.getMeasurementResultType().getType())
                    .unit(measurementResultModel.getMeasurementUnit().getUnit())
                    .value(measurementResultModel.getValue())
                    .description(measurementResultModel.getDescription())
                    .build());
        }

        return list;
    }

}
