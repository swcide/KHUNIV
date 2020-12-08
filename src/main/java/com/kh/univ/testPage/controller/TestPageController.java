package com.kh.univ.testPage.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.ad_Register.model.vo.semesterPoint;
import com.kh.univ.lecture.model.vo.ClassTest;
import com.kh.univ.lecture.model.vo.LecturePlan;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;
import com.kh.univ.member.model.vo.Student;
import com.kh.univ.registration.model.service.RegistrationService;
import com.kh.univ.registration.model.vo.Registration;
import com.kh.univ.testPage.model.service.TestPageService;
import com.kh.univ.testPage.model.vo.TestList;
import com.kh.univ.testPage.model.vo.Test;
import com.kh.univ.testPage.model.vo.TestGrade;

/**
 * Handles requests for the application home page.
 */
@Controller
public class TestPageController {
	
	@Autowired
	private TestPageService tService;
	

	
	/**
	 * 
	 * 강의 리스트
	 * @param mv
	 * @param session
	 * @return
	 */
	@RequestMapping("tList.do")
		public ModelAndView testMain (ModelAndView mv,HttpSession session) {
		
		Calendar cal = Calendar.getInstance();
		
		Student s = (Student) session.getAttribute("loginUser");
		semesterPoint sp = new semesterPoint();
		
		// 리스트 뽑을 arrayList 선언
		ArrayList<TestGrade> tgList = new ArrayList<TestGrade>();
		
		// 현재 년도, 월
		String year = String.valueOf(cal.get(Calendar.YEAR));
		int month = cal.get(Calendar.MONTH+1);
	
		
		sp.setsNo(s.getsNo());
		sp.setSemYear(year);
	    
		if(month>9) {
			sp.setSemNo("2");
			// 내 시험 리스트 불러오기
			ArrayList<TestList> tl =tService.getClassList(sp);
			
			 for (int i = 0; i < tl.size(); i++) {
				
			 	
				 String tNo=tl.get(i).gettNo();
				 String sNo= s.getsNo();
				 
				 TestGrade tg = new TestGrade();
				 
				 tg.setsNo(sNo);
				 tg.settNo(tNo);
				 
				 // 내가 본 시험 불러오기
				 ArrayList<TestGrade> add = tService.getMyTest(tg) ;
					
				 for (int j = 0; j < add.size(); j++) {
					 if( add !=null) {
						 tgList.add(add.get(j));
					 }
				 }
			}
			mv.addObject("tg",tgList);
			mv.addObject("tl",tl);
		}else if (month<8) {
			sp.setSemNo("1");
			ArrayList<TestList> tl =tService.getClassList(sp);
			mv.addObject("tl",tl);
		}
		mv.addObject("s",s);
		mv.setViewName("Test_Std/exam_Lecture_List");
		
		return mv;
	}
	
	
	

	/**
	 * 중간고사 리스트
	 * @param mv
	 * @param session
	 * @return
	 */
	@RequestMapping("tMidterm.do")
	public ModelAndView TestMidterm(ModelAndView mv,HttpSession session) {
		Student s = (Student)session.getAttribute("loginUser");
		Calendar cal = Calendar.getInstance();
		
		
		String year = String.valueOf(cal.get(Calendar.YEAR));
		int month = cal.get(Calendar.MONTH+1);
		ArrayList<TestGrade> tgList = new ArrayList<TestGrade>();
		
		TestList tl = new TestList();
		
		tl.setsNo(s.getsNo());
		tl.setSemYear(year);
	
		if(month>9) {
			tl.setSemNo("2");
			ArrayList<TestList> tlList = tService.midList(tl);
				 for (int i = 0; i < tlList.size(); i++) {
					 String tNo=tlList.get(i).gettNo();
					 String sNo= s.getsNo();
					 TestGrade tg = new TestGrade();
					 
					 tg.setsNo(sNo);
					 tg.settNo(tNo);
					 
					 ArrayList<TestGrade> add = tService.getMyTest(tg) ;
						
					 for (int j = 0; j < add.size(); j++) {
						 if( add !=null) {
							 tgList.add(add.get(j));
						 }
					 }
				 }
				 
			mv.addObject("tl",tlList);
			mv.addObject("tg",tgList);
			mv.setViewName("Test_Std/exam_midterm");
		}
	
		return mv;
	}
	
