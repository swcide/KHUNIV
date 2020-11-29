package com.kh.univ.testPage.model.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.kh.univ.ad_Register.model.vo.semesterPoint;
import com.kh.univ.lecture.model.vo.ClassTest;
import com.kh.univ.lecture.model.vo.LecturePlan;
import com.kh.univ.member.model.vo.Student;
import com.kh.univ.testPage.model.vo.Test;
import com.kh.univ.testPage.model.vo.TestGrade;
import com.kh.univ.testPage.model.vo.TestList;


public interface TestPageService {

	ArrayList<TestList> getClassList(semesterPoint sp);

	ArrayList<TestGrade> getMyTest(TestGrade tg);

	ArrayList<TestList> midList(TestList tl);

	ArrayList<Test> selectTestList(TestList tl);

	TestList selectTest(TestList tl);

	int insertGrade(TestGrade tg);

	LecturePlan lpOne(String cNo);


	int updateSp(semesterPoint sp);




}
