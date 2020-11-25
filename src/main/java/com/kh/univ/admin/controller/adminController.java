package com.kh.univ.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.univ.admin.model.service.adminService;

@Controller
public class adminController {
@Autowired
adminService aService;

@RequestMapping("manageStudent.do")
public String manageStudent () {
		return "admin/manageStudent";
}

@RequestMapping("manageBoard.do")
public String manageBoard () {
		return "admin/manageBoard";
}

@RequestMapping("manageQna.do")
public String manageQna () {
		return "admin/manageQna";
}

@RequestMapping("manageNotice.do")
public String manageNotice () {
		return "admin/manageNotice";
}

@RequestMapping("insertStudent.do")
public String insertStudent () {
		return "admin/insertStudent";
}

@RequestMapping("insertProfessor.do")
public String insertProfessor () {
		return "admin/insertProfessor";
}

@RequestMapping("insertLecture.do")
public String insertLecture () {
		return "admin/insertLecture";
}


}
