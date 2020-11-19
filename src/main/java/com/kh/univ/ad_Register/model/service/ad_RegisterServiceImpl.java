package com.kh.univ.ad_Register.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.ad_Register.model.dao.ad_RegisterDao;
import com.kh.univ.ad_Register.model.vo.Absence;
import com.kh.univ.common.PageInfo;
import com.kh.univ.lecture.model.vo.LectureList;
import com.kh.univ.lecture.model.vo.LecturePlan;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;

@Service("arService")
public class ad_RegisterServiceImpl implements ad_RegisterService{

	@Autowired
	private ad_RegisterDao arDao;

	@Override
	public Absence absenceCheck(Absence ab)
		{
			return arDao.absenceCheck(ab);
		}

	@Override
	public int getListCount(String dNo) {
		return arDao.getListCount(dNo);
	}

	@Override
	public ArrayList<LectureList> selectList1(String dNo) {
		return arDao.selectList1(dNo);
	}

	@Override
	public ArrayList<LectureList> selectList2(String dNo) {
		return arDao.selectList2(dNo);
	}

	@Override
	public LecturePlan selectSyllaOne1(LectureList ll) {
		return arDao.selectSyllaOne1(ll);
	}

	@Override
	public ArrayList<LecturePlanWeek> selectSyllaOne2(LectureList ll) {
		return arDao.selectSyllaOne2(ll);
	}

	
	
}
