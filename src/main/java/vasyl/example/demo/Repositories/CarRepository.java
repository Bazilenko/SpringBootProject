package vasyl.example.demo.Repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import vasyl.example.demo.Models.Car;

import java.util.List;

public interface CarRepository extends CrudRepository<Car, Long> {
    @Query("SELECT c FROM Car c WHERE " +
            "LOWER(c.brand.name) LIKE LOWER(CONCAT('%', :brand, '%')) AND " +
            "c.price >= :minPrice AND " +
            "c.price <= :maxPrice")
    List<Car> findByBrandAndPriceRange(
            @Param("brand") String brand,
            @Param("minPrice") double minPrice,
            @Param("maxPrice") double maxPrice);

    // Пошук тільки за діапазоном цін (якщо бренд не вказано)
    @Query("SELECT c FROM Car c WHERE " +
            "c.price >= :minPrice AND " +
            "c.price <= :maxPrice")
    List<Car> findByPriceRange(
            @Param("minPrice") double minPrice,
            @Param("maxPrice") double maxPrice);
}
