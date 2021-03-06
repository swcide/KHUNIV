package com.kh.univ.registration.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.ad_Register.model.vo.semesterPoint;
import com.kh.univ.member.model.vo.Student;
import com.kh.univ.registration.model.dao.RegistrationDao;
import com.kh.univ.registration.model.vo.Registration;
import com.kh.univ.testPage.model.vo.Grade;

@Service("rService")
public class RegistrationServiceImpl implements RegistrationService {

	@Autowired
	private RegistrationDao rDao;
	
	@Override
	public ArrayList<Registration> rSelectList(Student s) {
		return rDao.rSelectList(s);
	}


	@Override
	public int insertRegistration(ArrayList<semesterPoint> spList) {
		return rDao.insertRegistration(spList);
	}


	@Override
	public ArrayList<Registration> myRSelectList(Student s) {
		return rDao.myRSelectList(s);
	}


	@Override
	public ArrayList<Registration> gradeList(semesterPoint sp) {
		return rDao.gradeList(sp);
	}






}
