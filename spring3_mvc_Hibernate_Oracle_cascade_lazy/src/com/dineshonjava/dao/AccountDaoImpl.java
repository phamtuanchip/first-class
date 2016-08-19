package com.dineshonjava.dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dineshonjava.model.Account;

/**
 * @author Dinesh Rajput
 *
 */
@Repository("accountdao") //khai bao la mot lop Dao, lớp dao chỉ thao tác trực tiếp với database, chạy khi servive gọi.
public class AccountDaoImpl implements AccountDao {

//	@Autowired
	private SessionFactory sessionFactory; 
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void addAccount(Account account) {
		 org.hibernate.Transaction tx=sessionFactory.getCurrentSession().beginTransaction();
		sessionFactory.getCurrentSession().saveOrUpdate(account); 		
		tx.commit();
		//khi thêm một account mới thì sessionFactory.getCurrentSession().saveOrUpdate() sẻ thực thi đối tượng mới đc thêm một ID
	}

	@SuppressWarnings("unchecked")
	public List<Account> listAccount() {
		return (List<Account>) sessionFactory.getCurrentSession().createCriteria(Account.class).list();
		
	}
	@Transactional
	public Account getAccount(int id) {
		return (Account) sessionFactory.getCurrentSession().get(Account.class, id);
		//có phiên làm việc hiện tại, dùng get để lấy dữ liệu từ cơ sở dữ liệu
				//get () trả về đối tượng bằng cách lấy nó từ cơ sở dữ liệu hoặc từ bộ nhớ cache ngủ đông
	}

	public void deleteAccount(Account account) {
		sessionFactory.getCurrentSession().createQuery("DELETE FROM Account WHERE id = "+account.getId()).executeUpdate();
	}
	@SuppressWarnings("unchecked")
	public List<Account> searchUser(String text, Integer type){
		String hql;
		Query query;
		List<Account> listAccount = null;
		switch(type){
		case 1:
			hql = "from Account where users like :users";
			query = sessionFactory.getCurrentSession().createQuery(hql);
			query.setParameter("users", "%" + text + "%");
			listAccount= query.list();
			break;
		case 2:
			hql = "from Account where name like :name";
			query = sessionFactory.getCurrentSession().createQuery(hql);
			query.setParameter("name", "%" + text + "%");
			listAccount = query.list();
			break;
		case 3:
			hql = "from Account where age like :age";
			query = sessionFactory.getCurrentSession().createQuery(hql);
			query.setParameter("age", "%" + text + "%");
			listAccount = query.list();
			break;
		case 4:
			hql = "from Account where identityCard like :identityCard";
			query = sessionFactory.getCurrentSession().createQuery(hql);
			query.setParameter("identityCard", "%" + text + "%");
			listAccount = query.list();
			break;
		case 5:
			hql = "from Account where emails like :emails";
			query = sessionFactory.getCurrentSession().createQuery(hql);
			query.setParameter("emails", "%" + text + "%");
			listAccount = query.list();
			break;
		case 6:
			hql = "from Account where phone like :phone";
			query = sessionFactory.getCurrentSession().createQuery(hql);
			query.setParameter("phone", "%" + text + "%");
			listAccount = query.list();
			break;
		}
		
		return listAccount;
	}
}
