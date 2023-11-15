package tlu.kaardirakendus.akustika.dto;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class StageImageDto {

    private Integer id;

    private byte[] image;

}
