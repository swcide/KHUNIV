package com.kh.univ.registration.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.member.model.vo.Student;
import com.kh.univ.notice.model.vo.Notice;
import com.kh.univ.registration.model.service.RegistrationService;
import com.kh.univ.registration.model.vo.Registration;
import com.kh.univ.testPage.model.vo.Grade;

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
	public ModelAndView classList (ModelAndView mv,HttpSession session ){
		
		
		Student s = (Student) session.getAttribute("loginUser");

		int dNo = Integer.parseInt(s.getdNo());
		String strDno =Integer.toString(dNo);
		s.setdNo(strDno);
		
		
		
		
		ArrayList<Registration> beforeR = new ArrayList<Registration>();
		
		
		
		ArrayList<Registration> list = rService.rSelectList(s);
		
		ArrayList<Registration> list2 = rService.myRSelectList(s);
			
		System.out.println("===============list==============");
		System.out.println(list);
		System.out.println("=============list2--================");
		System.out.println(list2);
			
		System.out.println(list.size());
		System.out.println(list2.size());
		int count = 0;
			for(int i=0; i<list.size();i++) { // 18
				for(int j=0; j<list2.size();j++) { //3
			
					if(!list.get(i).getcNo().equals(list2.get(j).getcNo()) ){
						System.out.println("값 다를 때");
						
						beforeR.add(list.get(i));	
					}
				}
				
			}
			ArrayList<Registration> r = new ArrayList<Registration>();
		
			System.out.println(count);
			System.out.println(beforeR);
			
			for (int i = 0; i < beforeR.size(); i++) {
				if(!r.contains(beforeR.get(i)))
					r.add(beforeR.get(i));
				
			}  
		
		mv.addObject("r",r).setViewName("ad_register/ad_AuditLecture_Application");
		
			
		return mv;
			
			
			
		}
	
	@ResponseBody
	@RequestMapping("rInsert.do")
	public String RegistrationInsert (ModelAndView mv,HttpSession session,Grade g){
		
		
//		System.out.println(r);
		
		String [] cNo =g.getcNo().split(",");
		String [] sNo =g.getsNo().split(",");
		String [] pNo =g.getpNo().split(",");
		
		ArrayList<Grade> gList = new ArrayList<Grade>();
		
		
		for (int i = 0; i < cNo.length ; i++) {
			
			Grade g2 = new Grade();
			g2.setcNo(cNo[i]);
			
			System.out.println(g2.getcNo());
			g2.setsNo(sNo[i]);
			g2.setpNo(pNo[i]);
			gList.add(g2);
			
//				
			System.out.println(i+"번쨰");
			System.out.println(gList.toString());
			
		}
		System.out.println(gList.toString());
		int result = rService.insertRegistration(gList);
//		
		System.out.println(result);
		System.out.println("===============");
		System.out.println(gList);
		System.out.println("1===============1");

		System.out.println(gList);
//		
		
//		HashMap<"", V>
		
//		
		return "success";
	}
	
	
	

}
