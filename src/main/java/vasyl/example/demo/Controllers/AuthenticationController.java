package vasyl.example.demo.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class AuthenticationController {
    @GetMapping(path = "/login")
    public String authentication(){
        return "login";
    }

    @GetMapping(path = "/signup")
    public String registration(){
        return "signup";
    }

}
