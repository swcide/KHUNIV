package com.kh.univ.lecture.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.lecture.model.service.profLecService;
import com.kh.univ.lecture.model.vo.LectureClass;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;

@Controller
public class prof_LectureController {
	
	@Autowired
	profLecService plService;
	
	
	/**
	 * 내 강의 동영상 목록 클릭 시 DB 출력
	 * @param mv
	 * @param lc
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "prof_lecturelist.do")
	public ModelAndView prof_lecture(ModelAndView mv, LectureClass lc, HttpSession session) {
			ArrayList<LectureClass> aLc = plService.selectValue(lc);
			System.out.println(aLc);
			if(aLc != null) {
			mv.addObject("aLc",aLc);
			mv.setViewName("prof_lecture/prof_lectureList");
			}else {
				mv.addObject("msg","로그인 실패");
				mv.setViewName("common/errorPage");
			}
			return mv;
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
	public ModelAndView prof_lectureVideoWrite(ModelAndView mv, LecturePlanWeek lpw, HttpSession session) {
			ArrayList<LecturePlanWeek> aLpw = plService.lecVideoWrite(lpw);
			System.out.println(aLpw);
			if(aLpw != null) {
				mv.addObject("aLpw",aLpw);
				mv.setViewName("prof_lecture/prof_lectureVideoWrite");
			}else {
				mv.addObject("msg","로그인 실패");
				mv.setViewName("common/errorPage");
			}
		return mv;
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


	

	
	
	

	
	

	
