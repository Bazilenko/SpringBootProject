package vasyl.example.demo.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping(path = "/")
    public String mainPage(){
        return "page/home";
    }
}
