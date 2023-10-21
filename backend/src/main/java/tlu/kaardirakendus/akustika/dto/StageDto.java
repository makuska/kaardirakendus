package tlu.kaardirakendus.akustika.dto;

import lombok.Builder;
import lombok.Data;

import java.util.HashSet;

@Data
@Builder
public class StageDto {

    private Integer id;

    private String name;

    private String county;

    private String address;

    private Double longitude;

    private Double latitude;

    private HashSet<StageDataDto> stageData;

}
