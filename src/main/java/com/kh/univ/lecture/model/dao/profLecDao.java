package com.kh.univ.lecture.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.lecture.model.vo.LectureClass;

@Repository("plDao")
public class profLecDao {

	@Autowired
	SqlSessionTemplate sqlSession;

	public ArrayList<LectureClass> selectValue(LectureClass lc)
		{
			return (ArrayList)sqlSession.selectList("lectureMapper.selectList", lc);
		}
	

}
