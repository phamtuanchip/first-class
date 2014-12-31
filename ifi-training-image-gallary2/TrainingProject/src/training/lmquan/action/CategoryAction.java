package training.lmquan.action;

import training.lmquan.dao.CategoryDAO;
import training.lmquan.model.Category;

import com.opensymphony.xwork2.ActionSupport;

public class CategoryAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private CategoryDAO categoryDAO;
	private String categoryName;
	private Category category;
	private String error;
	
	public CategoryAction(){
		categoryDAO = new CategoryDAO();
	}
	
	public void validate() {
		// TODO Auto-generated method stub
		if(categoryName== null || ("").equals(categoryName)){
			addFieldError("error", getText("You must enter category name"));
			error = getText("You must enter category name");
		}
	}
	
	public String addCategory() {
		category = new Category();
		category.setCategoryName(getCategoryName());
		categoryDAO.insertCategory(category);
		return SUCCESS;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}

	
	
}