	@RequestMapping("tFinal.do")
	public ModelAndView testFinal(ModelAndView mv,HttpSession session) {
//		Student s = (Student)session.getAttribute("loginUser");
//		Calendar cal = Calendar.getInstance();
//		
//		
//		String year = String.valueOf(cal.get(Calendar.YEAR));
//		int month = cal.get(Calendar.MONTH+1);
//		ArrayList<TestGrade> tgList = new ArrayList<TestGrade>();
//		
//		TestList tl = new TestList();
//		
//		tl.setsNo(s.getsNo());
//		tl.setSemYear(year);
//	
//		if(month<8) {
//			tl.setSemNo("1");
//			ArrayList<TestList> tlList = tService.midList(tl);
//				
//				
//				
//				 for (int i = 0; i < tlList.size(); i++) {
//					
//				 	
//					 String tNo=tlList.get(i).gettNo();
//					 String sNo= s.getsNo();
//					 TestGrade tg = new TestGrade();
//					 
//					 tg.setsNo(sNo);
//					 tg.settNo(tNo);
//					 
//					 ArrayList<TestGrade> add = tService.getMyTest(tg) ;
//						
//					 for (int j = 0; j < add.size(); j++) {
//						 if( add !=null) {
//							 tgList.add(add.get(j));
//						 }
//					 }
//				 }
//				 
//				 
//			mv.addObject("tl",tlList);
//			mv.addObject("tg",tgList);
			mv.setViewName("Test_Std/exam_Final");
			
//		}
	

	
		return mv;

	
	}
	
	
	
	
	
	@ResponseBody
	@RequestMapping("tInsert.do")
	public String TestMidtermInsert(HttpSession session,TestList tl, String ansTryList) {

		ArrayList<Test> t = tService.selectTestList(tl);
		System.out.println("===tl===");
		System.out.println(tl);
		int grade=0;
		
		String[] select= ansTryList.split(",");
		
		for (int i = 0; i < t.size(); i++) {
			
			int answer= t.get(i).getqAnswer();
			int qWorth= t.get(i).getqWorth();
			
			System.out.println(qWorth);
			
			if(Integer.parseInt(select[i])== answer) {
				grade += qWorth;
			}
		}
		TestGrade tg = new TestGrade();
		tg.setPoint(grade);
		tg.setcNo(tl.getcNo());
		tg.setpNo(tl.getpNo());
		tg.setsNo(tl.getsNo());
		tg.settNo(tl.gettNo());
		tg.setrTime(tl.getrTime());
		System.out.println("===tg===");
		System.out.println(tg);
//		시험 인설트 
		int result =tService.insertGrade(tg);
		String cNo = tl.getcNo();
		System.out.println("===result===");
		System.out.println(result);
//		배점 가져오기
		LecturePlan lp = tService.lpOne(cNo);
		int examPoints = lp.getExamPoints()/2;
		int mTest  = (int) (grade*(examPoints*0.01));
		
//		현재 시험 가져오기
		semesterPoint sp = new semesterPoint();
		Calendar cal = Calendar.getInstance();
		String year = String.valueOf(cal.get(Calendar.YEAR));
		int month = cal.get(Calendar.MONTH+1);
		
		sp.setmTest(mTest);
		sp.setcNo(tl.getcNo());
		sp.setpNo(tl.getpNo());
		sp.setsNo(tl.getsNo());
		sp.setSemYear(year);
		System.out.println("===sp===");
		System.out.println(sp);
		if(month >8) {
			sp.setSemNo("2");
			int result2 = tService.updateSp(sp);
			
			System.out.println(result2);
		}else if(month<8) {
			sp.setsNo("1");
			int result2 = tService.updateSp(sp);
		}
		return "success";
	}

	@RequestMapping("tTest.do")
	public ModelAndView TestOpen(ModelAndView mv, TestList tl) {
		ArrayList<Test> tList = tService.selectTestList(tl);
		TestList t = tService.selectTest(tl);
		mv.addObject("tTime",tl.getTestTime());
		mv.addObject("openDate",tl.getOpenDate());
		mv.addObject("tList",tList);
		mv.addObject("t",t);
		mv.setViewName("Test_Std/test");
		
		return mv;
	}


	
	
}
