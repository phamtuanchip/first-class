package com.dineshonjava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.dineshonjava.dao.AccountDao;
import com.dineshonjava.dao.CardDao;
import com.dineshonjava.model.Card;

/**
 * @author Dinesh Rajput
 *
 */
//@Service("cardService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
public class CardServiceImpl implements CardService {

//	@Autowired
	private CardDao cardDao;
	
	public void setCardDao(CardDao cardDao) {
		this.cardDao = cardDao;
	}
	private AccountDao accountDao;
	
	private AccountService accountService;
	
	public void setAccountService(AccountService accountService) {
		this.accountService = accountService;
	}

	public void setAccountDao(AccountDao accountDao) {
		this.accountDao = accountDao;
	}


	public void addCard(Card card) {
		cardDao.addCard(card);
	}
	
	public List<Card> listCard() {
		return cardDao.listCard();
	}

	public Card getCard(int cid) {
		return cardDao.getCard(cid);
	}
	
	public void deleteCard(Card card) {
		cardDao.deleteCard(card);
	}

}
