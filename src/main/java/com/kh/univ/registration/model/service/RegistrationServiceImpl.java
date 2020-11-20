package com.kh.univ.registration.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.member.model.vo.Student;
import com.kh.univ.registration.model.dao.RegistrationDao;
import com.kh.univ.registration.model.vo.Registration;

@Service("rService")
public class RegistrationServiceImpl implements RegistrationService {

	@Autowired
	private RegistrationDao rDao;
	
	@Override
	public ArrayList<Registration> rSelectList(Student s) {
		System.out.println("service");
		return rDao.rSelectList(s);
	}

	@Override
	public int getListCount(int nType) {
		System.out.println("service");
		  return rDao.getListCount(nType);
	}

}
