package com.kh.univ.lecture.model.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import com.kh.univ.lecture.model.vo.LectureClass;
import com.kh.univ.lecture.model.vo.LectureList;
import com.kh.univ.lecture.model.vo.LecturePlan;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;

public interface profLecService {

	/**
	 * 내 동영상 강의 목록 첫페이지 출력 값 호출
	 * @param lc
	 * @return
	 */
	ArrayList<LectureClass> selectValue(LectureClass lc);
	
	/**
	 * 내 강의 목록 첫페이지 출력 값 호출
	 * @param session 
	 * @return
	 */
	ArrayList<LectureList> selectList(HttpSession session);

	/**
	 * 강의 등록 페이지
	 * @param lpw
	 * @return
	 */
	ArrayList<LecturePlanWeek> lecVideoWrite(LecturePlanWeek lpw);

	ArrayList<LecturePlanWeek> selectSyllaOne2(String classNo);

	LecturePlan selectSyllaOne1(String classNo);


}
