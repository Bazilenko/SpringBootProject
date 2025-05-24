package vasyl.example.demo.Repositories;

import org.springframework.data.repository.CrudRepository;
import vasyl.example.demo.data.UserCars;

public interface UserCarsRepository extends CrudRepository<UserCars, Long> {
}
