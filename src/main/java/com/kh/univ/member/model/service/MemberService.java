package com.kh.univ.member.model.service;

import com.kh.univ.member.model.vo.Admin;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;

public interface MemberService {

	/**
	 * 학생 로그인
	 * @param m
	 * @return session/address
	 */
	Student loginMember(Student s);

	/**
	 * 교수 로그인
	 * @param p
	 * @return
	 */
	Professor loginProf(Professor p);
	
	
	Admin loginAdmin(Admin a);
	
	int updateMember(Student s);



}
