package com.kh.univ.ad_Register.model.service;

import java.util.ArrayList;

import com.kh.univ.ad_Register.model.vo.Absence;
import com.kh.univ.common.PageInfo;
import com.kh.univ.lecture.model.vo.LectureList;
import com.kh.univ.lecture.model.vo.LecturePlan;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;

public interface ad_RegisterService {

	/**
	 * 휴학확인
	 * @param sNo
	 * @return
	 */
	Absence absenceCheck(String sNo);

	/**
	 * 휴학신청
	 * @param ab
	 * @return
	 */
	int leave_absence_apply(Absence ab);

	int getListCount(String dNo);


	ArrayList<LectureList> selectList1(String dNo);

	ArrayList<LectureList> selectList2(String dNo);

	LecturePlan selectSyllaOne1(LectureList ll);

	ArrayList<LecturePlanWeek> selectSyllaOne2(LectureList ll);

}
