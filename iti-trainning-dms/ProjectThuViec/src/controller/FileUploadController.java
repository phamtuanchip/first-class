package controller;

import java.io.*;
import java.util.*;

import model.DanhMucModel;
import model.TaiLieuModel;

import org.springframework.stereotype.Controller;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import entities.*;

@Controller
@RequestMapping(value = "/index")
public class FileUploadController {

	@RequestMapping(method = RequestMethod.GET)
	public String displayForm(ModelMap mm) {
		DanhMucModel dmm = new DanhMucModel();
		mm.put("dsdm", dmm.findAll());
		return "index";
	}

	@RequestMapping(value = "/abc", method = RequestMethod.GET)
	public String abc(ModelMap mm) {
		return "abc";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(
			@ModelAttribute("FileUploadForm") FileUploadForm FileUploadForm,
			ModelMap mm) {

		MultipartFile file = FileUploadForm.getFile();
		DanhMucModel dmm = new DanhMucModel();

		try {

			String fileName = file.getOriginalFilename();

			// Handle file content - multipartFile.getInputStream()

			final byte[] bytes = new byte[1048576];
			InputStream in = file.getInputStream();
			in.read(bytes);
			Tailieucongty tailieu = new Tailieucongty();
			tailieu.setNgayupload(new Date());
			tailieu.setNoidung(bytes);
			tailieu.setTentl(fileName);
			tailieu.setDanhmuc(dmm.find(FileUploadForm.getDanhmucid()));
			tailieu.setKeyword(FileUploadForm.getKeyword());
			tailieu.setMota(FileUploadForm.getMota());
			TaiLieuModel tlm = new TaiLieuModel();
			if (tlm.create(tailieu)) {
				mm.put("mess", "upload thanh cong");
			} else {
				mm.put("mess", "upload that bai");
			}
			in.close();
		} catch (Exception e) {
			mm.put("mess", "bi null roi");
		}

		return "file_upload_success";
	}
}
