package com.footfancy.beans;

import java.io.Serializable;

import com.footfancy.exceptions.CardInfoException;
import com.footfancy.tools.Tools;

public class CardInfo implements Serializable {

	private static final long serialVersionUID = 1L;

	private final String cardNumber;
	private final String ownerName;
	private final String cvc;
	private final String expirationDate;

	public CardInfo(String cardNumber, String ownerName, String cvc, String expirationDate) throws CardInfoException {
		super();
		if (!Tools.regexMatch("\\b(?:\\d{4}[ -]?){3}\\d{4}\\b", cardNumber)) {
			throw new CardInfoException("Invalid card number");
		}

		if (!Tools.regexMatch("\\b\\d{3}\\b", cvc)) {
			throw new CardInfoException("Invalid card verification coder");
		}

		if (!Tools.regexMatch("\\b(0[1-9]|1[0-2])/(\\d{2})\\b", expirationDate)) {
			throw new CardInfoException("Invalid card number");
		}

		this.cardNumber = cardNumber;
		this.ownerName = ownerName;
		this.cvc = cvc;
		this.expirationDate = expirationDate;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public String getOwnerName() {
		return ownerName;
	}

	public String getCVC() {
		return cvc;
	}

	public String getExpirationDate() {
		return expirationDate;
	}

}
