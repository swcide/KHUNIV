package com.kh.univ.lecture.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.common.PageInfo;
import com.kh.univ.lecture.model.dao.LectureDao;
import com.kh.univ.lecture.model.vo.Lecture;

@Service("nService")
public class LectureServiceImpl implements LectureService{

	@Autowired
	private LectureDao lDao;

	@Override
	public int getListCount() {
		return lDao.getListCount();
	}

	@Override
	public ArrayList<Lecture> selectList(PageInfo pi) {
		return  lDao.selectList(pi);
	}

	@Override
	public Lecture selectLecture(int nId) {
		// TODO Auto-generated method stub
		return null;
	}

	/*@Override
	public Lecture selectLecture(int nId) {

		int result=lDao.updateCount(nId);

		if(result>0) {
			return lDao.selectLecture(nId);
		}else {
			return null;
		}

	}

	@Override
	public int insertLecturePlan(Lecture l) {
		return lDao.insertLecturePlan(l);
	}

	@Override
	public Lecture selectUpdateLecture(int nId) {
		return lDao.selectLecture(nId);
	}

	@Override
	public int updateLecture(Lecture l) {
		return lDao.updateLecture(l);
	}
*/
	

	


}