package com.snc.service;

import java.util.List;

import com.snc.entity.Email;



public interface EmailService {
	public List<Email> findAllEmail() throws Exception;
}
