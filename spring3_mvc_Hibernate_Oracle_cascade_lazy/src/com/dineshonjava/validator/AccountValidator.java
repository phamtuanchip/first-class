package com.dineshonjava.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.dineshonjava.bean.AccountBean;
public class AccountValidator implements Validator {
	@Override
	public boolean supports(Class<?> c) {
		return AccountBean.class.isAssignableFrom(c);
	}
	
	@Override
	public void validate(Object command, Errors errors) {
		AccountBean bean = (AccountBean) command;
//		if(bean.getId() == null || "".equals(bean.getId()))
//			errors.rejectValue("id", null, "Id is not Null.");
		if(bean.getName() == null || "".equals(bean.getName()))
			errors.rejectValue("name", null, "Name is not Null.");
		if(bean.getAddress() == null || "".equals(bean.getAddress()))
			errors.rejectValue("address", null, "Address is not Null.");
		if(bean.getAge() == null || "".equals(bean.getAge()))
			errors.rejectValue("age", null, "Age is not Null.");
		if(bean.getEmails() == null || "".equals(bean.getEmails()))
			errors.rejectValue("emails", null, "Email is not Null.");
		if(bean.getIdentityCard() == null || "".equals(bean.getIdentityCard()))
			errors.rejectValue("identityCard", null, "Identity Card is not Null.");
		if(bean.getPasswd() == null || "".equals(bean.getPasswd()))
			errors.rejectValue("passwd", null, "Passwd is not Null.");
		if(bean.getPhone() == null || "".equals(bean.getPhone()))
			errors.rejectValue("phone", null, "Phone is not Null.");
		if(bean.getUsers() == null || "".equals(bean.getUsers()))
			errors.rejectValue("users", null, "User is not Null.");
		if (bean.getAge() != null && bean.getAge() < 0) {
            errors.rejectValue("age", "age.incorrect","Age a litle");
        } else if (bean.getAge() != null && bean.getAge() > 110) {
            errors.rejectValue("age", "age.incorrect", "Age too big");
        }

	
	}
	

}
