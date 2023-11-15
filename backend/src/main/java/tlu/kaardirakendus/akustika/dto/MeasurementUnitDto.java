package tlu.kaardirakendus.akustika.dto;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class MeasurementUnitDto {
    /*
        currently not used in GET, maybe useful for POST
     */
    private Integer id;

    private String unit;

}
