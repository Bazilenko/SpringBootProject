package vasyl.example.demo.Models;

import java.util.Arrays;

public class Car {
    String model;
    String brand;
    double price;

    public Car(String model, String brand, double price){
        this.model = model;
        this.brand = brand;
        this.price = price;
    }

    public double getPrice() {
        return price;
    }

    public String getBrand() {
        return brand;
    }

    public String getModel() {
        return model;
    }

    @Override
    public String toString(){
        return Arrays.toString((this.brand +
                this.model +
                this.price).split(" "));
    }
}
