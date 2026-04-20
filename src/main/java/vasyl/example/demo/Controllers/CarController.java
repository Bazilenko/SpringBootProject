package vasyl.example.demo.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import vasyl.example.demo.Models.Car;
import vasyl.example.demo.Repositories.CarRepository;

import java.util.List;

@Controller
public class CarController {
    private final CarRepository carRepository;

    public CarController(CarRepository carRepository) {
        this.carRepository = carRepository;
    }

    @GetMapping(path = "/")
    public String mainPage(){
        return "page/home";
    }

    @GetMapping(path = "/cars")
    public String showCars(Model model) {
        var cars = carRepository.findAll();
        model.addAttribute("cars", cars);
        return "page/cars";
    }

    @GetMapping(path = "/details/{id}")
    public String showDetails(@PathVariable Long id, Model model){
        Car car = carRepository.findById(id).orElse(null);
        if(car == null)
            return "redirect:/cars";
        model.addAttribute("car", car);
        return "page/details";
    }

}
