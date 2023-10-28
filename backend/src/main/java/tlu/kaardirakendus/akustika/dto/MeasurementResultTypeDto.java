package tlu.kaardirakendus.akustika.dto;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class MeasurementResultTypeDto {

    private Integer id;

    private String type;

}
