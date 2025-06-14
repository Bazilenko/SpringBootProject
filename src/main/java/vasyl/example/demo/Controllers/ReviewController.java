package vasyl.example.demo.Controllers;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import vasyl.example.demo.Repositories.ReviewRepository;
import vasyl.example.demo.post.DeleteReviewRequest;
import vasyl.example.demo.post.EditReviewRequest;
import vasyl.example.demo.post.ReviewRequest;
import vasyl.example.demo.post.ReviewService;

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
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String name = authentication.getName();
        model.addAttribute( "reviews", reviews);
        model.addAttribute("name", name);
        return "page/reviews";
    }

    @GetMapping("/reviews/asc")
    public String showReviewsByRatingAsc(Model model){
        var orderedReviews = reviewRepository.findAllByOrderByRatingAsc();
        model.addAttribute("reviews", orderedReviews);
        return "page/reviews";
    }

    @GetMapping("/reviews/desc")
    public String showReviewsByRatingDesc(Model model){
        var orderedReviews = reviewRepository.findAllByOrderByRatingDesc();
        model.addAttribute("reviews", orderedReviews);
        return "page/reviews";

    }

    @PostMapping("/post/add")
    public String addReview(@ModelAttribute ReviewRequest newReview){
        reviewService.createNewReview(newReview);
        return "redirect:/reviews";
    }

    @PostMapping("/post/edit/")
    public String editReview(@ModelAttribute EditReviewRequest editReviewRequest){
        reviewService.editReview(editReviewRequest);
        return "redirect:/reviews";
    }

    @PostMapping("/post/delete")
    public String deleteReview(@ModelAttribute DeleteReviewRequest deleteReviewRequest){
        reviewService.deleteReview(deleteReviewRequest);
        return "redirect:/reviews";
    }


}