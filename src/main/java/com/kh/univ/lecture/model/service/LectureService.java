package com.kh.univ.lecture.model.service;

import java.util.ArrayList;
import com.kh.univ.lecture.model.vo.Attendance;

public interface LectureService {
	
	
	/**
	 * 출석현황 페이지
	 * @param sNo
	 * @return
	 */
	ArrayList<Attendance> selectList(String sNo);

	
}
