package com.kh.univ.member.model.service;

import com.kh.univ.member.model.vo.Admin;
import com.kh.univ.member.model.vo.Member;
import com.kh.univ.member.model.vo.Professor;

public interface MemberService {

	/**
	 * 학생 로그인
	 * @param m
	 * @return session/address
	 */
	Member loginMember(Member m);

	/**
	 * 교수 로그인
	 * @param p
	 * @return
	 */
	Professor loginProf(Professor p);
	
	
	
	int updateMember(Member m);

	Admin loginAdmin(Admin a);


}
