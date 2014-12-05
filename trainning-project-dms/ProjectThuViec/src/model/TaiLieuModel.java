package model;

import java.text.SimpleDateFormat;
import java.util.*;

import org.hibernate.*;
import org.hibernate.criterion.Restrictions;

import entities.*;

public class TaiLieuModel extends AbstractModel<Tailieucongty> {

	public TaiLieuModel() {
		super(Tailieucongty.class);
	}

	public List<Tailieucongty> search(String tentl, String keyword,
			String madm, String mota, String date1, String date2) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		DanhMucModel dmm = new DanhMucModel();
		try {
			tx = session.beginTransaction();
			Criteria cr = session.createCriteria(Tailieucongty.class);
			if (tentl != "") {
				cr.add(Restrictions.like("tentl", "%"+tentl+"%"));
			}
			if (keyword != "") {
				cr.add(Restrictions.eq("keyword", keyword));
			}
			if (madm != "") {
				cr.add(Restrictions.eq("danhmuc", dmm.find(Integer.parseInt(madm))));
			}
			if (mota != "") {
				cr.add(Restrictions.like("mota","%"+mota+"%"));
			}
			if ((date1 != "") && date2 != "" ) {
				String a = date1;
				String b = date2;
				SimpleDateFormat sdf= new SimpleDateFormat("dd-MM-yyyy");
				cr.add(Restrictions.between("ngayupload",sdf.parse(a),sdf.parse(b)));
			}
			
			List<Tailieucongty> dstl = cr.list();
			tx.commit();
			return dstl;

		} catch (Exception e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}
}
