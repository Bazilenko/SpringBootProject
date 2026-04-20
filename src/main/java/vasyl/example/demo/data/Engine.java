package vasyl.example.demo.data;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "engine")
@Getter
@Setter
public class Engine {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "power")
    private Double power;

    @Column(name = "fuel_type")
    private String fuelType;

}
