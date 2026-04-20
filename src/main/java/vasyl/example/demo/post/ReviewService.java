package vasyl.example.demo.post;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import vasyl.example.demo.Repositories.ReviewRepository;
import vasyl.example.demo.data.Review;
import vasyl.example.demo.data.UserCars;
import vasyl.example.demo.security.AuthenticationInfoFacade;
import vasyl.example.demo.user.UserCarsRepository;

@Service
public class ReviewService {
    private final ReviewRepository reviewRepository;
    private final UserCarsRepository userCarsRepository;
    private final AuthenticationInfoFacade authenticationInfoFacade;

    public ReviewService(ReviewRepository reviewRepository, AuthenticationInfoFacade authenticationInfoFacade,
                         UserCarsRepository userCarsRepository) {
        this.reviewRepository = reviewRepository;
        this.authenticationInfoFacade = authenticationInfoFacade;
        this.userCarsRepository = userCarsRepository;
    }

    public Review createNewReview(ReviewRequest reviewRequest){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String username = authentication.getName();
        UserCars userCars = userCarsRepository.findByUserName(username).orElse(null);
        var review = new Review();
        review.setComment(reviewRequest.comment());
        review.setRating(reviewRequest.rating());
        review.setUser(userCars);
        return reviewRepository.save(review);
    }

    public Review editReview(EditReviewRequest editReviewRequest){
        var oldReview = reviewRepository.findById(editReviewRequest.id());
        var review = oldReview.get();
        review.setComment(editReviewRequest.comment());
        review.setRating(editReviewRequest.rating());
        return reviewRepository.save(review);
    }

    public void deleteReview(DeleteReviewRequest deleteReviewRequest){
        reviewRepository.deleteById(deleteReviewRequest.id());
    }
}
