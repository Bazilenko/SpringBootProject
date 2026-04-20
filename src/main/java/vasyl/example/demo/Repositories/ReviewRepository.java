package vasyl.example.demo.Repositories;

import org.springframework.data.repository.CrudRepository;
import vasyl.example.demo.data.Review;

import java.util.List;

public interface ReviewRepository extends CrudRepository<Review, Long> {
    List<Review> findAllByOrderByRatingAsc();
    List<Review> findAllByOrderByRatingDesc();
}
