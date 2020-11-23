package com.kh.univ.registration.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

	public int insertRegistration(ArrayList<Grade> gList) {
		
		return sqlSession.insert("registrationMapper.insertRegistration",gList);
	}

	public ArrayList<Registration> myRSelectList(Student s) {
		return (ArrayList)sqlSession.selectList("registrationMapper.myRSelectList",s);
	}



		


}
