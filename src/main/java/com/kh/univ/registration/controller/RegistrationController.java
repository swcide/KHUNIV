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
		ArrayList<Registration> list = rService.rSelectList(s);
		

		
		mv.addObject("r",list);

		mv.setViewName("ad_register/ad_AuditLecture_Application");
		
			
		return mv;
			
		}
	
	/**
	 * 
	 * 수강신청 insert
	 * @param mv
	 * @param session
	 * @param sp
	 * @return
	 */
	@ResponseBody
	@RequestMapping("rInsert.do")
	public String RegistrationInsert (ModelAndView mv,HttpSession session,semesterPoint sp){
		
		String [] cNo =sp.getcNo().split(",");
		String [] sNo =sp.getsNo().split(",");
		String [] pNo =sp.getpNo().split(",");

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
	/**
	 * 수강신청 성적 insert
	 * @param mv
	 * @param session
	 * @param sp
	 * @return
	 */
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
