package com.kh.univ.member.model.service;

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
	 * @param m
	 * @return
	 */
	Professor loginProf(Member m);
	
	
	
	int updateMember(Member m);


}
