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
import vasyl.example.demo.post.ReviewRequest;
import vasyl.example.demo.post.ReviewService;
import vasyl.example.demo.user.UserCarsRepository;

@Controller
public class ReviewController {
    private ReviewRepository reviewRepository;
    private ReviewService reviewService;

    public ReviewController(ReviewRepository reviewRepository, ReviewService reviewService) {
        this.reviewRepository = reviewRepository;
        this.reviewService = reviewService;
    }
    @GetMapping("/reviews")
    public String showReviews(Model model){
        var reviews = reviewRepository.findAll();
        model.addAttribute( "reviews", reviews);
        return "page/reviews";
    }

    @PostMapping("post/add")
    public String addReview(@ModelAttribute ReviewRequest newReview){
        reviewService.createNewReview(newReview);
        return "redirect:/reviews";
    }


}