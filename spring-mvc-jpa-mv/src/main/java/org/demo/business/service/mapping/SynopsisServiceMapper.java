/*
 * Created on 3 avr. 2014 ( Time 19:39:43 )
 * Generated by Telosys Tools Generator ( version 2.1.0 )
 */
package org.demo.business.service.mapping;

import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.stereotype.Component;
import org.demo.bean.Synopsis;
import org.demo.bean.jpa.SynopsisEntity;

/**
 * Mapping between entity beans and display beans.
 */
@Component
public class SynopsisServiceMapper extends AbstractServiceMapper {

	/**
	 * ModelMapper : bean to bean mapping library.
	 */
	private ModelMapper modelMapper;
	
	/**
	 * Constructor.
	 */
	public SynopsisServiceMapper() {
		modelMapper = new ModelMapper();
		modelMapper.getConfiguration().setMatchingStrategy(MatchingStrategies.STRICT);
	}

	/**
	 * Mapping from 'SynopsisEntity' to 'Synopsis'
	 * @param synopsisEntity
	 */
	public Synopsis mapSynopsisEntityToSynopsis(SynopsisEntity synopsisEntity) {
		if(synopsisEntity == null) {
			return null;
		}

		//--- Generic mapping 
		Synopsis synopsis = map(synopsisEntity, Synopsis.class);

		return synopsis;
	}
	
	/**
	 * Mapping from 'Synopsis' to 'SynopsisEntity'
	 * @param synopsis
	 * @param synopsisEntity
	 */
	public void mapSynopsisToSynopsisEntity(Synopsis synopsis, SynopsisEntity synopsisEntity) {
		if(synopsis == null) {
			return;
		}

		//--- Generic mapping 
		map(synopsis, synopsisEntity);

	}
	
	/**
	 * {@inheritDoc}
	 */
	@Override
	protected ModelMapper getModelMapper() {
		return modelMapper;
	}

	protected void setModelMapper(ModelMapper modelMapper) {
		this.modelMapper = modelMapper;
	}

}