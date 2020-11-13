package com.kh.univ.lecture.model.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.lecture.model.dao.profLecDao;
import com.kh.univ.lecture.model.vo.LectureClass;
import com.kh.univ.lecture.model.vo.LectureList;
import com.kh.univ.lecture.model.vo.LecturePlan;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;

@Service("plService")
public class profLecServiceImpl implements profLecService {

	@Autowired
	profLecDao plDao;

	/**
	 * 내동영상강의목록 클릭 시 DB 출력
	 */
	@Override
	public ArrayList<LectureClass> selectValue(LectureClass lc)
		{
			return plDao.selectValue(lc);
		}

	/**
	 *강의 업로드
	 */
	@Override
	public ArrayList<LecturePlanWeek> lecVideoWrite(LecturePlanWeek lpw)
		{
			return plDao.lecVideoWrite(lpw);
		}

	@Override
	public ArrayList<LectureList> selectList(HttpSession session) {
		
		return plDao.selectList(session);
	}

	@Override
	public ArrayList<LecturePlanWeek> selectSyllaOne2(String classNo) {
		return plDao.selectSyllaOne2(classNo);
	}

	@Override
	public LecturePlan selectSyllaOne1(String classNo) {
		return plDao.selectSyllaOne1(classNo);
	}

	
	


	
}
