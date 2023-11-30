package tlu.kaardirakendus.akustika.dto;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class StageImageInfoDto {

    private Integer imageId;

    private String imageName;

    private String imageUri;

    private String imagePath;

}
