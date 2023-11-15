package tlu.kaardirakendus.akustika.dto;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class MeasurementResultDto {

    private Integer id;

    private String type;

    private String unit;

    private String value;

    private String description;
}
