package com.kh.univ.lecture.model.service;

import java.util.ArrayList;

import com.kh.univ.lecture.model.vo.LectureClass;

public interface profLecService {

	/**
	 * 내 동영상 강의 목록 첫페이지 출력 값 호출
	 * @param lc
	 * @return
	 */
	ArrayList<LectureClass> selectValue(LectureClass lc);
	


	

}
