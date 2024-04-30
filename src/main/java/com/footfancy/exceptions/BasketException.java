package com.footfancy.exceptions;

public class BasketException extends Exception {

	private static final long serialVersionUID = 1L;

	public BasketException(String message) {
		super("[Basket] " + message);
	}

}
