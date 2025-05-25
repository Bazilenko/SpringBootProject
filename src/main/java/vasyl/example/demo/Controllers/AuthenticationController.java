package vasyl.example.demo.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class AuthenticationController {
    @GetMapping(path = "/auth")
    public String authentication(){
        return "page/register";
    }

}
