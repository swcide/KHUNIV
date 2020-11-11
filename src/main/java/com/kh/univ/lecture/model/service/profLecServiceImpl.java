package com.kh.univ.lecture.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.lecture.model.dao.profLecDao;
import com.kh.univ.lecture.model.vo.LectureClass;

@Service("plService")
public class profLecServiceImpl implements profLecService {

	@Autowired
	profLecDao plDao;

	@Override
	public ArrayList<LectureClass> selectValue(LectureClass lc)
		{
			return plDao.selectValue(lc);
		}


	
}
