package com.kh.univ.registration.controller;


import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.ad_Register.model.vo.semesterPoint;
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
		for (int i = 0; i < list.size(); i++) {
			
			beforeR.add(list.get(i));	

		}	
		
		for(int i=0; i<list.size();i++) { // 3
							
				for (int j = 0; j< list2.size(); j++) 	 { //18
					if(list2.get(j).getcNo().equals(list.get(i).getcNo()) ){
						System.out.println("여기몇번들어옴?" +i);
						System.out.println("여기몇번들어옴?" +j+"jjjjj");
						System.out.println(list.get(i));
						
						beforeR.remove(i);
					}
				}
				
			}
		
			System.out.println(beforeR);
			
		
		
		mv.addObject("r",beforeR).setViewName("ad_register/ad_AuditLecture_Application");
		
			
		return mv;
			
			
			
		}
	
	@ResponseBody
	@RequestMapping("rInsert.do")
	public String RegistrationInsert (ModelAndView mv,HttpSession session,semesterPoint sp){
		
		
//		System.out.println(r);
		
		String [] cNo =sp.getcNo().split(",");
		String [] sNo =sp.getsNo().split(",");
		String [] pNo =sp.getpNo().split(",");
		System.out.println(sp.getcNo());

		Calendar cal = Calendar.getInstance();
		String year = String.valueOf(cal.get(Calendar.YEAR));
		String month = String.valueOf(cal.get(Calendar.MONTH+1));
		ArrayList<semesterPoint> spList = new ArrayList<semesterPoint>();
		
		
		for (int i = 0; i < cNo.length ; i++) {
			
			semesterPoint sp2 = new semesterPoint();
			sp2.setcNo(cNo[i]);
			
			System.out.println(sp2.getcNo());
			sp2.setsNo(sNo[i]);
			sp2.setpNo(pNo[i]);
			sp2.setSemYear(year);
			if(Integer.parseInt(month)>9) {
				sp2.setSemNo("2");
			}else if (Integer.parseInt(month)<8) {
				sp2.setSemNo("1");
			}

			
			spList.add(sp2);
			
			
		
			
			
		}
		
		
		
		
		int result = rService.insertRegistration(spList);

		return "success";
	}
	
	@RequestMapping("ad_appl_stat.do")
	public ModelAndView GradeList (ModelAndView mv,HttpSession session,semesterPoint sp){
		Student s = (Student) session.getAttribute("loginUser"); 
		
		sp.setsNo(s.getsNo());
		Calendar cal = Calendar.getInstance();
		String year = String.valueOf(cal.get(Calendar.YEAR));
		int month = cal.get(Calendar.MONTH+1);
		sp.setSemYear(year);
		
		if(month>9) {
			sp.setSemNo("2");
			ArrayList<Registration> r = rService.gradeList(sp);
			mv.addObject("r",r);
		}else if (month<8) {
			sp.setSemNo("1");
			ArrayList<Registration> r = rService.gradeList(sp);
			r.get(1).getSemNo();
			mv.addObject("r",r);
		}

		
		
		
		mv.setViewName("ad_register/ad_Application_Status");
		
		
		return mv;
	}
	
	

}
