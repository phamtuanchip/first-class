package training.lmquan.resulttype;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import training.lmquan.action.ImageAction;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.Result;

public class ImageResult implements Result{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void execute(ActionInvocation actionInvocation) throws Exception {
		// TODO Auto-generated method stub
		String contentType = "image/jpeg,image/png,image/gif,image/pjpeg";
		ImageAction imageAction = (ImageAction) actionInvocation.getAction();
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType(contentType);
		response.getOutputStream().write(imageAction.getImage().getImage());
		response.getOutputStream().flush();
		response.getOutputStream().close();
	}

}
