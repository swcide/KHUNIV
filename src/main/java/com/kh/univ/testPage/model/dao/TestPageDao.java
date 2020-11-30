package com.kh.univ.testPage.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.ad_Register.model.vo.semesterPoint;
import com.kh.univ.lecture.model.vo.ClassTest;
import com.kh.univ.lecture.model.vo.LecturePlan;
import com.kh.univ.member.model.vo.Student;
import com.kh.univ.testPage.model.vo.Test;
import com.kh.univ.testPage.model.vo.TestGrade;
import com.kh.univ.testPage.model.vo.TestList;
@Repository("tDao")
public class TestPageDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<TestList> getclassList(semesterPoint sp) {
		return (ArrayList)sqlSession.selectList("testPageMapper.getclassList",sp);
	}

	public ArrayList<TestGrade> getMyTest(TestGrade tg) {
		return (ArrayList)sqlSession.selectList("testPageMapper.getMyTest",tg);
	}

	public ArrayList<TestList> midList(TestList tl) {
		return (ArrayList)sqlSession.selectList("testPageMapper.midList",tl);
	}

	public ArrayList<Test> selectTestList(TestList tl) {
		return  (ArrayList)sqlSession.selectList("testPageMapper.selectTestList",tl);
	}

	public TestList selectTest(TestList tl) {
		return sqlSession.selectOne("testPageMapper.selectTest",tl);
	}

	public int insertGrade(TestGrade tg) {
		return sqlSession.insert("testPageMapper.insertGrade",tg);
	}

	public LecturePlan lpOne(String cNo) {
		return sqlSession.selectOne("testPageMapper.lpOne",cNo);
	}

	public semesterPoint selectSp(TestList tl) {
		return sqlSession.selectOne("testPageMapper.selectSp",tl);
	}

	public int updateSp(semesterPoint sp) {
		return sqlSession.update("testPageMapper.updateSp",sp);
	}
}
