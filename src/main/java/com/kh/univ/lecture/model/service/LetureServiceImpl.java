package com.kh.univ.lecture.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.common.PageInfo;
import com.kh.univ.lecture.model.dao.LectureDao;
import com.kh.univ.lecture.model.vo.Attendance;
@Service("lService")
public class LetureServiceImpl implements LectureService {
	
	@Autowired
	private LectureDao lDao;

	@Override
	public ArrayList<Attendance> selectList(String sNo) {
		return lDao.selectList(sNo);
	}

	@Override
	public ArrayList<Attendance> attendRate(String sNo) {

		return lDao.selectAttList(sNo);
	}

	
	
	

}