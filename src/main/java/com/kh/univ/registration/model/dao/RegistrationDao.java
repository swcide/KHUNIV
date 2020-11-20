package com.kh.univ.registration.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.member.model.vo.Student;
import com.kh.univ.registration.model.vo.Registration;

@Repository("rDao")
public class RegistrationDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<Registration> rSelectList(Student s) {
		System.out.println("-------dao");
		System.out.println(s);
		return (ArrayList)sqlSession.selectList("registrationMapper.rSelectList",s);
	}

	public int getListCount(int nType) {
		System.out.println("-------dao");
		return sqlSession.selectOne("noticeMapper.getListCount",nType);
	}


		


}
