package com.footfancy.beans;

import java.io.Serializable;

public class Shoes implements Serializable {

	private static final long serialVersionUID = 1L;
	private final String brand;
	private final String id;
	private final int sizeMin;
	private final int sizeMax;
	private final String name;
	private final double price;
	private final String imagePath;

	public Shoes(String brand, String name, String id, int sizeMin, int sizeMax, double price, String imagePath) {
		super();
		this.brand = brand;
		this.id = id;
		this.sizeMin = sizeMin;
		this.sizeMax = sizeMax;
		this.name = name;
		this.price = price;
		this.imagePath = imagePath;
	}

	public String getBrand() {
		return brand;
	}

	public String getId() {
		return id;
	}

	public int getSizeMin() {
		return sizeMin;
	}

	public int getSizeMax() {
		return sizeMax;
	}

	public String getName() {
		return name;
	}

	public double getPrice() {
		return price;
	}

	public String getImagePath() {
		return imagePath;
	}

}
