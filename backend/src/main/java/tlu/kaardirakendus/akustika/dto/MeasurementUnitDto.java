package tlu.kaardirakendus.akustika.dto;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class MeasurementUnitDto {

    private Integer id;

    private String unit;

}
