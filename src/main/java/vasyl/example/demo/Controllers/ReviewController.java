package vasyl.example.demo.Controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import vasyl.example.demo.Repositories.ReviewRepository;
import vasyl.example.demo.data.Review;
import vasyl.example.demo.data.UserCars;
import vasyl.example.demo.user.UserCarsRepository;

@Controller
public class ReviewController {
    private ReviewRepository reviewRepository;
    private UserCarsRepository userCarsRepository;

    public ReviewController(ReviewRepository reviewRepository, UserCarsRepository userCarsRepository) {
        this.reviewRepository = reviewRepository;
        this.userCarsRepository = userCarsRepository;
    }
    @GetMapping("/reviews")
    public String showReviews(Model model){
        var reviews = reviewRepository.findAll();
        for(Review review : reviews)
        System.out.println(review.getUser());
        model.addAttribute( "reviews", reviews);
        return "page/reviews";
    }

    @PostMapping("reviews/add")
    public String addReview(@RequestParam int rating,
                            @RequestParam String comment){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String username = authentication.getName();
        UserCars userCars = userCarsRepository.findByUserName(username).orElse(null);
        Review review = new Review();
        review.setComment(comment);
        review.setRating(rating);
        review.setUser(userCars);
        reviewRepository.save(review);
        return "redirect:/reviews";
    }


}