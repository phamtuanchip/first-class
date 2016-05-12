/*
 * Created on 3 avr. 2014 ( Time 19:39:48 )
 * Generated by Telosys Tools Generator ( version 2.1.0 )
 */
package org.demo.web.listitem;

import org.demo.bean.Author;
import org.demo.web.common.ListItem;

public class AuthorListItem implements ListItem {

	private final String value ;
	private final String label ;
	
	public AuthorListItem(Author author) {
		super();

		this.value = ""
			 + author.getId()
		;

		//TODO : Define here the attributes to be displayed as the label
		this.label = author.toString();
	}

	@Override
	public String getValue() {
		return value;
	}

	@Override
	public String getLabel() {
		return label;
	}

}
