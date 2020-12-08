package com.kh.univ.testPage.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.ad_Register.model.vo.semesterPoint;
import com.kh.univ.lecture.model.vo.ClassTest;
import com.kh.univ.lecture.model.vo.LecturePlan;
import com.kh.univ.member.model.vo.Student;
import com.kh.univ.testPage.model.dao.TestPageDao;
import com.kh.univ.testPage.model.vo.HomeworkGrade;
import com.kh.univ.testPage.model.vo.Test;
import com.kh.univ.testPage.model.vo.TestGrade;
import com.kh.univ.testPage.model.vo.TestList;

@Service
public class TestPageServiceImpl implements TestPageService {

	@Autowired
	private TestPageDao tDao;
	
	/**
	 * 내 시험 리스트
	 */
	@Override
	public ArrayList<TestList> getClassList(semesterPoint sp) {
		return tDao.getclassList(sp);
	}
	/**
	 *내가 본 시험 리스트
	 */
	@Override
	public ArrayList<TestGrade> getMyTest(TestGrade tg) {
		return tDao.getMyTest(tg);
	}


	/**
	 *
	 *중간고사 리스트
	 */
	@Override
	public ArrayList<TestList> midList(TestList tl) {
		return tDao.midList(tl);
	}


	/**
	 * 문제 목록
	 */
	@Override
	public ArrayList<Test> selectTestList(TestList tl) {
		return tDao.selectTestList(tl);
	}
	/**
	 * 문제
	 */
	@Override
	public TestList selectTest(TestList tl) {
		return tDao.selectTest(tl);
	}
	/**
	 * 시험성적 업데이트
	 */
	@Override
	public int insertGrade(TestGrade tg) {
		return tDao.insertGrade(tg);
	}
	/**
	 * 배점 가져오기
	 */
	@Override
	public LecturePlan lpOne(String cNo) {
		return tDao.lpOne(cNo);
	}
	/**
	 * 학기 성적 업데이트
	 */
	@Override
	public int updateSp(semesterPoint sp) {
		return tDao.updateSp(sp);
	}
	
	@Override
	public ArrayList<HomeworkGrade> hList(HomeworkGrade gb) {
		return tDao.hList(gb);
	}




}
