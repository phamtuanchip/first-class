package com.dineshonjava.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

import com.dineshonjava.bean.CardBean;
@SuppressWarnings("deprecation")
public class CardSimple extends SimpleFormController{
	private CardBean cardBean;
	public void setCardBean(CardBean cardBean) {
		this.cardBean = cardBean;
	}
	protected boolean isFormSubmission(HttpServletRequest request) {
        
        boolean isFormSubmitted = !request.getParameterMap().isEmpty();
        return isFormSubmitted;
  }
	protected Object formBackingObject(HttpServletRequest request) throws Exception {
         return cardBean;
  }
	protected ModelAndView onSubmit(HttpServletRequest request,
            HttpServletResponse response, Object command, BindException errors)
            throws Exception {
		HttpSession session = request.getSession();
		session.setAttribute("cardBean", cardBean);
		ModelMap model = new ModelMap();
		model.put("cardBean", cardBean);
//		System.out.println(request.getParameter("id"));
		return new ModelAndView("redirect:/multi.html?mode=cardSave");
}
}
