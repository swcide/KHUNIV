package com.kh.univ.lecture.model.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import com.kh.univ.lecture.model.vo.LectureClass;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;

public interface profLecService {

	/**
	 * 내 동영상 강의 목록 첫페이지 출력 값 호출
	 * @param pNo
	 * @return
	 */
	ArrayList<LectureClass> selectValue(String pNo);

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
	


	

}
