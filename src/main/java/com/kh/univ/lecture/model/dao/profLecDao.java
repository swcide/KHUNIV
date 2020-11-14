package com.kh.univ.lecture.model.dao;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.lecture.model.vo.ClassTest;
import com.kh.univ.lecture.model.vo.LectureClass;
import com.kh.univ.lecture.model.vo.LectureList;
import com.kh.univ.lecture.model.vo.LecturePlan;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;
import com.kh.univ.member.model.vo.Professor;

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

	public int lectureVideoDelete(LecturePlanWeek lpw)
	{
		return sqlSession.delete("lectureMapper.lectureVideoDelete",lpw);
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

	public ArrayList<ClassTest> classSelectList(Professor p,int currentPage) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
//		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("noticeMapper.selectnList",nType,rowBounds);
		
		return sqlSession.selectList("lecturemapper.classSelectList",p)
	}

	public int getListCount() {
		return 0;
	}



}
