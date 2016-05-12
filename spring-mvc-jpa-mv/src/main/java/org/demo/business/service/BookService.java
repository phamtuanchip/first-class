/*
 * Created on 3 avr. 2014 ( Time 19:39:49 )
 * Generated by Telosys Tools Generator ( version 2.1.0 )
 */
package org.demo.business.service;

import java.util.List;

import org.demo.bean.Book;

/**
 * Business Service Interface for entity Book.
 */
public interface BookService { 

	/**
	 * Loads an entity from the database using its Primary Key
	 * @param id
	 * @return entity
	 */
	Book findById( Integer id  ) ;

	/**
	 * Loads all entities.
	 * @return all entities
	 */
	List<Book> findAll();

	/**
	 * Saves the given entity in the database (create or update)
	 * @param entity
	 * @return entity
	 */
	Book save(Book entity);

	/**
	 * Updates the given entity in the database
	 * @param entity
	 * @return
	 */
	Book update(Book entity);

	/**
	 * Creates the given entity in the database
	 * @param entity
	 * @return
	 */
	Book create(Book entity);

	/**
	 * Deletes an entity using its Primary Key
	 * @param id
	 */
	void delete( Integer id );


}
