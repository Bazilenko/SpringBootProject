package vasyl.example.demo.Models;

import jakarta.persistence.*;
import lombok.*;
import vasyl.example.demo.data.Brand;
import vasyl.example.demo.data.Engine;

@Entity
@Table(name = "car")
@Getter
@Setter
@EqualsAndHashCode
public class Car {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "engine_id", nullable = false)
    private Engine engine;

    @ManyToOne
    @JoinColumn(name = "brand_id", nullable = false)
    private Brand brand;

    @Column(name = "vin", unique = true)
    private String vin;

    @Column(name = "model")
    private String model;

    @Column(name = "price")
    private Double price;

    @Column(name = "consumption")
    private Double consumption;

    @Column(name = "gear_box")
    private String gearBox;

    @Column(name = "color")
    private String color;

    @Column(name = "year")
    private Integer year;

    @Column(name = "image")
    private String image;

}
