package com.kh.univ.lecture.model.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import com.kh.univ.lecture.model.vo.ClassTest;
import com.kh.univ.lecture.model.vo.LectureClass;
import com.kh.univ.lecture.model.vo.LectureList;
import com.kh.univ.lecture.model.vo.LecturePlan;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.notice.model.vo.Notice;

/**
 * @author admin
 *
 */
public interface profLecService {

	/**
	 * 내 동영상 강의 목록 첫페이지 출력 값 호출
	 * @param pNo
	 * @return
	 */
	ArrayList<LectureClass> selectValue(String pNo);
	
	/**
	 * 내 강의 목록 첫페이지 출력 값 호출
	 * @param session 
	 * @return
	 */
	ArrayList<LectureList> selectList(HttpSession session);

	/**
	 * 강의 등록 페이지
	 * @param cNo
	 * @return
	 */
	ArrayList<LecturePlanWeek> lectureVideo(String classNo);

	/**
	 * 강의등록 로직
	 * @param lpw
	 * @return
	 */
	int lectureVideoInsert(LecturePlanWeek lpw);

	/**
	 * 강의 삭제
	 * @param lpw
	 * @return
	 */
	int lectureVideoDelete(LecturePlanWeek lpw);
	

	/**
	 * 강의 수정
	 * @param lpw
	 * @return
	 */
	int lectureVideoUpdate(LecturePlanWeek lpw);
	
	/**
	 * ㅅㅂ
	 * @param lpw
	 * @return
	 */
	LecturePlanWeek updateAfter(LecturePlanWeek lpw);
	ArrayList<LecturePlanWeek> selectSyllaOne2(String classNo);

	LecturePlan selectSyllaOne1(String classNo);
	
	LecturePlan selectSyllainsertform(String pNo);

	ArrayList<LectureList> SyllaPlanList(Professor pNo);

	


	ArrayList<ClassTest> classSelectList(Professor p, int currentPage);

	int getListCount();

	

}
