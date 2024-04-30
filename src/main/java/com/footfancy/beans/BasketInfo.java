package com.footfancy.beans;

import com.footfancy.exceptions.BasketException;

public class BasketInfo {
	private final int id;
	private static int cpt = 0;
	private final ShoesInfo shoes;
	private int quantity;

	public BasketInfo(ShoesInfo shoes, int quantity) throws BasketException {
		super();
		if (quantity < 1) {
			throw new BasketException("Quantity must be more than 0");
		}
		this.shoes = shoes;
		this.quantity = quantity;
		id = cpt++;
	}

	public ShoesInfo getShoes() {
		return shoes;
	}

	public int getQuantity() {
		return quantity;
	}

	public int getId() {
		return id;
	}
}
