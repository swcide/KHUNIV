package com.kh.univ.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.univ.member.model.dao.MemberDao;
import com.kh.univ.member.model.vo.Admin;
import com.kh.univ.member.model.vo.Member;
import com.kh.univ.member.model.vo.Professor;

@Service("mService")
public class MemberServiceImpl implements MemberService
	{

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

		@Override
		public Professor loginProf(Professor p)
			{
				return mDao.loginProf(p);
			}
		
		@Override
		public Admin loginAdmin(Admin a)
			{
				return mDao.loginAdmin(a);
			}

		@Override
		public int updateMember(Member m)
			{
				// TODO Auto-generated method stub
				return 0;
			}


	}
