package com.kh.univ.lecture.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.common.PageInfo;
import com.kh.univ.lecture.model.vo.Assignment;
import com.kh.univ.lecture.model.vo.Attendance;
import com.kh.univ.lecture.model.vo.LectureList;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;
import com.kh.univ.lecture.model.vo.MyLectureVideoList;

@Repository("lDao")
public class LectureDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<Attendance> selectList(String sNo) {
		return (ArrayList)sqlSession.selectList("lectureMapper.attendance",sNo);
	}

	public ArrayList<LectureList> selectList1(String sNo) {
		
		return (ArrayList)sqlSession.selectList("lectureMapper.lectureList",sNo);
	}

	public ArrayList<LecturePlanWeek> selectList2(String classNo) {
		
		return (ArrayList)sqlSession.selectList("lectureMapper.stdVideoList",classNo);
	}

	public int assignmentInsert(LecturePlanWeek lpw) {
		
		return sqlSession.update("lectureMapper.assignmentInsert",lpw);
	}

	public ArrayList<LecturePlanWeek> assigment(String classNo) {
		
		return (ArrayList)sqlSession.selectList("lectureMapper.lecVideo", classNo);
	}


	public ArrayList<Attendance> selectTestPoint(String sNo) {
	
		return (ArrayList)sqlSession.selectList("lectureMapper.testPoint",sNo);
	}



}
