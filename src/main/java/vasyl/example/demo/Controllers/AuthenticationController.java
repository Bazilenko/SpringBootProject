package vasyl.example.demo.Controllers;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import vasyl.example.demo.data.UserCars;
import vasyl.example.demo.user.UserCarsRepository;

@Controller
public class AuthenticationController {
    private final UserCarsRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    public AuthenticationController(UserCarsRepository userRepository, PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
    }



}
