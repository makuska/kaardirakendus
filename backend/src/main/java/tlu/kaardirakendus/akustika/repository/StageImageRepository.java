package tlu.kaardirakendus.akustika.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tlu.kaardirakendus.akustika.model.StageImageModel;

import java.util.List;
import java.util.Optional;

@Repository
public interface StageImageRepository extends JpaRepository<StageImageModel, Integer> {

    Optional<List<StageImageModel>> findByStageId(Integer id);

    Optional<StageImageModel> findByStageIdAndId(Integer stageId, Integer id);


}
