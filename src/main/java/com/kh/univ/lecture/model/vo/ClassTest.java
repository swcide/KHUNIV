package com.kh.univ.lecture.model.vo;

import java.sql.Date;

public class ClassTest {
	
	private String tType;   		// 시험 타입
	private String tTitle;  	// 시험 제목
	private int tNo;        	// 시험 번호
	private Date OpenDate;  	// 공개일
	private Date startDate; 	// 시작일
	private Date endDate;   	// 종료일
	private int tTime;      	// 제한시간
	private String cNo;     	// 클래스번호
	private String cName;   	// 클래스 이름
	private int qNo; 			// 문제 번호
	private String qTitle;		// 문제 제목
	private String qContent1;	// 문제 1
	private String qContent2;	// 문제 2
	private String qContent3;   // 문제 3
	private String qContent4;	// 문제 4
	private int qAnswer;			// 답
	private int qWorth;			// 배점(qPoint)

	
	
	public ClassTest() {
		super();
		// TODO Auto-generated constructor stub
	}



	public ClassTest(String tType, String tTitle, int tNo, Date openDate, Date startDate, Date endDate, int tTime,
			String cNo, String cName, int qNo, String qTitle, String qContent1, String qContent2, String qContent3,
			String qContent4, int qAnswer, int qWorth) {
		super();
		this.tType = tType;
		this.tTitle = tTitle;
		this.tNo = tNo;
		OpenDate = openDate;
		this.startDate = startDate;
		this.endDate = endDate;
		this.tTime = tTime;
		this.cNo = cNo;
		this.cName = cName;
		this.qNo = qNo;
		this.qTitle = qTitle;
		this.qContent1 = qContent1;
		this.qContent2 = qContent2;
		this.qContent3 = qContent3;
		this.qContent4 = qContent4;
		this.qAnswer = qAnswer;
		this.qWorth = qWorth;
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



	public int gettNo() {
		return tNo;
	}



	public void settNo(int tNo) {
		this.tNo = tNo;
	}



	public Date getOpenDate() {
		return OpenDate;
	}



	public void setOpenDate(Date openDate) {
		OpenDate = openDate;
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



	public int getqNo() {
		return qNo;
	}



	public void setqNo(int qNo) {
		this.qNo = qNo;
	}



	public String getqTitle() {
		return qTitle;
	}



	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}



	public String getqContent1() {
		return qContent1;
	}



	public void setqContent1(String qContent1) {
		this.qContent1 = qContent1;
	}



	public String getqContent2() {
		return qContent2;
	}



	public void setqContent2(String qContent2) {
		this.qContent2 = qContent2;
	}



	public String getqContent3() {
		return qContent3;
	}



	public void setqContent3(String qContent3) {
		this.qContent3 = qContent3;
	}



	public String getqContent4() {
		return qContent4;
	}



	public void setqContent4(String qContent4) {
		this.qContent4 = qContent4;
	}



	public int getqAnswer() {
		return qAnswer;
	}



	public void setqAnswer(int qAnswer) {
		this.qAnswer = qAnswer;
	}



	public int getqWorth() {
		return qWorth;
	}



	public void setqWorth(int qWorth) {
		this.qWorth = qWorth;
	}



	@Override
	public String toString() {
		return "ClassTest [tType=" + tType + ", tTitle=" + tTitle + ", tNo=" + tNo + ", OpenDate=" + OpenDate
				+ ", startDate=" + startDate + ", endDate=" + endDate + ", tTime=" + tTime + ", cNo=" + cNo + ", cName="
				+ cName + ", qNo=" + qNo + ", qTitle=" + qTitle + ", qContent1=" + qContent1 + ", qContent2="
				+ qContent2 + ", qContent3=" + qContent3 + ", qContent4=" + qContent4 + ", qAnswer=" + qAnswer
				+ ", qWorth=" + qWorth + "]";
	}

	
}
