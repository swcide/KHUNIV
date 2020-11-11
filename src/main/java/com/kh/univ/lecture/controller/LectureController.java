package com.kh.univ.lecture.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class LectureController {
	
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
	@RequestMapping(value = "learningprogress.do", method = RequestMethod.GET)
	public String learningprogress( Model model) {
		
		return "ad_lecture/ad_learnig_progress";
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "speciallecture.do", method = RequestMethod.GET)
	public String speciallecture( Model model) {
		
		return "ad_lecture/ad_special_lecture";
	}

}
