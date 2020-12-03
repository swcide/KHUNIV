package com.kh.univ.lecture.model.service;

import java.util.ArrayList;

import com.kh.univ.lecture.model.vo.Assignment;
import com.kh.univ.lecture.model.vo.Attendance;
import com.kh.univ.lecture.model.vo.LectureList;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;
import com.kh.univ.lecture.model.vo.SemePoint;

public interface LectureService {
	
	
	/**
	 * 출석현황 페이지
	 * @param sNo
	 * @return
	 */
	ArrayList<Attendance> selectList(String sNo);

	/**
	 * 내 강의목록 페이지
	 * @param cNo
	 * @return
	 */
	ArrayList<LectureList> selectList1(String sNo);
	
	/**
	 * 과목별 동영상 강의목록 페이지
	 * @param cNo
	 * @return
	 */
	ArrayList<LecturePlanWeek> selectList2(String classNo);
	
	/**
	 * 과제제출인서트
	 * @param cNo
	 * @return
	 */
	ArrayList<LecturePlanWeek> assignment(String classNo);
	
	int assignmentInsert(LecturePlanWeek lpw);

	ArrayList<SemePoint> selectGradeList(SemePoint sp);

	


	
}
