package com.kh.univ.ad_Register.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.ad_Register.model.dao.ad_RegisterDao;
import com.kh.univ.ad_Register.model.vo.Absence;

@Service("arService")
public class ad_RegisterServiceImpl implements ad_RegisterService{

	@Autowired
	private ad_RegisterDao arDao;

	@Override
	public Absence absenceCheck(Absence ab)
		{
			return arDao.absenceCheck(ab);
		}
	
}
