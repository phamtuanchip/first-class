package com.nttdata.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;


import com.nttdata.bean.Category;

public class CategoryDaoImpl implements CategoryDao {
	
	Session session;
	
	Transaction transaction;
		
	public List<Category> listCategory() {

		return null;
	}
}
