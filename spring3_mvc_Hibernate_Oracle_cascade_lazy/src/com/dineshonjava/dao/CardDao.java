package com.dineshonjava.dao;

import java.util.List;

import com.dineshonjava.model.Card;

/**
 * @author Dinesh Rajput
 *
 */
public interface CardDao {
	
	public void addCard(Card card);

	public List<Card> listCard();
	
	public Card getCard(int id);
	
	public void deleteCard(Card card);
}
