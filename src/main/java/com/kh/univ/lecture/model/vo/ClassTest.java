package com.kh.univ.lecture.model.vo;

import java.sql.Date;
import java.sql.Timestamp;

public class ClassTest {
	private String tNo;        	// 시험 번호
	private String tType;   	// 시험 타입
	private String tTitle;  	// 시험 제목
	private String pNo;			// 교수 번호
	private String cNo;     	// 클래스번호	
	private String cName;   	// 클래스 이름
	private String openDate;		// 공개일
	private String openTime;	// 공개일
	private Date startDate; 	// 시작일
	private Date endDate;   	// 종료일
	private int tTime;      	// 제한시간
	
	public ClassTest() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ClassTest(String tNo, String tType, String tTitle, String pNo, String cNo, String cName, String openDate,
			String openTime, Date startDate, Date endDate, int tTime) {
		super();
		this.tNo = tNo;
		this.tType = tType;
		this.tTitle = tTitle;
		this.pNo = pNo;
		this.cNo = cNo;
		this.cName = cName;
		this.openDate = openDate;
		this.openTime = openTime;
		this.startDate = startDate;
		this.endDate = endDate;
		this.tTime = tTime;
	}

	
	public String gettNo() {
		return tNo;
	}

	public void settNo(String tNo) {
		this.tNo = tNo;
	}

	public String gettType() {
		return tType;
	}

	public void settType(String tType) {
		this.tType = tType;
	}

	public String gettTitle() {
		return tTitle;
	}

	public void settTitle(String tTitle) {
		this.tTitle = tTitle;
	}

	public String getpNo() {
		return pNo;
	}

	public void setpNo(String pNo) {
		this.pNo = pNo;
	}

	public String getcNo() {
		return cNo;
	}

	public void setcNo(String cNo) {
		this.cNo = cNo;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public String getOpenDate() {
		return openDate;
	}

	public void setOpenDate(String openDate) {
		this.openDate = openDate;
	}

	public String getOpenTime() {
		return openTime;
	}

	public void setOpenTime(String openTime) {
		this.openTime = openTime;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public int gettTime() {
		return tTime;
	}

	public void settTime(int tTime) {
		this.tTime = tTime;
	}

	@Override
	public String toString() {
		return "ClassTest [tNo=" + tNo + ", tType=" + tType + ", tTitle=" + tTitle + ", pNo=" + pNo + ", cNo=" + cNo
				+ ", cName=" + cName + ", openDate=" + openDate + ", openTime=" + openTime + ", startDate=" + startDate
				+ ", endDate=" + endDate + ", tTime=" + tTime + "]";
	}



	
	


	

	



	
	




	
}
