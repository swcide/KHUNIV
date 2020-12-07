package com.kh.univ.member.model.service;

import java.util.Map;

import com.kh.univ.member.model.vo.Admin;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;

/**
 * @author admin
 *
 */
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


	/**
	 * 마이페이지 이미지업로드
	 * @param s
	 * @return
	 */
	int myImgUpload(Student s);

	



}
