package vasyl.example.demo.Repositories;

import org.springframework.data.repository.CrudRepository;
import vasyl.example.demo.Models.Car;

public interface CarRepository extends CrudRepository<Car, Long> {
}
