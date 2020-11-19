package com.kh.univ.ad_Register.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.ad_Register.model.dao.ad_RegisterDao;
import com.kh.univ.ad_Register.model.vo.Absence;

@Service("arService")
public class ad_RegisterServiceImpl implements ad_RegisterService{

	@Autowired
	private ad_RegisterDao arDao;


	/**
	 *휴학 확인
	 */
	@Override
	public Absence absenceCheck(String sNo)
		{
			return arDao.absenceCheck(sNo);
		}


	/**
	 *휴학 신청
	 */
	@Override
	public int leave_absence_apply(Absence ab)
		{
			return arDao.leave_absence_apply(ab);
		}
	
}
