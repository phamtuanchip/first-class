package com.nttdata.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;



import com.nttdata.bean.Book;
import com.nttdata.dao.BookDAO;
import com.nttdata.dao.BookDAOImpl;
import com.opensymphony.xwork2.ActionSupport;



public class BookAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	HttpServletRequest request = ServletActionContext.getRequest();
	List<Book> bookList = new ArrayList<Book>();
	BookDAO bookDao = new BookDAOImpl();
	Book objBook = new Book();
	public Book getObjBook() {
		return objBook;
	}

	public void setObjBook(Book objBook) {
		this.objBook = objBook;
	}

	public String execute() throws Exception{
		return SUCCESS;
	}
	
	public List<Book> getBookList(){
		return bookList;
	}
	
	public String listBook() throws Exception{	 
		bookList = bookDao.listBook();
		return SUCCESS;
	}
	
	public String addBook() throws Exception{
		System.out.println("add method=========================");
		 
		boolean successful = bookDao.addBook(objBook);
		
		//reload page
		bookList = bookDao.listBook();
		if(successful)
			return SUCCESS;
		else 
			return ERROR;
	}
	
	public String editBook() throws Exception{
	    int idEdit = Integer.parseInt(request.getParameter("book_id"));
	    objBook = bookDao.selectBookByID(idEdit);
		return SUCCESS;
	}
	public String updateBook() throws Exception{
		
		System.out.println("update methoddd 1 =====================================");
		bookDao.updateBook(objBook);		
		System.out.println("update methoddd 2 =====================================");
		//reload page
		bookList = bookDao.listBook();
		System.out.println("update methoddd 3 =====================================");
		return SUCCESS;
	}
	public String deleteBook() throws Exception{
		//delete customer by ID
		int idDelete = Integer.parseInt(request.getParameter("book_id"));
	    boolean sucessful = bookDao.deleteBook(idDelete);
	    
	    //reload page
	    bookList = bookDao.listBook();
	    
	    //check successful
		if(sucessful)
			return SUCCESS;
		else 
			return ERROR;
	}

}
