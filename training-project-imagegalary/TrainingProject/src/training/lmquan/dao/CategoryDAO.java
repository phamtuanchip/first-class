package training.lmquan.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import training.lmquan.model.Category;
import training.lmquan.util.HibernateUtil;

public class CategoryDAO {

	@SuppressWarnings("unchecked")
	public List<Category> listCategory() {
		List<Category> lstCategory = null;
		Session session = HibernateUtil.getSession();
		try {
			session.beginTransaction();
			lstCategory = (List<Category>) session.createQuery("from Category").list();
			session.getTransaction().commit();
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return lstCategory;
	}
	
	public void insertCategory(Category category) {
		Session session = HibernateUtil.getSession();
		try {
			session.beginTransaction();
			session.save(category);
			session.getTransaction().commit();
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
		}
	}
	
	@SuppressWarnings("unchecked")
	public Category getCategoryById(int id) {
		Category category = null;
		List<Category> lstCategory = null;
		Session session = HibernateUtil.getSession();
		try {
			session.beginTransaction();
			
			Query query = session.createQuery("from Category where categoryId = ?");
			query.setParameter(0, id);
			lstCategory = (List<Category>) query.list();
			if(lstCategory.size()==1){
				category = lstCategory.get(0);
			}
			session.getTransaction().commit();
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return category;
		
	}
}
