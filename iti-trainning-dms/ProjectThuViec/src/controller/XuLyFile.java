package controller;

import model.DanhMucModel;
import model.TaiLieuModel;
import entities.*;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.websocket.server.PathParam;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping(value = "/xulyfile")
public class XuLyFile {

	@RequestMapping(method = RequestMethod.GET)
	public String read(ModelMap mm) {
		TaiLieuModel tlm = new TaiLieuModel();
		DanhMucModel dmm = new DanhMucModel();
		List<Tailieucongty> dstl = tlm.findAll();
		mm.put("dsdm", dmm.findAll());
		mm.put("dstl", dstl);
		return "danhsachtailieu";
	}

	@RequestMapping(value = "delete/{matl}", method = RequestMethod.GET)
	public String delete(@PathVariable("matl") int matl, ModelMap mm) {
		TaiLieuModel tlm = new TaiLieuModel();
		DanhMucModel dmm = new DanhMucModel();
		tlm.delete(tlm.find(matl));
		mm.put("dstl", tlm.findAll());
		mm.put("dsdm", dmm.findAll());
		return "danhsachtailieu";
	}

	@RequestMapping(value = "edit/{matl}", method = RequestMethod.GET)
	public String edit(@PathVariable("matl") int matl, ModelMap mm) {
		TaiLieuModel tlm = new TaiLieuModel();
		mm.put("tl", tlm.find(matl));
		return "editpage";
	}

	@RequestMapping(value = "xulyedit", method = RequestMethod.POST)
	public String xulyedit(@ModelAttribute("tl") Tailieucongty tl,
			@RequestParam(value="file")MultipartFile file, ModelMap mm) {
		
		try {
			DanhMucModel dmm = new DanhMucModel();
			TaiLieuModel tlm = new TaiLieuModel();
			Tailieucongty tailieu = tlm.find(tl.getMatl());
			
			if(file != null){
				String filename = file.getOriginalFilename();
				final byte[] bytes = new byte[1048576];
				InputStream in;
				in = file.getInputStream();
				in.read(bytes);
				tl.setNoidung(bytes);
				tl.setTentl(filename);
				tl.setNgayupload(new Date());
				tlm.update(tl);
			}
			else{
				tl.setNoidung(tailieu.getNoidung());
				tl.setNgayupload(new Date());
				tlm.update(tl);
			}
				
			mm.put("dsdm", dmm.findAll());
			mm.put("dstl", tlm.findAll());
			return "danhsachtailieu";
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.print(e.getMessage());
			return null;
		}
		
	}

	@RequestMapping(value = "detail/{matl}", method = RequestMethod.GET)
	public String detail(@PathVariable("matl") int matl, ModelMap mm) {
		TaiLieuModel tlm = new TaiLieuModel();
		Tailieucongty tl = tlm.find(matl);

		try {
			FileOutputStream fileOuputStream = new FileOutputStream(
					"D:\\luutru\\" + tl.getTentl());
			fileOuputStream.write(tl.getNoidung());
			mm.put("mess", "da luu file thanh cong");
			fileOuputStream.close();
			
			return "detail";

		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.print(e.getMessage());
			return null;
		}
	}

	@RequestMapping(value = "search", method = RequestMethod.POST)
	public String search(ModelMap mm,
			@ModelAttribute("search") SearchEntity search) {
		TaiLieuModel tlm = new TaiLieuModel();
		DanhMucModel dmm = new DanhMucModel();
		//SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		List<Tailieucongty> dstl = tlm.search(search.getTentl(),
				search.getKeyword(), search.getMadm(), search.getMota(),
				search.getDate1(), search.getDate2());
		mm.put("dsdm", dmm.findAll());
		 mm.put("dstl", dstl);
		return "danhsachtailieu";

	}
}
