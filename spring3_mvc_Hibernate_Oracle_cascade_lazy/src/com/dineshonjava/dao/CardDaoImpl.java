package com.dineshonjava.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dineshonjava.model.Card;

/**
 * @author Dinesh Rajput
 *
 */
//@Repository("Carddao") //khai bao la mot lop Dao
public class CardDaoImpl implements CardDao {

//	@Autowired
	private SessionFactory sessionFactory; 
	/*đặt tự động annotations trên sessionfactory.
	 * sử dụng  @Autowired trong SessionFactory để thùng chứa Spring được thêm vào trong quá trình khởi động.
	 */
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void addCard(Card card) {
		
		 org.hibernate.Transaction tx=sessionFactory.getCurrentSession().beginTransaction();
			sessionFactory.getCurrentSession().saveOrUpdate(card); 		
			tx.commit();
	}

	@SuppressWarnings("unchecked")
	public List<Card> listCard() {
		return (List<Card>) sessionFactory.getCurrentSession().createCriteria(Card.class).list();
	}

	public Card getCard(int id) {
		return (Card) sessionFactory.getCurrentSession().get(Card.class, id);
	}

	public void deleteCard(Card card) {
		sessionFactory.getCurrentSession().createQuery("DELETE FROM Card WHERE id = "+card.getId()).executeUpdate();
	}


}
