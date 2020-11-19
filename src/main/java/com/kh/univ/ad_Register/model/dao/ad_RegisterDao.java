package com.kh.univ.ad_Register.model.dao;

import java.util.ArrayList;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.kh.univ.ad_Register.model.vo.Absence;
import com.kh.univ.lecture.model.vo.LectureList;
import com.kh.univ.lecture.model.vo.LecturePlan;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;

@Repository("adDao")
public class ad_RegisterDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public Absence absenceCheck(Absence ab)
	{
		return sqlSession.selectOne("registerMapper.absenceCheck",ab);
	}
	
	
	///////////////////////////////////강의계획서 관리//////////////////////////////////////////////////
	// 강의 개설 리스트카운트
	public int getListCount(String dNo) {
		return sqlSession.selectOne("registerMapper.getLCount",dNo);
	}


	// 강의 개설 정보 페이지
	public ArrayList<LectureList> selectList1(String dNo) {
		return (ArrayList)sqlSession.selectList("registerMapper.lecPList",dNo);
	}
	
	public ArrayList<LectureList> selectList2(String dNo) {
		return (ArrayList)sqlSession.selectList("registerMapper.lecPList2",dNo);
	
	}

	// 강의계획서 출력 팝업창
	// 상위부분
	public LecturePlan selectSyllaOne1(LectureList ll) {
		return sqlSession.selectOne("registerMapper.sylla1",ll);
	}
	//하위부분
	public ArrayList<LecturePlanWeek> selectSyllaOne2(LectureList ll) {
		return (ArrayList)sqlSession.selectList("registerMapper.sylla2",ll);
	}
	///////////////////////////////////////////////////////////////////////////////////////





	





	

}
