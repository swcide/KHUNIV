package com.kh.univ.lecture.model.dao;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.lecture.model.vo.LectureClass;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;

@Repository("plDao")
public class profLecDao {

	@Autowired
	SqlSessionTemplate sqlSession;

	public ArrayList<LectureClass> selectValue(String pNo)
		{
			return (ArrayList)sqlSession.selectList("lectureMapper.selectValue", pNo);
		}

	public ArrayList<LecturePlanWeek> lectureVideo(String classNo)
		{
			return (ArrayList)sqlSession.selectList("lectureMapper.lecVideo", classNo);
		}

	public int lectureVideoInsert(LecturePlanWeek lpw)
		{
			return sqlSession.insert("lectureMapper.lectureVideoInsert",lpw);
		}


}
