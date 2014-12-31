package model;

import entities.Danhmuc;
import entities.Tailieucongty;

public class DanhMucModel extends AbstractModel<Danhmuc> {
	public DanhMucModel(){
		super(Danhmuc.class);
	}
	
	public void deletedanhmuc(Danhmuc dm) {
        try {
            if (!sessionFactory.getCurrentSession().getTransaction().isActive())
                sessionFactory.getCurrentSession().getTransaction().begin();
            TaiLieuModel tlm = new TaiLieuModel();
            for(Tailieucongty tl : dm.getTailieucongties()){
            	 sessionFactory.getCurrentSession().delete(tl);
            }
            sessionFactory.getCurrentSession().delete(dm);
            sessionFactory.getCurrentSession().getTransaction().commit();
        } catch (RuntimeException re) {
            sessionFactory.getCurrentSession().getTransaction().rollback();
            throw re;
        }
    }
}
