package tlu.kaardirakendus.akustika.dto;

import lombok.Builder;
import lombok.Data;
import tlu.kaardirakendus.akustika.model.StageDataTypeModel;

@Data
@Builder
public class StageDataDto {

    private Integer id;

    private String type;

    private String value;

    private String description;

}
