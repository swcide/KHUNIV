package com.kh.univ.lecture.model.service;

import java.util.ArrayList;
import com.kh.univ.common.PageInfo;
import com.kh.univ.lecture.model.vo.Attendance;

public interface LectureService {

	ArrayList<Attendance> selectList(PageInfo pi);

	int getListCount();
	int attendanceRate();
	
}
