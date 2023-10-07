package tlu.kaardirakendus.akustika.dto;

import com.sun.source.tree.CaseTree;
import lombok.Builder;
import lombok.Data;
import tlu.kaardirakendus.akustika.model.StageDataModel;

import java.util.Set;

@Data
@Builder
public class StageDto {

    private Integer id;

    private String name;

    private String county;

    private String address;

    private Double longitude;

    private Double latitude;

    private Set<StageDataModel> stageData;
}
