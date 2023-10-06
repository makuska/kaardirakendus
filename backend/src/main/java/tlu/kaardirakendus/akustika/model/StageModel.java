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
@SQLDelete(sql = "UPDATE stage SET deleted = true WHERE id = ? AND deleted = false")
@Where(clause = "deleted = false")
@Table(name = "stage", schema = "akustika")
public class StageModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(columnDefinition = "TEXT", name = "name")
    private String name;

    @Column(name = "county")
    private String county;

    @Column(columnDefinition = "TEXT", name = "address")
    private String address;

    @Column(name = "longitude")
    private Double longitude;

    @Column(name = "latitude")
    private Double latitude;

    @Column(name = "deleted", nullable = false)
    private Boolean deleted;

    @CreationTimestamp
    @Column(name = "created", updatable = false)
    private Instant created;

    @UpdateTimestamp
    @Column(name = "edited")
    private Instant edited;

}
