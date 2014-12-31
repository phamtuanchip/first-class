package training.lamquan.searchservice;

import java.util.List;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

import training.lmquan.dao.ImageDAO;
import training.lmquan.model.Image;

@Path("search")
public class SearchService {
	
	
	@GET  
    @Path("key")  
    @Produces(MediaType.APPLICATION_JSON)  
    public List<Image> search(@QueryParam("imgName") String imgName,
    		@QueryParam("uploader") String uplder,
    		@QueryParam("description") String descr,
    		@QueryParam("categoryId") int categoryId,
    		@QueryParam("imagetype") int imageType) 
	{  
		return ImageDAO.searchImage(imgName, uplder, descr, categoryId, imageType);
     }  
	
}
