package tlu.kaardirakendus.akustika.model;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.UpdateTimestamp;
import org.hibernate.annotations.Where;

import java.time.Instant;
import java.util.HashSet;
import java.util.Set;

@Builder
@Getter
@Setter
@Entity
@NoArgsConstructor
@AllArgsConstructor
@SQLDelete(sql = "UPDATE stage_data_type SET deleted = true WHERE id = ? AND deleted = false")
@Where(clause = "deleted = false")
@Table(name = "stage_data_type", schema = "akustika")
public class StageDataTypeModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(columnDefinition = "TEXT", name = "type")
    private String type;

    @OneToMany(mappedBy = "stageDataTypeModel")
    private Set<StageDataModel> stageDataModels = new HashSet<>();

    @Column(name = "deleted", nullable = false)
    private Boolean deleted;

    @CreationTimestamp
    @Column(name = "created", updatable = false)
    private Instant created;

    @UpdateTimestamp
    @Column(name = "edited")
    private Instant edited;

}
