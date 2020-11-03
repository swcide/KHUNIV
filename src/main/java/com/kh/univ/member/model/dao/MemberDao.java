package com.kh.univ.member.model.dao;

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

}
