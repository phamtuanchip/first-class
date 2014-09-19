package com.nttdata.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;
import com.nttdata.bean.Author;

public class AuthorDaoImpl implements AuthorDao {
	@SessionTarget
	Session session;
	
	@TransactionTarget
	Transaction transaction;
	@SuppressWarnings("unchecked")
	@Override
	public List<Author> listAuthor() {
		return session.createQuery("FROM author").list();
	}

}
