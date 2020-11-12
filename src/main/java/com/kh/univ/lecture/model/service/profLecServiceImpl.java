package com.kh.univ.lecture.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.lecture.model.dao.profLecDao;
import com.kh.univ.lecture.model.vo.LectureClass;
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
	 *강의 업로드 화면
	 */
	@Override
	public ArrayList<LecturePlanWeek> lecVideoWrite(LecturePlanWeek lpw)
		{
			return plDao.lecVideoWrite(lpw);
		}

	/**
	 * 강의 업로드
	 */
	@Override
	public int lectureVideoInsert(LecturePlanWeek lpw)
		{
			return plDao.lectureVideoInsert(lpw);
		}


	
}
