package training.lmquan.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import training.lmquan.model.Category;
import training.lmquan.model.Image;
import training.lmquan.util.HibernateUtil;

public class ImageDAO {
	
	@SuppressWarnings("unchecked")
	public static List<Image> listImage() {
		List<Image> lstImage = null;
		Session session = HibernateUtil.getSession();
		try {
			session.beginTransaction();
			lstImage = (List<Image>) session.createQuery("from Image").list();
			session.getTransaction().commit();
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return lstImage;
	}

	@SuppressWarnings("unchecked")
	public List<Image> listImageByCategoryId(int id) {
		List<Image> lstImage = null;
		Session session = HibernateUtil.getSession();
		try {
			session.beginTransaction();
			Query query = session.createQuery("from Image where CategoryId = ?");
			query.setParameter(0, id);
			lstImage = (List<Image>) query.list();
			session.getTransaction().commit();
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return lstImage;
	}
	
	@SuppressWarnings("unchecked")
	public Image getImageById(int id) {
		Image image = null;
		List<Image> lstimage = null;
		Session session = HibernateUtil.getSession();
		try {
			session.beginTransaction();
			Query query = session.createQuery("from Image where ImageId = ?");
			query.setParameter(0, id);
			lstimage = (List<Image>) query.list();
			if(lstimage.size()==1){
				image = lstimage.get(0);
			}
			session.getTransaction().commit();
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return image;
	}
	
	public void insertImage(Image image) {
		Session session = HibernateUtil.getSession();
		try {
			session.beginTransaction();
			session.save(image);
			session.getTransaction().commit();
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
		}
	}
	
	public void updateImageInfo(Image image) {
		Session session = HibernateUtil.getSession();
		try {
			session.beginTransaction();
			session.update(image);
			session.getTransaction().commit();
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
		}
	}
	public void deleteImage(Image image) {
		Session session = HibernateUtil.getSession();
		try {
			session.beginTransaction();
			session.delete(image);
			session.getTransaction().commit();
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
		}
	}
	
	@SuppressWarnings("unchecked")
	public static List<Image> searchImage(String imgName,String uplder,String descr,int categoryId, int imageType) {
		List<Image> lstImage = null;
		CategoryDAO categoryDAO = new CategoryDAO();
		Category category = categoryDAO.getCategoryById(categoryId);
		Session session = HibernateUtil.getSession();
		try {
			session.beginTransaction();
			Criteria cr = session.createCriteria(Image.class);
			if(imgName!= null && !("").equals(imgName)){
				cr.add(Restrictions.like("imageName", "%"+imgName+"%"));
			}
			if(uplder!= null && !("").equals(uplder)){
				cr.add(Restrictions.like("uploader", "%"+uplder+"%"));
			}
			if(descr!= null && !("").equals(descr)){
				cr.add(Restrictions.like("description", "%"+descr+"%"));
			}
			if(categoryId!=-1){
				cr.add(Restrictions.eq("category", category));
			}
			if(imageType!=-1){
				if (imageType==1) {
					cr.add(Restrictions.eq("imageType", "jpeg"));
				}
				if (imageType==2) {
					cr.add(Restrictions.eq("imageType", "png"));
				}
				if (imageType==3) {
					cr.add(Restrictions.eq("imageType", "gif"));
				}
				if (imageType==4) {
					cr.add(Restrictions.eq("imageType", "pjpeg"));
				}
			}
			lstImage = (List<Image>) cr.list();
			session.getTransaction().commit();
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		
		return lstImage;
	}
	
	
}
