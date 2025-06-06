package vasyl.example.demo.user;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import vasyl.example.demo.data.UserCars;

import java.util.Optional;

@Repository
public interface UserCarsRepository extends CrudRepository<UserCars, Long> {
    Optional<UserCars> findByUserName(String userName);
    Optional<UserCars> findUserCarsById(int id);
}
