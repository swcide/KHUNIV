package com.kh.univ.testPage.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.ad_Register.model.vo.semesterPoint;
import com.kh.univ.lecture.model.vo.ClassTest;
import com.kh.univ.lecture.model.vo.LecturePlan;
import com.kh.univ.member.model.vo.Student;
import com.kh.univ.testPage.model.vo.HomeworkGrade;
import com.kh.univ.testPage.model.vo.Test;
import com.kh.univ.testPage.model.vo.TestGrade;
import com.kh.univ.testPage.model.vo.TestList;
@Repository("tDao")
public class TestPageDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * 내 시험 리스트
	 * @param sp
	 * @return
	 */
	public ArrayList<TestList> getclassList(semesterPoint sp) {
		return (ArrayList)sqlSession.selectList("testPageMapper.getclassList",sp);
	}

	/**
	 * 내가 본 시험 리스트
	 * @param tg
	 * @return
	 */
	public ArrayList<TestGrade> getMyTest(TestGrade tg) {
		return (ArrayList)sqlSession.selectList("testPageMapper.getMyTest",tg);
	}

	/**
	 * 중간고사 리스트
	 * @param tl
	 * @return
	 */
	public ArrayList<TestList> midList(TestList tl) {
		return (ArrayList)sqlSession.selectList("testPageMapper.midList",tl);
	}

	/**
	 * 문제 목록
	 * @param tl
	 * @return
	 */
	public ArrayList<Test> selectTestList(TestList tl) {
		return  (ArrayList)sqlSession.selectList("testPageMapper.selectTestList",tl);
	}

	public TestList selectTest(TestList tl) {
		return sqlSession.selectOne("testPageMapper.selectTest",tl);
	}

	/**
	 * 성적 업데이트
	 * @param tg
	 * @return
	 */
	public int insertGrade(TestGrade tg) {
		return sqlSession.insert("testPageMapper.insertGrade",tg);
	}

	/**
	 * 배점 가져오기
	 * @param cNo
	 * @return
	 */
	public LecturePlan lpOne(String cNo) {
		return sqlSession.selectOne("testPageMapper.lpOne",cNo);
	}

	/**
	 * 학기 성적 업데이트
	 * @param sp
	 * @return
	 */
	public int updateSp(semesterPoint sp) {
		return sqlSession.update("testPageMapper.updateSp",sp);
	}

	public ArrayList<HomeworkGrade> hList(HomeworkGrade gb) {
		return (ArrayList)sqlSession.selectList("testPageMapper.hList",gb);
	}




}
