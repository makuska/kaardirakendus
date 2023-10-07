package tlu.kaardirakendus.akustika.dto;

import lombok.Builder;
import lombok.Data;

import java.util.Set;

@Data
@Builder
public class StageDataDto {

    private Integer id;

    private String value;

    private String description;

    private StageDataTypeDto dataType;
}
