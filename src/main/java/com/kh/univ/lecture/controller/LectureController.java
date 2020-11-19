package com.kh.univ.lecture.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.reflection.SystemMetaObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.common.PageInfo;
import com.kh.univ.common.Pagination;
import com.kh.univ.lecture.model.service.LectureService;
import com.kh.univ.lecture.model.service.profLecService;
import com.kh.univ.lecture.model.vo.Attendance;
import com.kh.univ.lecture.model.vo.LectureClass;
import com.kh.univ.lecture.model.vo.LectureList;
import com.kh.univ.lecture.model.vo.LecturePlan;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;
import com.kh.univ.member.model.vo.Student;
import com.kh.univ.univlife.board.human.model.vo.HumanBoard;

@Controller //이거 안쓰면 에러남 
public class LectureController {
	
	@Autowired
	LectureService lService;
	
	@RequestMapping(value = "lecturelist.do")
	public String signup( Model model) {
		
		return "ad_lecture/ad_lectureList";
	}
	
	/**
	 * 1.나의출석현황
	 * 
	 * @param mv
	 * @param session
	 * @param al
	 * @return
	 */
	@RequestMapping(value = "attendance.do")
	public ModelAndView attendance(ModelAndView mv,HttpSession session)
	{	
		Student student = (Student)session.getAttribute("loginUser"); // 로긴세션에서 뽑은 정보를 학생객체에 넣기
		String sNo = student.getsNo();
		System.out.println("학생번호 컨트롤러"+sNo);
		ArrayList<Attendance> al = lService.selectList(sNo);
		System.out.println(al);

//		System.out.print("attendanceRate: " + attendanceRate);

		
		mv.addObject("al", al);
		mv.setViewName("ad_lecture/ad_attendance");
		return mv;
	}
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "speciallecture.do")
	public String speciallecture( Model model) {
		
		return "ad_lecture/ad_special_lecture";
	}
	
	
}