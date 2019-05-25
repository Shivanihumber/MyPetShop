package my.model;

import javax.persistence.*;

@Entity


public class Pet {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private Breed breed;
    private String color;
    private float price;

    public Pet( String name, Breed breed, String color, float price) {

        this.name = name;
        this.breed = breed;
        this.color = color;
        this.price = price;
    }

    public Pet() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Breed getBreed() {
        return breed;
    }

    public void setBreed(Breed breed) {
        this.breed = breed;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String toString() {
        return "Pet{Id=" + this.id + ", Name='" + this.name + '\'' +  ", breed=" + this.breed + ", Color=" + this.color + ", Price=" + this.price + '}';
    }
}

