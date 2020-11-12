package com.kh.univ.lecture.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.lecture.model.vo.LectureClass;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;

@Repository("plDao")
public class profLecDao {

	@Autowired
	SqlSessionTemplate sqlSession;

	public ArrayList<LectureClass> selectValue(LectureClass lc)
		{
			return (ArrayList)sqlSession.selectList("lectureMapper.selectValue", lc);
		}

	public ArrayList<LecturePlanWeek> lecVideoWrite(LecturePlanWeek lpw)
		{
			return (ArrayList)sqlSession.selectList("lectureMapper.lecVideoWrite", lpw);
		}

	public int lectureVideoInsert(LecturePlanWeek lpw)
		{
			return sqlSession.insert("lectureMapper.lectureVideoInsert",lpw);
		}
	

}
