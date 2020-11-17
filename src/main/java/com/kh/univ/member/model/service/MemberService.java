package com.kh.univ.member.model.service;

import java.util.Map;

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

	/**
	 * email student
	 * @param s
	 * @return
	 */
	Student sendEmailS(Student s);

	/**
	 * email professor
	 * @param p
	 * @return
	 */
	Professor sendEmailP(Professor p);

	/**
	 * 비번찾기 인증번호
	 * @param newPwd
	 * @return
	 */
	int updatePwd(String newPwd);

	/**
	 * 학생 비번 변경 업데이트 
	 * @param s
	 * @return 
	 */
	int pwChangeS(Student s);

	/**
	 * 학생 비번 변경 업데이트
	 * @param p
	 * @return
	 */
	int pwChangeP(Professor p);

	



}
