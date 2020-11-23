package com.kh.univ.registration.model.service;

import java.util.ArrayList;

import com.kh.univ.member.model.vo.Student;
import com.kh.univ.registration.model.vo.Registration;
import com.kh.univ.testPage.model.vo.Grade;

public interface RegistrationService {


	ArrayList<Registration> rSelectList(Student s);

	int insertRegistration(ArrayList<Grade> gList);

	ArrayList<Registration> myRSelectList(Student s);




}
