package com.kh.univ.lecture.model.vo;

import java.sql.Date;

public class LecturePlanWeek {
	
	// 과목 번호
	private String classNo;
	
	// 강의 주차별
	private String lecNo;
	
	//아래로는 강의 주차별 제목
	private String lecName; 
	
	// 다운로드 가능한 주차별 참고자료 경로
	private String lecReference;
	
	//강의 설명
	private String lecExplanation;
	
	//강의 비디오
	private String lecVideo;
	
	//강의 비디오 업로드 일자
	private Date lecVideoCreateDate;
	

	public LecturePlanWeek() {
	}


	public LecturePlanWeek(String classNo, String lecNo, String lecName, String lecReference, String lecExplanation, String lecVideo, Date lecVideoCreateDate) {
		super();
		this.classNo = classNo;
		this.lecNo = lecNo;
		this.lecName = lecName;
		this.lecReference = lecReference;
		this.lecExplanation = lecExplanation;
		this.lecVideo = lecVideo;
		this.lecVideoCreateDate = lecVideoCreateDate;
	}


	public String getClassNo()
		{
			return classNo;
		}


	public void setClassNo(String classNo)
		{
			this.classNo = classNo;
		}


	public String getLecNo()
		{
			return lecNo;
		}


	public void setLecNo(String lecNo)
		{
			this.lecNo = lecNo;
		}


	public String getLecName()
		{
			return lecName;
		}


	public void setLecName(String lecName)
		{
			this.lecName = lecName;
		}


	public String getLecReference()
		{
			return lecReference;
		}


	public void setLecReference(String lecReference)
		{
			this.lecReference = lecReference;
		}


	public String getLecExplanation()
		{
			return lecExplanation;
		}


	public void setLecExplanation(String lecExplanation)
		{
			this.lecExplanation = lecExplanation;
		}


	public String getLecVideo()
		{
			return lecVideo;
		}


	public void setLecVideo(String lecVideo)
		{
			this.lecVideo = lecVideo;
		}


	public Date getLecVideoCreateDate()
		{
			return lecVideoCreateDate;
		}


	public void setLecVideoCreateDate(Date lecVideoCreateDate)
		{
			this.lecVideoCreateDate = lecVideoCreateDate;
		}


	@Override
	public String toString()
		{
			return "LecturePlanWeek [classNo=" + classNo + ", lecNo=" + lecNo + ", lecName=" + lecName + ", lecReference=" + lecReference + ", lecExplanation=" + lecExplanation + ", lecVideo="
					+ lecVideo + ", lecVideoCreateDate=" + lecVideoCreateDate + "]";
		}

	
}
