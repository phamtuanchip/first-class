package training.lmquan.action;

import java.io.File;
import java.io.FileInputStream;
import java.util.List;
import training.lmquan.dao.CategoryDAO;
import training.lmquan.dao.ImageDAO;
import training.lmquan.model.Category;
import training.lmquan.model.Image;

import com.opensymphony.xwork2.ActionSupport;

public class ImageAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ImageDAO imageDAO;
	private CategoryDAO categoryDAO;
	private List<Image> lstImage;
	private List<Category> lstCategory;
	private Image image;
	private  Category cate;
	private String imageName;
	private String uploader;
	private String description;
	private int categoryId;
	private int imgId;
	private Image imageEdit;
	private String imgName;
	private String uplder;
	private String descr;
	private int imageType;
	private int catId;
	private int catId2;
	
	private String error1;
	private String error2;
	private String error3;
	private String error4;
	private String error5;
	
	private File imageUpload;
	private String imageUploadContentType;
	private String imageUploadFileName;
	
	public ImageAction(){
		imageDAO = new ImageDAO();
		categoryDAO = new  CategoryDAO();
	}
	
	
	//Action 
	public String listImage() {
		lstImage = imageDAO.listImage();
		lstCategory = categoryDAO.listCategory();
		//System.out.println(lstImage.get(0).getCategory().getCategoryName());
		return SUCCESS;
	}
	
	public String viewByCategory() {
		if(categoryId==-1){
			lstCategory = categoryDAO.listCategory();
			lstImage = imageDAO.listImage();
		}else{
			lstCategory = categoryDAO.listCategory();
			lstImage = imageDAO.listImageByCategoryId(categoryId);
		}
		return SUCCESS;
	}
	
	public String addImageForward() {
		lstCategory = categoryDAO.listCategory();
		return SUCCESS;
	}
	
	public String addImage() {
		
		byte[] imageData = new byte[(int)imageUpload.length()];
		FileInputStream fileInputStream;
		try {
			fileInputStream = new FileInputStream(imageUpload);
			fileInputStream.read(imageData);
			fileInputStream.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		image = new Image();
		cate = new Category();
		cate = categoryDAO.getCategoryById(categoryId);
		image.setCategory(cate);
		image.setImageName(imageName);
		image.setImageType(imageUploadContentType.substring(6));
		image.setDescription(description);
		image.setUploader(uploader);
		image.setImage(imageData);
		imageDAO.insertImage(image);
		return SUCCESS;
	}

	public String showImage() {
		image = new Image();
		image = imageDAO.getImageById(imgId);
		if(image== null){
			System.out.println(image.getImage().toString());
		}
		return SUCCESS;
	}
	
	public String daleteImage() {
		image = new Image();
		image = imageDAO.getImageById(imgId);
		imageDAO.deleteImage(image);
		return SUCCESS;
	}
	
	public String imageForwardEdit() {
		image = new Image();
		image = imageDAO.getImageById(imgId);
		cate = categoryDAO.getCategoryById(image.getCategory().getCategoryId());
		lstCategory = categoryDAO.listCategory();
		return SUCCESS;
	}
	
	public String editImage() {
		if(imageUpload==null){
			imageEdit = imageDAO.getImageById(image.getImageId());
			cate = categoryDAO.getCategoryById(categoryId);
			imageEdit.setCategory(cate);
			imageEdit.setImageName(image.getImageName());
			imageEdit.setUploader(image.getUploader());
			imageEdit.setDescription(image.getDescription());
			imageDAO.updateImageInfo(imageEdit);
		}else{
			byte[] imageData = new byte[(int)imageUpload.length()];
			FileInputStream fileInputStream;
			try {
				fileInputStream = new FileInputStream(imageUpload);
				fileInputStream.read(imageData);
				fileInputStream.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			imageEdit = imageDAO.getImageById(image.getImageId());
			cate = categoryDAO.getCategoryById(categoryId);
			imageEdit.setCategory(cate);
			imageEdit.setImageName(image.getImageName());
			imageEdit.setUploader(image.getUploader());
			imageEdit.setDescription(image.getDescription());
			imageEdit.setImage(imageData);
			imageDAO.updateImageInfo(imageEdit);
		}
		return SUCCESS;
	}
	
	public String searchImage() {
		lstCategory = categoryDAO.listCategory();
		lstImage = imageDAO.searchImage(imgName, uplder, descr, catId, imageType);
		return SUCCESS;
	}
	
	//Getter & Setter
	public List<Image> getLstImage() {
		return lstImage;
	}

	public void setLstImage(List<Image> lstImage) {
		this.lstImage = lstImage;
	}

	public List<Category> getLstCategory() {
		return lstCategory;
	}

	public void setLstCategory(List<Category> lstCategory) {
		this.lstCategory = lstCategory;
	}

	public Image getImage() {
		return image;
	}

	public void setImage(Image image) {
		this.image = image;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public String getUploader() {
		return uploader;
	}

	public void setUploader(String uploader) {
		this.uploader = uploader;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public File getImageUpload() {
		return imageUpload;
	}

	public void setImageUpload(File imageUpload) {
		this.imageUpload = imageUpload;
	}

	public String getImageUploadContentType() {
		return imageUploadContentType;
	}

	public void setImageUploadContentType(String imageUploadContentType) {
		this.imageUploadContentType = imageUploadContentType;
	}

	public String getImageUploadFileName() {
		return imageUploadFileName;
	}

	public void setImageUploadFileName(String imageUploadFileName) {
		this.imageUploadFileName = imageUploadFileName;
	}


	public Category getCate() {
		return cate;
	}

	public void setCate(Category cate) {
		this.cate = cate;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public int getImgId() {
		return imgId;
	}

	public void setImgId(int imgId) {
		this.imgId = imgId;
	}

	public Image getImageEdit() {
		return imageEdit;
	}

	public void setImageEdit(Image imageEdit) {
		this.imageEdit = imageEdit;
	}

	public String getImgName() {
		return imgName;
	}

	public void setImgName(String imgName) {
		this.imgName = imgName;
	}

	public String getUplder() {
		return uplder;
	}

	public void setUplder(String uplder) {
		this.uplder = uplder;
	}

	public String getDescr() {
		return descr;
	}

	public void setDescr(String descr) {
		this.descr = descr;
	}

	public int getImageType() {
		return imageType;
	}

	public void setImageType(int imageType) {
		this.imageType = imageType;
	}

	public int getCatId() {
		return catId;
	}

	public void setCatId(int catId) {
		this.catId = catId;
	}

	public int getCatId2() {
		return catId2;
	}

	public void setCatId2(int catId2) {
		this.catId2 = catId2;
	}

	public String getError1() {
		return error1;
	}

	public void setError1(String error1) {
		this.error1 = error1;
	}

	public String getError2() {
		return error2;
	}

	public void setError2(String error2) {
		this.error2 = error2;
	}

	public String getError3() {
		return error3;
	}

	public void setError3(String error3) {
		this.error3 = error3;
	}

	public String getError4() {
		return error4;
	}

	public void setError4(String error4) {
		this.error4 = error4;
	}

	public String getError5() {
		return error5;
	}

	public void setError5(String error5) {
		this.error5 = error5;
	}
	
	
	
}
