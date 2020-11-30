package com.kh.univ.registration.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.ad_Register.model.vo.semesterPoint;
import com.kh.univ.member.model.vo.Student;
import com.kh.univ.registration.model.vo.Registration;
import com.kh.univ.testPage.model.vo.Grade;

@Repository("rDao")
public class RegistrationDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<Registration> rSelectList(Student s) {
		return (ArrayList)sqlSession.selectList("registrationMapper.rSelectList",s);
	}

	public int insertRegistration(ArrayList<semesterPoint> spList) {
		
		return sqlSession.insert("registrationMapper.insertRegistration",spList);
	}

	public ArrayList<Registration> myRSelectList(Student s) {
		return (ArrayList)sqlSession.selectList("registrationMapper.myRSelectList",s);
	}

	public ArrayList<Registration> gradeList(semesterPoint sp) {
		return (ArrayList)sqlSession.selectList("registrationMapper.gradeList",sp);
	}



		


}
