package com.snc.struts.action;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.MappingDispatchAction;

import com.snc.entity.Email;
import com.snc.service.EmailService;


public class OriginationAction extends MappingDispatchAction {
	private EmailService emailService;
	
	public void setEmailService(EmailService emailService) {
		this.emailService = emailService;
	}
	public EmailService getEmailService() {
		return emailService;
	}
	//处理email页面请求
	public ActionForward email(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			List<Email> emailList = emailService.findAllEmail();
			request.setAttribute("emailList", emailList);
			return mapping.findForward("emailPage");
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return null;
	}
	
}







