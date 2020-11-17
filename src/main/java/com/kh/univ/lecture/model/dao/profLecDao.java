package com.kh.univ.lecture.model.dao;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.common.PageInfo;
import com.kh.univ.lecture.model.vo.ClassTest;
import com.kh.univ.lecture.model.vo.LectureClass;
import com.kh.univ.lecture.model.vo.LectureList;
import com.kh.univ.lecture.model.vo.LecturePlan;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.testPage.model.vo.Test;

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

	public int lectureVideoUpdate(LecturePlanWeek lpw)
		{
			return sqlSession.update("lectureMapper.lectureVideoUpdate",lpw);
		}
	
	
	
	
	
	// 내 강의 목록 	
	public ArrayList<LectureList> selectList(HttpSession session) {

		return (ArrayList)sqlSession.selectList("lectureMapper.lecList", session);
	}
	
	// 강의계획서 윗부분
	public LecturePlan selectSyllaOne1(String classNo) {
		return sqlSession.selectOne("lectureMapper.sylla1", classNo);
	}
	
	// 강의계획서 아랫부분
	public ArrayList<LecturePlanWeek> selectSyllaOne2(String classNo) {
		return (ArrayList)sqlSession.selectList("lectureMapper.sylla2", classNo);
	}	
	
	//======================================================
	@SuppressWarnings("unchecked")
	public int prof_Syllabus_LectureUpdate(LecturePlan lp) {
		return sqlSession.update("lectureMapper.SyllaUpdate",lp);
	}

	public ArrayList<LecturePlanWeek> prof_Syllabus_LectureWeekSelect(LectureList ll) {
		return (ArrayList)sqlSession.selectList("lectureMapper.lectureWeekSelect", ll);
	}

	public LecturePlan prof_Syllabus_LectureSelect(LectureList ll) {
		return sqlSession.selectOne("lectureMapper.lectureSelect", ll);
	}
	
	// 강의 개설 정보 페이지
	public ArrayList<LectureList> selectList(String dNo, PageInfo pi) {
		int offset = (pi.getCurrentPage() -1 ) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("lectureMapper.lecPList",dNo, rowBounds);
	}
	
	// 강의 개설 리스트카운트
	public int getListCount(String dNo) {
		return sqlSession.selectOne("lectureMapper.getLCount",dNo);
	}
	
	public LecturePlanWeek updateAfter(LecturePlanWeek lpw)
	{
		return sqlSession.selectOne("lectureMapper.updateAfter",lpw);
	}
	

//	-----------------------------------------교수 강의동 시험 출제 -------------------------------

	public ArrayList<ClassTest> classSelectList(Professor p,PageInfo pi) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		
		return (ArrayList)sqlSession.selectList("lectureMapper.classSelectList",p,rowBounds);
	}

	public int getListCount(Professor p) {
		return sqlSession.selectOne("lectureMapper.getQListCount",p);
	}


	public LecturePlan selectSyllainsertform(String pNo) {
		return sqlSession.selectOne("lectureMapper.syllainsertform", pNo);
	}

	public ArrayList<LectureList> SyllaPlanList(Professor pNo) {
		return (ArrayList)sqlSession.selectList("lectureMapper.SyllaPlanList", pNo);
	}



	

	public int insertTestSchedule(ClassTest ct) {
		return sqlSession.insert("lectureMapper.insertTestSchedule",ct);

	}
	public int updateTestSchedule(ClassTest ct) {
		return sqlSession.update("lectureMapper.updateTestSchedule",ct);

	}

	public ArrayList<ClassTest> classViewList(Professor p) {
	
		return (ArrayList)sqlSession.selectList("lectureMapper.classSelectList",p);
	}

	public ArrayList<Test> selectClassList(String cNo) {
		return (ArrayList)sqlSession.selectList("lectureMapper.selectClassList",cNo);
	}

	public int updateTest(Test t) {
		return sqlSession.update("lectureMapper.updateTest",t);
	}

	public int insertTest(Test t) {
		return sqlSession.insert("lectureMapper.insertTest",t);
	}

	public ClassTest selectClassOne(String tNo) {
		return sqlSession.selectOne("lectureMapper.selectClassOne",tNo);
	}

	public int deleteTest(Test t) {
		return sqlSession.delete("lectureMapper.deleteTest",t);
	}

	public Test selectTest(int qId) {
		return sqlSession.selectOne("lectureMapper.selectTest",qId);
	}

	public ArrayList<Test> takeClassList(Test t1) {
		return (ArrayList)sqlSession.selectList("lectureMapper.takeClassList",t1);
	}

	public int takeAddQ(Test t) {
		return sqlSession.insert("lectureMapper.takeAddQ",t);
	}

	



}
