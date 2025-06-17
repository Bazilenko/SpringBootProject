package vasyl.example.demo.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import vasyl.example.demo.Models.Car;
import vasyl.example.demo.Repositories.CarRepository;
import vasyl.example.demo.Repositories.EngineRepository;
import vasyl.example.demo.data.Engine;

import java.util.List;

@Controller
public class CarController {
    private final CarRepository carRepository;

    public CarController(CarRepository carRepository) {
        this.carRepository = carRepository;
    }


    @GetMapping(path = "/cars")
    public String showCars(Model model) {
        var cars = carRepository.findAll();
        model.addAttribute("cars", cars);
        return "page/cars";
    }

    @GetMapping("/cars/search")
    public String searchCars(
            @RequestParam(required = false) String brand,
            @RequestParam(defaultValue = "0") double minPrice,
            @RequestParam(defaultValue = "1000000") double maxPrice,
            Model model) {

        List<Car> cars;

        if (brand != null && !brand.isEmpty()) {
            cars = carRepository.findByBrandAndPriceRange(brand, minPrice, maxPrice);
        } else {
            cars = carRepository.findByPriceRange(minPrice, maxPrice);
        }

        model.addAttribute("cars", cars);
        return "page/cars"; // назва вашого Thymeleaf шаблону
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
