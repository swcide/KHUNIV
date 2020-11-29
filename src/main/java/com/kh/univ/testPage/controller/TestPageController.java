package com.kh.univ.testPage.controller;

import java.text.DateFormat;
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
	

	
	@RequestMapping("tList.do")
		public ModelAndView testMain (ModelAndView mv,HttpSession session) {
		
		Calendar cal = Calendar.getInstance();
		
		Student s = (Student) session.getAttribute("loginUser");
		semesterPoint sp = new semesterPoint();
		
		
		ArrayList<TestGrade> tgList = new ArrayList<TestGrade>();
		
		String year = String.valueOf(cal.get(Calendar.YEAR));
		int month = cal.get(Calendar.MONTH+1);
	
		
		sp.setsNo(s.getsNo());
		sp.setSemYear(year);
	    
		if(month>9) {
			sp.setSemNo("2");
			ArrayList<TestList> tl =tService.getClassList(sp);
			
			for (int i = 0; i < tl.size(); i++) {
				
			 	
			 String tNo=tl.get(i).gettNo();
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
			mv.addObject("tg",tgList);
			mv.addObject("tl",tl);
		
	
		}else if (month<8) {
			sp.setSemNo("1");
			ArrayList<TestList> tl =tService.getClassList(sp);
			tl.get(1).getSemNo();
			mv.addObject("tl",tl);
		}
		mv.addObject("s",s);
		mv.setViewName("Test_Std/exam_Lecture_List");
		
		return mv;
	}
	
	
	
	@RequestMapping(value = "tGrade.do", method = RequestMethod.GET)
	public String TestGrade(Model model) {

		return "Test_Std/exam_Grade";

	
	}
	@RequestMapping("tMidterm.do")
	public ModelAndView TestMidterm(ModelAndView mv,HttpSession session) {
		Student s = (Student)session.getAttribute("loginUser");
		Calendar cal = Calendar.getInstance();
		
		
		String year = String.valueOf(cal.get(Calendar.YEAR));
		int month = cal.get(Calendar.MONTH+1);

		
		TestList tl = new TestList();
		
		tl.setsNo(s.getsNo());
		tl.setSemYear(year);
	
		if(month>9) {
			tl.setSemNo("2");
			ArrayList<TestList> tlList = tService.midList(tl);
			mv.addObject("tl",tlList);
			
		}else if (month<8) {
			tl.setSemNo("1");
			ArrayList<TestList> tlList = tService.midList(tl);
			mv.addObject("tl",tlList);
			
		}
	

		mv.setViewName("Test_Std/exam_midterm");
		return mv;

	
	}
	@ResponseBody
	@RequestMapping("tMidtermInsert.do")
	public String TestMidtermInsert(HttpSession session,TestList tl, String ansTryList) {

		ArrayList<Test> t = tService.selectTestList(tl);
		
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
		
//		시험 인설트 
		int result =tService.insertGrade(tg);
		String cNo = tl.getcNo();
		
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
		
		if(month >8) {
			sp.setSemNo("2");
			int result2 = tService.updateSp(sp);
		}else if(month<8) {
			sp.setsNo("1");
			int result2 = tService.updateSp(sp);
		}
		
		
		
		
		
		return "success";
	
	}
	
	@RequestMapping(value = "tFinal.do", method = RequestMethod.GET)
	public String TestFinal(Model model) {

		return "Test_Std/exam_Final";

	
	}
	@RequestMapping(value = "tQuiz.do", method = RequestMethod.GET)
	public String TestQuiz(Model model) {

		return "Test_Std/exam_quiz";

	
	}
	@RequestMapping(value = "tHomework.do", method = RequestMethod.GET)
	public String TestHomework(Model model) {
		
		return "Test_Std/exam_homework";
		
		
	}
	@RequestMapping(value = "tObjection.do", method = RequestMethod.GET)
	public String TestObjection(Model model) {
		
		return "Test_Std/exam_Objection";
		
		
	}
	@RequestMapping("tMidtermTest.do")
	public ModelAndView TestOpen(ModelAndView mv, TestList tl) {
		
		
		ArrayList<Test> tList = tService.selectTestList(tl);
		TestList t = tService.selectTest(tl);
		
		
		mv.addObject("tList",tList);
		mv.addObject("t",t);
		mv.setViewName("Test_Std/test");
		
		
		
		
		return mv;
	}


	
	
}
