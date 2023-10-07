package tlu.kaardirakendus.akustika.model;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.UpdateTimestamp;
import org.hibernate.annotations.Where;

import java.time.Instant;

@Builder
@Getter
@Setter
@Entity
@NoArgsConstructor
@AllArgsConstructor
@SQLDelete(sql = "UPDATE stage_data SET deleted = true WHERE id = ? AND deleted = false")
@Where(clause = "deleted = false")
@Table(name = "stage_data", schema = "akustika")
public class StageDataModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "stage_id")
    private StageModel stageModel;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "stage_data_type_id")
    private StageDataTypeModel stageDataTypeModel;

    @Column(columnDefinition = "TEXT", name = "value")
    private String value;

    @Column(columnDefinition = "TEXT", name = "description")
    private String description;

    @Column(name = "deleted", nullable = false)
    private Boolean deleted;

    @CreationTimestamp
    @Column(name = "created", updatable = false)
    private Instant created;

    @UpdateTimestamp
    @Column(name = "edited")
    private Instant edited;

}
