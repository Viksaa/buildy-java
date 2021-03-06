package com.mk.ukim.finki.wp.buildy.model.entity.components;

import com.mk.ukim.finki.wp.buildy.model.entity.Computer;
import com.mk.ukim.finki.wp.buildy.model.entity.base.BaseEntity;
import com.mk.ukim.finki.wp.buildy.model.entity.helpers.Manufacturer;
import com.mk.ukim.finki.wp.buildy.model.entity.helpers.PsuEfficiency;
import com.mk.ukim.finki.wp.buildy.model.enumeration.ModularityType;

import javax.persistence.*;
import java.util.List;

@Entity
public class Psu extends BaseEntity {

    private String name;

    private double price;

    private String imageUrl;

    private int capacity;

    @Enumerated(EnumType.STRING)
    private ModularityType modularityType;

    @ManyToOne
    @JoinColumn(name = "psu_efficiency_fk")
    private PsuEfficiency psuEfficiency;

    @ManyToOne
    @JoinColumn(name = "manufacturer_fk")
    private Manufacturer manufacturer;

    @OneToMany(mappedBy = "psu")
    private List<Computer> computers;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public ModularityType getModularityType() {
        return modularityType;
    }

    public void setModularityType(ModularityType modularityType) {
        this.modularityType = modularityType;
    }

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public Manufacturer getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(Manufacturer manufacturer) {
        this.manufacturer = manufacturer;
    }

    public PsuEfficiency getPsuEfficiency() {
        return psuEfficiency;
    }

    public void setPsuEfficiency(PsuEfficiency psuEfficiency) {
        this.psuEfficiency = psuEfficiency;
    }

    public List<Computer> getComputers() {
        return computers;
    }

    public void setComputers(List<Computer> computers) {
        this.computers = computers;
    }
}
