package com.kh.univ.member.model.service;

import com.kh.univ.member.model.vo.Member;

public interface MemberService {

	/**
	 * Login
	 * @param m
	 * @return session/address
	 */
	Member loginMember(Member m);

	int updateMember(Member m);

}
