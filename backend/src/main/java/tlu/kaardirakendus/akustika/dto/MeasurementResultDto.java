package tlu.kaardirakendus.akustika.dto;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class MeasurementResultDto {

    private Integer id;

    private MeasurementResultTypeDto type;

    private MeasurementUnitDto unit;

    private String value;

    private String description;
}
