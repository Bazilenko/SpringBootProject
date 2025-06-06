package vasyl.example.demo.Repositories;

import org.springframework.data.repository.CrudRepository;
import vasyl.example.demo.data.Review;

public interface ReviewRepository extends CrudRepository<Review, Long> {
}
