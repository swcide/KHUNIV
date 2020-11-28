package com.kh.univ.testPage.controller;

import java.text.DateFormat;
import java.util.Date;
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
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.member.model.vo.Student;
import com.kh.univ.testPage.model.service.TestPageService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class TestPageController {
	
	@Autowired
	private TestPageService tService;

	
	@RequestMapping("tMain.do")
		public ModelAndView testMain (ModelAndView mv,HttpSession session,@RequestParam(value="currentPage",
				   required = false,defaultValue = "1") int currentPage) {
		
		Student s = (Student) session.getAttribute("loginUser");
		
		System.out.println(s);
		
		
		
		
		mv.addObject("s",s);
		mv.setViewName("Test_Std/exam_Lecture_List");
		
		return mv;
	}
	
	@RequestMapping(value = "tList.do", method = RequestMethod.GET)
	public String TestList(Model model) {

		
		return "Test_Std/exam_Lecture_List";
	}
	
	
	@RequestMapping(value = "tGrade.do", method = RequestMethod.GET)
	public String TestGrade(Model model) {

		return "Test_Std/exam_Grade";

	
	}
	@RequestMapping(value = "tMidterm.do", method = RequestMethod.GET)
	public String TestMidterm(Model model) {

		return "Test_Std/exam_midterm";

	
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
	@RequestMapping(value = "tMidtermTest.do", method = RequestMethod.GET)
	public String TestOpen(Model model) {
		
		return "Test_Std/test";
		
		
	}


	
	
}
