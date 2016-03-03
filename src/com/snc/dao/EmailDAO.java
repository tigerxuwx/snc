package com.snc.dao;

import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.snc.entity.Email;


public class EmailDAO extends HibernateDaoSupport  {

  public EmailDAO() {
}

    
    public List<Email> findAllEmail(){
    	String hql = "from Email";
    	List<Email> list = this.getHibernateTemplate().find(hql);
    	if(!list.isEmpty()){
    		return list;
    	}
    	return null;
    }
}