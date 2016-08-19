package com.dineshonjava.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

import com.dineshonjava.bean.AccountBean;

@SuppressWarnings("deprecation") 
public class Search extends SimpleFormController {

	private AccountBean accountBean;

	public AccountBean getAccountBean() {
		return accountBean;
	}

	public void setAccountBean(AccountBean accountBean) {
		this.accountBean = accountBean;
	}

	protected boolean isFormSubmission(HttpServletRequest request) {

		boolean isFormSubmitted = !request.getParameterMap().isEmpty();

		return isFormSubmitted;
	}

	protected Object formBackingObject(HttpServletRequest request) throws Exception {

		return accountBean;
	}

	protected ModelAndView onSubmit(HttpServletRequest request, HttpServletResponse response, Object command,
			BindException errors) throws Exception {
		HttpSession session2 = request.getSession();
		session2.setAttribute("accountBean", accountBean);
		ModelMap model = new ModelMap();
		model.put("accountBean", accountBean);
//		System.out.println(request.getParameter("id"));
		return new ModelAndView("redirect:/multi.html?mode=search");
	}
}
