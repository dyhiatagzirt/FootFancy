package com.footfancy.beans;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.footfancy.exceptions.BasketException;
import com.footfancy.exceptions.CardInfoException;

public class UserInfo implements Serializable {

	private static final long serialVersionUID = 1L;

	private CardInfo cardInfo;
	private List<BasketInfo> basket;

	public UserInfo() {
		super();
		this.basket = new ArrayList<>();
	}

	public CardInfo getCardInfo() {
		return cardInfo;
	}

	public void setCardInfo(String cartNumber, String ownerName, String secretNumber, String expirationDate)
			throws CardInfoException {
		this.cardInfo = new CardInfo(cartNumber, ownerName, secretNumber, expirationDate);
	}

	public List<BasketInfo> getBasket() {
		return basket;
	}

	public void addBasket(ShoesInfo shoes, int quantity) throws BasketException {
		this.basket.add(new BasketInfo(shoes, quantity));
	}

}
