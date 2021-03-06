package com.kh.univ.lecture.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.common.PageInfo;
import com.kh.univ.lecture.model.dao.LectureDao;
import com.kh.univ.lecture.model.vo.Assignment;
import com.kh.univ.lecture.model.vo.Attendance;
import com.kh.univ.lecture.model.vo.LectureList;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;
import com.kh.univ.lecture.model.vo.MyLectureVideoList;
import com.kh.univ.lecture.model.vo.SemePoint;
@Service("lService")
public class LetureServiceImpl implements LectureService {
	
	@Autowired
	private LectureDao lDao;

	@Override
	public ArrayList<Attendance> selectList(String sNo) {
		return lDao.selectList(sNo);
	}

	@Override
	public ArrayList<LectureList> selectList1(String sNo) {

		return lDao.selectList1(sNo);
	}

	@Override
	public ArrayList<LecturePlanWeek> selectList2(String classNo) {
		
		return lDao.selectList2(classNo);
	}

	

	@Override
	public int assignmentInsert(LecturePlanWeek lpw) {
		
		return lDao.assignmentInsert(lpw);
	}

	@Override
	public ArrayList<LecturePlanWeek> assignment(String classNo) {
		
		return lDao.assigment(classNo);
	}

	@Override
	public ArrayList<SemePoint> selectGradeList(SemePoint sp) {
		return lDao.selectGradeList(sp);
	}





	
	
	
	

}
