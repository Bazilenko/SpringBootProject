package vasyl.example.demo.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import vasyl.example.demo.Models.Car;
import vasyl.example.demo.Repositories.CarRepository;
import vasyl.example.demo.Repositories.EngineRepository;
import vasyl.example.demo.data.Engine;

import java.util.List;

@Controller
public class CarController {
    private final CarRepository carRepository;
    private final EngineRepository engineRepository;

    public CarController(CarRepository carRepository, EngineRepository engineRepository) {
        this.carRepository = carRepository;
        this.engineRepository = engineRepository;
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
