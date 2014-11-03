package com.nttdata.dao;

import java.util.List;

import com.nttdata.bean.Book;

public interface BookDAO {
	List<Book> listBook();
	boolean addBook(Book objBook);
	boolean deleteBook(int book_id);
	boolean updateBook(Book objBook);
	Book selectBookByID(int book_id);
	public List<Book> selectBookByName(String book_name);
}
