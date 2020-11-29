package com.kh.univ.testPage.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.ad_Register.model.vo.semesterPoint;
import com.kh.univ.lecture.model.vo.ClassTest;
import com.kh.univ.lecture.model.vo.LecturePlan;
import com.kh.univ.member.model.vo.Student;
import com.kh.univ.testPage.model.dao.TestPageDao;
import com.kh.univ.testPage.model.vo.Test;
import com.kh.univ.testPage.model.vo.TestGrade;
import com.kh.univ.testPage.model.vo.TestList;

@Service
public class TestPageServiceImpl implements TestPageService {

	@Autowired
	private TestPageDao tDao;
	
	@Override
	public ArrayList<TestList> getClassList(semesterPoint sp) {
		
		return tDao.getclassList(sp);
	}


	@Override
	public ArrayList<TestGrade> getMyTest(TestGrade tg) {
		return tDao.getMyTest(tg);

	}


	@Override
	public ArrayList<TestList> midList(TestList tl) {
		return tDao.midList(tl);
	}


	@Override
	public ArrayList<Test> selectTestList(TestList tl) {
		return tDao.selectTestList(tl);
	}




	@Override
	public TestList selectTest(TestList tl) {
		return tDao.selectTest(tl);
	}


	@Override
	public int insertGrade(TestGrade tg) {
		return tDao.insertGrade(tg);
	}


	@Override
	public LecturePlan lpOne(String cNo) {
		return tDao.lpOne(cNo);
	}


	@Override
	public int updateSp(semesterPoint sp) {
		return tDao.updateSp(sp);
	}


}
