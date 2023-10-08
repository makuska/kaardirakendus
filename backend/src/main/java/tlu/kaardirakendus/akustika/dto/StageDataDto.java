package tlu.kaardirakendus.akustika.dto;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class StageDataDto {

    private StageDataTypeDto dataType;

    private Integer id;

    private String value;

    private String description;

}
