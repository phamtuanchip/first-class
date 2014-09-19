package com.nttdata.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;


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
		try{
			System.out.println("List book 1 ================");
			return session.createQuery("FROM Book").list();
		}catch(HibernateException e){
			e.printStackTrace();
			return null;
		}
	}

	public boolean addBook(Book objBook) {
		try{
			session.save(objBook);
			return true;
			}catch(HibernateException e){
				e.printStackTrace();
				return false;
			}
	}

	public boolean deleteBook(int book_id) {
		try{
			Book objBook = (Book) session.get(Book.class, book_id);
			session.delete(objBook);
			return true;
			}catch(HibernateException e){
				e.printStackTrace();
				return false;
			}
	}

	public boolean updateBook(Book objBook) {
		try{
			System.out.println("update methoddd DAO 1 =====================================");
			
			session.update(objBook);
			
			System.out.println("update methoddd DAO 2 =====================================");
			return true;
			}catch(HibernateException e){
				e.printStackTrace();
				return false;
			}
	}

	@Override
	public Book selectBookByID(int book_id) {
		try{
			Book objBook = (Book) session.get(Book.class, book_id);
			return objBook;
		}catch(HibernateException e){
			e.printStackTrace();
		}
		return null;
	}


}
