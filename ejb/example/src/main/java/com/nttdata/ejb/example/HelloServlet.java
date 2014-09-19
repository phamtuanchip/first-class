package com.nttdata.ejb.example;

import javax.ejb.EJB;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class HelloServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@EJB
    Hello bean;

    protected void doGet(HttpServletRequest req,
                         HttpServletResponse res)
              throws IOException {

        res.setContentType("text/plain");
        ServletOutputStream out = res.getOutputStream();

        out.println("Hello World!");
        out.println(bean.greet("OpenEJB User"));
    }
}