package com.kh.univ.member.model.service;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import com.kh.univ.member.model.dao.MemberDao;
import com.kh.univ.member.model.vo.Admin;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;

@Service("mService")
public class MemberServiceImpl implements MemberService {

  @Autowired
  private MemberDao mDao;

  @Autowired
  SqlSessionTemplate sqlSession; // 트랜잭션 처리용

  @Autowired
  private DataSourceTransactionManager transactionManager;

  @Override
  public Student loginMember(Student s) {

    return mDao.loginMember(s);
  }

  @Override
  public Professor loginProf(Professor p) {
    return mDao.loginProf(p);
  }

  @Override
  public Admin loginAdmin(Admin a) {
    return mDao.loginAdmin(a);
  }

  @Override
  public int updateMember(Student s) {
    return mDao.updateMember(s);
  }

@Override
public Student sendEmailS(Student s)
	{
		return mDao.sendEmailS(s);
	}

@Override
public Professor sendEmailP(Professor p)
	{
		return mDao.sendEmailP(p);
	}

@Override
public int updatePwd(String newPwd)
	{
		return mDao.updatePwd(newPwd);
	}

@Override
public int pwChangeS(Student s)
	{
		return mDao.pwChangeS(s);
	}

@Override
public int pwChangeP(Professor p)
	{
		return mDao.pwChangeP(p);
	}


@Override
public int myImgUpload(Student s)
	{
		return mDao.myImgUpload(s);
	}



}
