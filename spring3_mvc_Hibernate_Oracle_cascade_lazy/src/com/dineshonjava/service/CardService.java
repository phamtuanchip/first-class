package com.dineshonjava.service;

import java.util.List;

import com.dineshonjava.model.Card;

/**
 * @author Dinesh Rajput
 *
 */
public interface CardService {
	
	public void addCard(Card card);

	public List<Card> listCard();
	
	public Card getCard(int cid);
	
	public void deleteCard(Card card);
}
