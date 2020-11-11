package com.kh.univ.lecture.model.service;

import java.util.ArrayList;

import com.kh.univ.common.PageInfo;
import com.kh.univ.lecture.model.vo.Lecture;

public interface LectureService{

	int getListCount();

	Lecture selectLecture(int nId);

	ArrayList<Lecture> selectList(PageInfo pi);
	
	
	
}