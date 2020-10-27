package com.kh.univ.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.univ.member.model.dao.MemberDao;
import com.kh.univ.member.model.vo.Member;

@Service("mService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao mDao;

	@Autowired
	SqlSessionTemplate sqlSession; //트랜잭션 처리용
	
	@Autowired
	private DataSourceTransactionManager transactionManager;
	
	@Override
	public Member loginMember(Member m)
		{
			
			return mDao.loginMember(m);
		}

}
