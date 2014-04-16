package com.mkyong.common.action;
 
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 


import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;
import org.apache.struts.action.DynaActionForm;

import com.sivalabs.mybatisdemo.domain.User;
import com.sivalabs.mybatisdemo.service.UserService;
 
public class UserAction extends Action{
	UserService userviceService = new UserService();
	public ActionForward execute(ActionMapping mapping,ActionForm form,
		HttpServletRequest request,HttpServletResponse response) 
        throws Exception {
 
		DynaActionForm userForm = (DynaActionForm)form;
		
		ActionMessages errors = new ActionMessages();

		//do the form validation in action class
	    if( userForm.get("username") == null || ("".equals(userForm.get("username")))) {
	       errors.add("common.name.err",
             new ActionMessage("error.common.name.required"));
	    } else {
	    	  User u = userviceService.getUserByName(userForm.get("username").toString());
	    	  if(u == null) errors.add("common.name.err", new ActionMessage("error.common.name.notfound"));
	    }
	  
	    saveErrors(request,errors);
	    
	    if(errors.isEmpty()){
	    	
	        return mapping.findForward("success");
	    }else{
	        return mapping.findForward("failed");
	    }
	   
	}
 
}