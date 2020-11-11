package com.kh.univ.lecture.model.service;

import java.util.ArrayList;

import com.kh.univ.lecture.model.vo.LectureClass;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;

public interface profLecService {

	/**
	 * 내 동영상 강의 목록 첫페이지 출력 값 호출
	 * @param lc
	 * @return
	 */
	ArrayList<LectureClass> selectValue(LectureClass lc);

	/**
	 * 강의 등록 페이지
	 * @param lpw
	 * @return
	 */
	ArrayList<LecturePlanWeek> lecVideoWrite(LecturePlanWeek lpw);
	


	

}
