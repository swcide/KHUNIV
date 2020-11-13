package com.kh.univ.lecture.model.dao;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.lecture.model.vo.LectureClass;
import com.kh.univ.lecture.model.vo.LectureList;
import com.kh.univ.lecture.model.vo.LecturePlan;
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

	public ArrayList<LectureList> selectList(HttpSession session) {
		
		return (ArrayList)sqlSession.selectList("lectureMapper.lecList", session);
	}

	public ArrayList<LecturePlanWeek> selectSyllaOne2(String classNo) {
		return (ArrayList)sqlSession.selectList("lectureMapper.sylla2", classNo);
	}

	public LecturePlan selectSyllaOne1(String classNo) {
		return sqlSession.selectOne("lectureMapper.sylla1", classNo);
	}

	

}
