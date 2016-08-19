package com.dineshonjava.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.dineshonjava.bean.CardBean;
public class CardValidator implements Validator {
	@Override
	public boolean supports(Class<?> c) {
		return CardBean.class.isAssignableFrom(c);
	}
	
	@Override
	public void validate(Object command, Errors errors) {
		CardBean bean = (CardBean) command;
		if(bean.getName() == null || "".equals(bean.getName()))
			errors.rejectValue("name", null, "Name is not Null.");
		if(bean.getAccountHolders() == null || "".equals(bean.getAccountHolders()))
			errors.rejectValue("accountHolders", null, "AccountHolders is not Null.");
		if(bean.getAid() == null || "".equals(bean.getAid()))
			errors.rejectValue("aid", null, "Age is not Null.");
		if(bean.getBranch() == null || "".equals(bean.getBranch()))
			errors.rejectValue("branch", null, "Branch is not Null.");
		if(bean.getNumberAc() == null || "".equals(bean.getNumberAc()))
			errors.rejectValue("numberAc", null, "NumberAc is not Null.");
		if(bean.getType() == null || "".equals(bean.getType()))
			errors.rejectValue("type", null, "Type is not Null.");	
	}
	

}
