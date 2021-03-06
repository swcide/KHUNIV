package com.kh.univ.member.controller;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import com.kh.univ.member.model.vo.Email;

@Controller
public class EmailSender  {

	
	@Autowired
    protected JavaMailSender  mailSender;
	
    public void SendEmail(Email email) throws Exception {
         
    		System.out.println("sender------------");
    		System.out.println(email.getSubject());
    		System.out.println(email.getContent());
    		System.out.println(email.getReceiver());
    		
       MimeMessage msg = mailSender.createMimeMessage();
        try {
            msg.setSubject(email.getSubject());
            msg.setText(email.getContent());
            msg.setRecipients(MimeMessage.RecipientType.TO , InternetAddress.parse(email.getReceiver()));
            mailSender.send(msg);
        }catch(Exception e) {
            System.out.println("MessagingException");
            e.printStackTrace();
        }
    }

}
