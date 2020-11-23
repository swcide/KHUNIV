package com.kh.univ.lecture.model.vo;

import java.sql.Date;

public class MyLectureVideoList extends LecturePlanWeek {
	
	private String sNo;

	public MyLectureVideoList() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MyLectureVideoList(String classNo, int lecNo, String lecName, String lecReference, String lecExplanation,
			String lecVideo, Date lecVideoCreateDate) {
		super(classNo, lecNo, lecName, lecReference, lecExplanation, lecVideo, lecVideoCreateDate);
		// TODO Auto-generated constructor stub
	}

	public MyLectureVideoList(String sNo) {
		super();
		this.sNo = sNo;
	}

	public String getsNo() {
		return sNo;
	}

	public void setsNo(String sNo) {
		this.sNo = sNo;
	}

	@Override
	public String toString() {
		return "MyLectureVideoList [sNo=" + sNo + "]";
	}
	
	

}
