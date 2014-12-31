package controller;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.TaiLieuModel;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;



import entities.Tailieucongty;

@Controller
@RequestMapping("/xulydownload")
public class XuLyDownload {

	@RequestMapping(value = "download/{matl}", method = RequestMethod.GET)
	public void doDownload(HttpServletRequest request,
			HttpServletResponse response, @PathVariable("matl") String matl)
			throws ServletException, IOException {

		TaiLieuModel tlm = new TaiLieuModel();
		Tailieucongty tl = tlm.find(Integer.parseInt(matl));

		/*
		 * // get absolute path of the application ServletContext context =
		 * request.getServletContext(); String appPath =
		 * context.getRealPath(""); System.out.println("appPath = " + appPath);
		 * 
		 * // construct the complete absolute path of the file String fullPath =
		 * appPath + filePath; File downloadFile = new File(fullPath);
		 * FileInputStream inputStream = new FileInputStream(downloadFile);
		 */
		Path source = Paths.get(tl.getTentl());
		System.out.print(Files.probeContentType(source));
		// get MIME type of the file

		String mimeType = Files.probeContentType(source);
		if (mimeType == null) {
			// set to binary type if MIME mapping not found
			mimeType = "application/octet-stream";
		}
		System.out.println("MIME type: " + mimeType);

		// set content attributes for the response
		response.setContentType(mimeType);
		response.setContentLength((int) tl.getNoidung().length);

		// set headers for the response
		String headerKey = "Content-Disposition";
		String headerValue = String.format("attachment; filename=\"%s\"",
				tl.getTentl());
		response.setHeader(headerKey, headerValue);

		// get output stream of the respons
		OutputStream outStream = response.getOutputStream();
		outStream.write(tl.getNoidung());
		outStream.close();

	}
}
