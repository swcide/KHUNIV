package com.kh.univ.registration.model.service;

import java.util.ArrayList;

import com.kh.univ.member.model.vo.Student;
import com.kh.univ.registration.model.vo.Registration;

public interface RegistrationService {


	ArrayList<Registration> rSelectList(Student s);

	int getListCount(int nType);


}
