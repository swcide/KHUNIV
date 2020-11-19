package com.kh.univ.ad_Register.model.service;

import com.kh.univ.ad_Register.model.vo.Absence;

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

}
