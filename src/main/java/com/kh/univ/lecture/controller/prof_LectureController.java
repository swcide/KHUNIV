package com.kh.univ.lecture.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class prof_LectureController {
	
	@RequestMapping(value = "prof_lecturelist.do")
	public String prof_lecture(Model model) {
		return "prof_lecture/prof_lectureList";
	}
	
	@RequestMapping(value = "prof_lectureList2.do")
	public String prof_lecture2(Model model) {
		return "prof_lecture/prof_lectureList2";
	}
	
	@RequestMapping(value = "prof_lectureStudentList.do")
	public String prof_Studentlecture(Model model) {
		return "prof_lecture/prof_lectureStudentList";
	}
	
	@RequestMapping(value = "prof_lectureVideoWrite.do")
	public String prof_lectureVideoWrite(Model model) {
		return "prof_lecture/prof_lectureVideoWrite";
	}
	
	@RequestMapping(value = "prof_lectureVideoList.do")
	public String prof_lectureVideoList(Model model) {
		return "prof_lecture/prof_lectureVideoList";
	}
	
	@RequestMapping(value = "prof_Syllabus_LectureWrite.do")
	public String prof_Syllabus_LectureWrite(Model model) {
		return "prof_lecture/prof_Syllabus_LectureWrite";
	}
	
	@RequestMapping(value = "prof_learningprogress.do")
	public String prof_learningprogress(Model model) {
		return "prof_lecture/prof_learnig_progress";
	}
	
	@RequestMapping(value = "prof_lecturePlanList.do")
	public String prof_lecturePlanList(Model model) {
		return "prof_lecture/prof_lecturePlanList";
	}
	
}	


	

	
	
	

	
	

	
