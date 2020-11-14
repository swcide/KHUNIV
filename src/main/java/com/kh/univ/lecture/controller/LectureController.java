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
	
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "speciallecture.do")
	public String speciallecture( Model model) {
		
		return "ad_lecture/ad_special_lecture";
	}
	
	
	
	
}
