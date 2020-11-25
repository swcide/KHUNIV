package com.kh.univ.ad_Register.model.service;

import java.util.ArrayList;

import com.kh.univ.ad_Register.model.vo.Absence;
import com.kh.univ.ad_Register.model.vo.Certificate;
import com.kh.univ.ad_Register.model.vo.grdExp;
import com.kh.univ.common.PageInfo;
import com.kh.univ.lecture.model.vo.LectureList;
import com.kh.univ.lecture.model.vo.LecturePlan;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;

/**
 * @author admin
 *
 */
public interface ad_RegisterService {

	/**
	 * 휴학/복학신청확인
	 * @param sNo
	 * @return
	 */
	Absence absenceCheck(String sNo);
	
	/**
	 * 졸업유예 신청확인
	 * @param sNo
	 * @return
	 */
	grdExp graduationDelayCheck(String sNo);
	
	/**
	 * 휴학신청
	 * @param ab
	 * @return
	 */
	int leave_absence_apply(Absence ab);

	/**
	 * 복학신청
	 * @param ab
	 * @return
	 */
	int return_absence_apply(Absence ab);
	
	/**
	 * 졸업유예 신청 
	 * @param ge
	 * @return
	 */
	int ad_deferment_graduation_apply(grdExp ge);
	
	/**
	 * 자퇴 신청
	 * @param ge
	 * @return
	 */
	int ad_drop_absence_apply(grdExp ge);

	ArrayList<LectureList> selectList1(String dNo);

	ArrayList<LectureList> selectList2(String dNo);

	LecturePlan selectSyllaOne1(LectureList ll);

	ArrayList<LecturePlanWeek> selectSyllaOne2(LectureList ll);

	/**
	 * 증명서 발급 전 학생 정보 테이블 출력
	 * @param sNo
	 * @return
	 */
	grdExp certificate_list(String sNo);

	/**
	 * 재학증명서 발급 화면
	 * @param sNo
	 * @return
	 */
	Certificate certificate_inschool(String sNo);

	/**
	 * 졸업증명서 발급 화면
	 * @param sNo
	 * @return
	 */
	Certificate certificate_graduation(String sNo);



	

	


}
