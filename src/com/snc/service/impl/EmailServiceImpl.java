package com.snc.service.impl;

import java.util.List;

import com.snc.dao.EmailDAO;
import com.snc.entity.Email;
import com.snc.service.EmailService;

public class EmailServiceImpl implements EmailService {
	private EmailDAO emailDAO;
	@Override
	public List<Email> findAllEmail() throws Exception {
		return emailDAO.findAllEmail();
	}

	public EmailDAO getEmailDAO() {
		return emailDAO;
	}

	public void setEmailDAO(EmailDAO emailDAO) {
		this.emailDAO = emailDAO;
	}

	

}
