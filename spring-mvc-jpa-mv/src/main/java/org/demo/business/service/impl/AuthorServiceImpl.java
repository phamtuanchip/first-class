/*
 * Created on 3 avr. 2014 ( Time 19:39:41 )
 * Generated by Telosys Tools Generator ( version 2.1.0 )
 */
package org.demo.business.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.demo.bean.Author;
import org.demo.bean.jpa.AuthorEntity;
import java.util.List;
import org.demo.business.service.AuthorService;
import org.demo.business.service.mapping.AuthorServiceMapper;
import org.demo.data.repository.jpa.AuthorJpaRepository;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

/**
 * Implementation of AuthorService
 */
@Component
@Transactional
public class AuthorServiceImpl implements AuthorService {

	@Resource
	private AuthorJpaRepository authorJpaRepository;

	@Resource
	private AuthorServiceMapper authorServiceMapper;
	
	@Override
	public Author findById(Integer id) {
		AuthorEntity authorEntity = authorJpaRepository.findOne(id);
		return authorServiceMapper.mapAuthorEntityToAuthor(authorEntity);
	}

	@Override
	public List<Author> findAll() {
		Iterable<AuthorEntity> entities = authorJpaRepository.findAll();
		List<Author> beans = new ArrayList<Author>();
		for(AuthorEntity authorEntity : entities) {
			beans.add(authorServiceMapper.mapAuthorEntityToAuthor(authorEntity));
		}
		return beans;
	}

	@Override
	public Author save(Author author) {
		return update(author) ;
	}

	@Override
	public Author create(Author author) {
		AuthorEntity authorEntity = authorJpaRepository.findOne(author.getId());
		if( authorEntity != null ) {
			throw new IllegalStateException("already.exists");
		}
		authorEntity = new AuthorEntity();
		authorServiceMapper.mapAuthorToAuthorEntity(author, authorEntity);
		AuthorEntity authorEntitySaved = authorJpaRepository.save(authorEntity);
		return authorServiceMapper.mapAuthorEntityToAuthor(authorEntitySaved);
	}

	@Override
	public Author update(Author author) {
		AuthorEntity authorEntity = authorJpaRepository.findOne(author.getId());
		authorServiceMapper.mapAuthorToAuthorEntity(author, authorEntity);
		AuthorEntity authorEntitySaved = authorJpaRepository.save(authorEntity);
		return authorServiceMapper.mapAuthorEntityToAuthor(authorEntitySaved);
	}

	@Override
	public void delete(Integer id) {
		authorJpaRepository.delete(id);
	}

	public AuthorJpaRepository getAuthorJpaRepository() {
		return authorJpaRepository;
	}

	public void setAuthorJpaRepository(AuthorJpaRepository authorJpaRepository) {
		this.authorJpaRepository = authorJpaRepository;
	}

	public AuthorServiceMapper getAuthorServiceMapper() {
		return authorServiceMapper;
	}

	public void setAuthorServiceMapper(AuthorServiceMapper authorServiceMapper) {
		this.authorServiceMapper = authorServiceMapper;
	}

}
