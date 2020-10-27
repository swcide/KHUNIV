package com.kh.univ.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.member.model.vo.Member;

@Repository("mDao")
public class MemberDao {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	public Member loginMember(Member m)
		{
			return (Member)sqlSession.selectOne("memberMapper.loginMember",m);
		}

}
