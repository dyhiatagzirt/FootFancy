package com.footfancy.beans;

import java.io.Serializable;

public class ShoesInfo implements Serializable {

	private static final long serialVersionUID = 1L;

	private final Shoes shoes;
	private final int size;

	public ShoesInfo(Shoes shoes, int size) {
		super();
		this.shoes = shoes;
		this.size = size;
	}

	public Shoes getShoes() {
		return shoes;
	}

	public int getSize() {
		return size;
	}

}
