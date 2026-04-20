package vasyl.example.demo.auth;

import org.springframework.security.core.userdetails.User;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import vasyl.example.demo.data.UserCars;
import vasyl.example.demo.user.UserCarsRequest;
import vasyl.example.demo.user.UserCarsService;

@RestController
public class SignUpRestController {

    private final UserCarsService userCarsService;

    public SignUpRestController(UserCarsService userCarsService) {
        this.userCarsService = userCarsService;
    }

    @PostMapping("/signup")
    public UserCars signUpNewUser(@RequestBody UserCarsRequest user) {
        return userCarsService.signUpClient(user);
    }

    @PostMapping("/signup/admin")
    public UserCars signUpNewAdmin(@RequestBody UserCarsRequest user) {
        return userCarsService.signUpAdmin(user);
    }
}