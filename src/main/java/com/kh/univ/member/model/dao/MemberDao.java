package com.kh.univ.member.model.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.kh.univ.member.model.vo.Admin;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;

@Repository("mDao")
public class MemberDao {
	
  @Autowired
  SqlSessionTemplate sqlSession;

  public Student loginMember(Student s) {
    return (Student) sqlSession.selectOne("memberMapper.loginMember", s);
  }

  public Professor loginProf(Professor p) {
    return (Professor) sqlSession.selectOne("memberMapper.loginProf", p);
  }

  public Admin loginAdmin(Admin a) {
    return (Admin) sqlSession.selectOne("memberMapper.loginAdmin", a);
  }
// 비밀번호 찾기 학생 인증번호 메일 발송
public Student sendEmailS(Student s)
	{
		return (Student) sqlSession.selectOne("memberMapper.sendEmailS",s);
	}
//비밀번호 찾기 교수 인증번호 메일 발송
public Professor sendEmailP(Professor p)
	{
		return (Professor) sqlSession.selectOne("memberMapper.sendEmailP",p);
	}
//이게뭐였더라 ..
public int updatePwd(String newPwd)
	{
		return sqlSession.update("memberMapper.updatePwd",newPwd);
	}
//비밀번호 변경 학생용
public int pwChangeS(Student s)
	{
		return sqlSession.update("memberMapper.pwChangeS",s);
	}
//비밀번호 변경 교수용
public int pwChangeP(Professor p)
	{
		return sqlSession.update("memberMapper.pwChangeP",p);
	}

//마이페이지 업데이트
public int updateMember(Student s)
	{
		return sqlSession.update("memberMapper.updateMember",s);
	}

//마이페이지 이미지 업로드
public int myImgUpload(Student s)
	{
		return sqlSession.update("memberMapper.myImgUpload",s);
	}

}
