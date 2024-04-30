package com.footfancy.exceptions;

public class CardInfoException extends Exception {

	private static final long serialVersionUID = 1L;

	public CardInfoException(String message) {
		super("[Card Info] " + message);
	}

}
