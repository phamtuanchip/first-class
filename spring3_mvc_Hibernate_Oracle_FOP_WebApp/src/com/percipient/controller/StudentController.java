package com.percipient.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.percipient.bean.Student;

@Controller
@RequestMapping("/students")
public class StudentController {

	@Autowired
	private Student student;

	//Add more Libs (Spring 3.1 or higher)
//	@RequestMapping(value = "/html", produces = "application/xml")
//	public String html(Model model) {
//		student.setName("Corey Brown");
//		model.addAttribute("stud", student);
//		return "studentPage";
//	}
	
	
	//Using old libs
	@RequestMapping(value = "/html")
	public String html(Model model,HttpServletResponse response) {
		response.setContentType("application/xml");
		student.setName("Corey Brown");
		model.addAttribute("stud", student);
		return "studentPage";
	}
	
	//Using Spring 3.1 or higher
	@ResponseBody
	@RequestMapping(value = "/xml",produces = "application/xml")
	public Student xml() {
		student.setName("Jake Stoneburner");
		return student;
	}

	@RequestMapping("/xmlToPdf")
	public ModelAndView xmlToPdf() {
		ModelAndView m = new ModelAndView("simpleStudentStyleSheet");
		String s = "<student><fname>Carlos</fname><lname>Hyde</lname></student>";
		m.getModelMap().addAttribute("xml", s);

		return m;
	}
	
	@RequestMapping("/beanToPdfSimple")
	public ModelAndView beanToPdfSimple() {
		ModelAndView m = new ModelAndView("simpleStudentStyleSheet");
		student.setName("Braxton Miller");
		m.getModelMap().addAttribute("bean", student);
		return m;
	}
	
	@RequestMapping("/beanToPdfRich")
	public ModelAndView beanToPdfRich() {
		ModelAndView m = new ModelAndView("richStudentStyleSheet");
		student.setName("Braxton Miller");
		m.getModelMap().addAttribute("bean", student);
		return m;
	}
}
