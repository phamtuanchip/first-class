package entities;


import org.springframework.web.multipart.MultipartFile;

public class FileUploadForm {

	private MultipartFile file;
	private String mota;
	private String keyword;
	private int danhmucid;
	



	public int getDanhmucid() {
		return danhmucid;
	}

	public void setDanhmucid(int danhmucid) {
		this.danhmucid = danhmucid;
	}

	public String getMota() {
		return mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	

	
}
