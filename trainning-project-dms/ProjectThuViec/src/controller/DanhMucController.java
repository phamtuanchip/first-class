package controller;

import model.DanhMucModel;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import entities.Danhmuc;

@Controller
@RequestMapping(value = "danhmuc")
public class DanhMucController {

	@RequestMapping(method = RequestMethod.GET)
	public String showdanhmuc(ModelMap mm) {
		DanhMucModel dmm = new DanhMucModel();
		mm.put("dsdm", dmm.findAll());
		return "danhsachdanhmuc";
	}

	@RequestMapping(value = "themdanhmuc", method = RequestMethod.POST)
	public String themdanhmuc(@ModelAttribute("dm")Danhmuc dm, ModelMap mm) {
		DanhMucModel dmm = new DanhMucModel();
		dmm.create(dm);
		mm.put("dsdm", dmm.findAll());
		return "danhsachdanhmuc";
	}

	@RequestMapping(value = "xoadanhmuc/{danhmucid}", method = RequestMethod.GET)
	public String xoadanhmuc(@PathVariable("danhmucid") int danhmucid,ModelMap mm) {
		DanhMucModel dmm = new DanhMucModel();
		dmm.deletedanhmuc(dmm.find(danhmucid));
		mm.put("dsdm", dmm.findAll());
		return "danhsachdanhmuc";
	}

	@RequestMapping(value = "suadanhmuc/{danhmucid}", method = RequestMethod.GET)
	public String suadanhmuc(@PathVariable("danhmucid") int danhmucid,
			ModelMap mm) {
		DanhMucModel dmm = new DanhMucModel();
		mm.put("dm", dmm.find(danhmucid));
		return "suadanhmuc";
	}
	
	@RequestMapping(value = "xulysuadanhmuc", method = RequestMethod.POST)
	public String suadanhmuc(@ModelAttribute("dm")Danhmuc dm,
			ModelMap mm) {
		DanhMucModel dmm = new DanhMucModel();
		dmm.update(dm);
		mm.put("dsdm", dmm.findAll());
		return "danhsachdanhmuc";
	}
}
