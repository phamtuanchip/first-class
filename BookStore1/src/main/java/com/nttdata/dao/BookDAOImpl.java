package com.nttdata.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;
import com.nttdata.bean.Book;

public class BookDAOImpl implements BookDAO {
	@SessionTarget
	Session session;

	@TransactionTarget
	Transaction transaction;

	@SuppressWarnings("unchecked")
	public List<Book> listBook() {
		try {
			return session.createQuery("FROM Book").list();

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	public boolean addBook(Book objBook) {
		try {
			session.save(objBook);
			return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			transaction.rollback();
			return false;
		}
	}

	public boolean deleteBook(int book_id) {
		try {
			Book objBook = (Book) session.get(Book.class, book_id);
			session.delete(objBook);
			return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			transaction.rollback();
			return false;
		}
	}

	public boolean updateBook(Book objBook) {
		try {
			session.update(objBook);
			return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			transaction.rollback();
			return false;
		}
	}

	public Book selectBookByID(int book_id) {
		try {
			Book objBook = (Book) session.get(Book.class, book_id);
			return objBook;
		} catch (HibernateException e) {
			e.printStackTrace();
			transaction.rollback();
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	public List<Book> selectBookByName(String bookTitle) {
		try {
			if (session == null) {
				SessionFactory factory = new Configuration().configure().buildSessionFactory();
				session = factory.openSession();
			}
			String hql = "From book WHERE book_title = 'Book A'";
			Query query = session.createQuery(hql);
			return query.list();
		} catch (HibernateException e) {
			e.printStackTrace();
			transaction.rollback();
		}
		return null;
	}
	
}
