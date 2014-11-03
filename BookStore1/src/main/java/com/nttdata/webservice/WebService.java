package com.nttdata.webservice;


import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;


import javax.ws.rs.core.Response;

import com.nttdata.bean.Book;
import com.nttdata.dao.BookDAO;
import com.nttdata.dao.BookDAOImpl;





@Path("/ws/api")
@Produces("application/json")
public class WebService
{
   @GET
   @Path("/search/{titleBook}")
  
   public Response searchTitleBook(@PathParam("titleBook") String titleBook)
   {
//	   BookDAO bookDao = new BookDAOImpl();
//	   List<Book> listBook = new ArrayList<Book>();
	   System.out.println(titleBook);
//	   listBook = bookDao.selectBookByName(titleBook);
       return Response.status(200).entity(titleBook).build();
   }
}
