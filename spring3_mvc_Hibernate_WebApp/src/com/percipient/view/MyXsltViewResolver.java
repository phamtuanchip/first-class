package com.percipient.view;

import java.util.Locale;

import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.AbstractUrlBasedView;
import org.springframework.web.servlet.view.xslt.XsltViewResolver;

/**
 * 
 * Custom view resolver to return null when an XSL view cannot be loaded. This
 * allows chaining of view resolvers.
 * 
 * */
public class MyXsltViewResolver extends XsltViewResolver {

	@Override
	protected View loadView(String viewName, Locale locale) throws Exception {

		AbstractUrlBasedView view = super.buildView(viewName);
		View viewObj = null;
		try {
			viewObj = (View) getApplicationContext()
					.getAutowireCapableBeanFactory().initializeBean(view,
							viewName);
		} catch (Exception e) {
			return null;
		}
		return viewObj;
	}
}
