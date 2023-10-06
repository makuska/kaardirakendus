package tlu.kaardirakendus.akustika.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tlu.kaardirakendus.akustika.model.StageModel;

import java.util.Optional;

@Repository
public interface StageRepository extends JpaRepository<StageModel, Integer> {
    Optional<StageModel> findById(Integer id);
}
