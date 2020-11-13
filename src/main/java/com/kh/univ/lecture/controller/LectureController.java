package com.kh.univ.lecture.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.lecture.model.service.profLecService;
import com.kh.univ.lecture.model.vo.LectureClass;
import com.kh.univ.lecture.model.vo.LectureList;
import com.kh.univ.lecture.model.vo.LecturePlan;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;

@Controller //이거 안쓰면 에러남 
public class LectureController {
	
	@Autowired
	profLecService plService;
	
	@RequestMapping(value = "lecturelist.do")
	public String signup( Model model) {
		
		return "ad_lecture/ad_lectureList";
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "attendance.do")
	public String attendance( Model model) {
		
		return "ad_lecture/ad_attendance";
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "grade.do")
	public String grade(Model model) {
		
		return "ad_lecture/ad_grade";
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "learningprogress.do")
	public ModelAndView learningprogress(ModelAndView mv, LectureClass lc, HttpSession session) {
			ArrayList<LectureClass> aLc = plService.selectValue(lc);
			System.out.println(aLc);
			if(aLc != null) {
			mv.addObject("aLc",aLc);
			mv.setViewName("ad_lecture/ad_learning_progress");
			}else {
				mv.addObject("msg","로그인 실패");
				mv.setViewName("common/errorPage");
			}
			return mv;
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "speciallecture.do")
	public String speciallecture( Model model) {
		
		return "ad_lecture/ad_special_lecture";
	}
	
	
	@RequestMapping(value = "ad_lect_list.do")
	public ModelAndView ad_Lecture_List(ModelAndView mv, HttpSession session ) {
			ArrayList<LectureList> aLc = plService.selectList(session);
			System.out.println(aLc);
			if(aLc != null) {
			mv.addObject("aLc",aLc);
			mv.setViewName("ad_register/ad_Lecture_List");
			}else {
				mv.addObject("msg","로그인 실패");
				mv.setViewName("common/errorPage");
			}
			return mv;
	}
	
	
	@RequestMapping(value = "ad_syllabus.do")
	public ModelAndView ad_syllabus(ModelAndView mv, @RequestParam(value="classNo")String classNo) {
			ArrayList <LecturePlanWeek> lpw = plService.selectSyllaOne2(classNo);
			LecturePlan lp = plService.selectSyllaOne1(classNo);
			if(lpw != null && lp !=null) {
			mv.addObject("lp",lp);
			mv.addObject("lpw",lpw);
			mv.setViewName("ad_register/ad_Syllabus_Lecture");
			}else {
				mv.addObject("msg","로그인 실패");
				mv.setViewName("common/errorPage");
			}
			return mv;
	}
}
