package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.knappsack.swagger4springweb.controller.ApiDocumentationController;

@Controller
@RequestMapping(value = "/api")
public class ApiController extends ApiDocumentationController{

	public ApiController(){
		 setBaseControllerPackage("com.example.controller.api");
	     setBaseModelPackage("com.example.model");
	     setApiVersion("v1");
	}
	
	@RequestMapping(value = "", method = RequestMethod.GET)
    public String documentation() {
        return "api";
    }
}
