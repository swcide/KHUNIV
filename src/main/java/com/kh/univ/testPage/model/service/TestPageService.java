package com.kh.univ.testPage.model.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.kh.univ.ad_Register.model.vo.semesterPoint;
import com.kh.univ.lecture.model.vo.ClassTest;
import com.kh.univ.lecture.model.vo.LecturePlan;
import com.kh.univ.member.model.vo.Student;
import com.kh.univ.testPage.model.vo.HomeworkGrade;
import com.kh.univ.testPage.model.vo.Test;
import com.kh.univ.testPage.model.vo.TestGrade;
import com.kh.univ.testPage.model.vo.TestList;


public interface TestPageService {

	/**
	 * 내 시험 리스트 
	 * @param sp
	 * @return
	 */
	ArrayList<TestList> getClassList(semesterPoint sp);

	/**
	 * 내가 본 시험 리스트
	 * @param tg
	 * @return
	 */
	ArrayList<TestGrade> getMyTest(TestGrade tg);

	/**
	 * 중간고사 리스트
	 * @param tl
	 * @return
	 */
	ArrayList<TestList> midList(TestList tl);

	/**
	 * 시험 불러오기
	 * @param tl
	 * @return
	 */
	ArrayList<Test> selectTestList(TestList tl);

	/**
	 * 시험 고르기
	 * @param tl
	 * @return
	 */
	TestList selectTest(TestList tl);

	/**
	 * 시험 성적 업데이트
	 * @param tg
	 * @return
	 */
	int insertGrade(TestGrade tg);

	/**
	 * 
	 * 시험 배점 가져오기
	 * @param cNo
	 * @return
	 */
	LecturePlan lpOne(String cNo);


	/**
	 * 학기 성적 업데이트
	 * @param sp
	 * @return
	 */
	int updateSp(semesterPoint sp);
	

	ArrayList<HomeworkGrade> hList(HomeworkGrade gb);

	





}
