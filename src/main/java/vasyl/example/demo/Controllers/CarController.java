package vasyl.example.demo.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import vasyl.example.demo.Models.Car;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class CarController {

    @GetMapping(path = "/")
    public String mainPage(){
        return "page/home";
    }

    @GetMapping(path = "/cars")
    public String cars(Model model) {
        var cars = List.of(
                new Car("Toyota", "Camry", 25000),
                new Car("Tesla", "Model 3", 40000)
        );
        model.addAttribute("cars", cars);
        return "page/cars";
    }
}
