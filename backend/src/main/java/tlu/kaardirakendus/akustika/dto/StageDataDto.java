package tlu.kaardirakendus.akustika.dto;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class StageDataDto {

    private Integer id;

    private String type;

    private Object value;

}
