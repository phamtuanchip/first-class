package training.lmquan.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

	private static class HibernateUtilSingleton {
		private static final SessionFactory SESSION_FACTORY = buildSessionFactory();
		@SuppressWarnings("deprecation")
		public static SessionFactory buildSessionFactory() {
			try {
				return new Configuration().configure().buildSessionFactory();
			} catch (final Throwable ex) {
				throw new ExceptionInInitializerError(ex);
			}
		}
	}

	public static final Session getSession(){
		Session sess = null;
		try {
			sess = HibernateUtilSingleton.SESSION_FACTORY.getCurrentSession();
		} catch (final org.hibernate.HibernateException e) {
			sess = HibernateUtilSingleton.SESSION_FACTORY.openSession();
		}
		return sess;
	}

}