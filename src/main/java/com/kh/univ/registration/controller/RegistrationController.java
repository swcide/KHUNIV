package com.kh.univ.registration.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.member.model.vo.Student;
import com.kh.univ.notice.model.vo.Notice;
import com.kh.univ.registration.model.service.RegistrationService;
import com.kh.univ.registration.model.vo.Registration;

@Controller
public class RegistrationController {
	
	@Autowired
	private RegistrationService rService;
	
	
	/**
	 * 수강신청 강의 목록
	 * @param mv
	 * @param session
	 * @return
	 */
	@RequestMapping("ad_lect_appl.do")
	public ModelAndView classList (ModelAndView mv,HttpSession session, Student s ){
		
		
		
		s.setdNo("1");
		
		System.out.println(s);
		
		int nType=1;
		
		int listCount = rService.getListCount(nType);
		
		System.out.println(listCount);
	
		
		ArrayList<Registration> r = rService.rSelectList(s);
		System.out.println(r);
		
		
		mv.addObject("r",r).setViewName("ad_register/ad_AuditLecture_Application");
		
			
		return mv;
			
			
			
		}
	
	

}
