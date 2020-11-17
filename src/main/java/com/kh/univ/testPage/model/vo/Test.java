package com.kh.univ.testPage.model.vo;

public class Test {
	
	private String tNo;
	private String pNo;
	private String cNo;     	// 클래스번호	
	private String cName;   	// 클래스 이름
	private int qNo; 			// 문제 번호
	private String qTitle;		// 문제 제목
	private String qContent1;	// 문제 1
	private String qContent2;	// 문제 2
	private String qContent3;   // 문제 3
	private String qContent4;	// 문제 4
	private int qAnswer;		// 답
	private int qWorth;			// 배점(qPoint)
	private int qId;
	
	
	
	public Test() {
		super();
		// TODO Auto-generated constructor stub
	}



	



	public int getqId() {
		return qId;
	}







	public void setqId(int qId) {
		this.qId = qId;
	}







	public Test(String tNo, String pNo, String cNo, String cName, int qNo, String qTitle, String qContent1,
			String qContent2, String qContent3, String qContent4, int qAnswer, int qWorth, int qId) {
		super();
		this.tNo = tNo;
		this.pNo = pNo;
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
		this.qId = qId;
	}







	public String gettNo() {
		return tNo;
	}



	public void settNo(String tNo) {
		this.tNo = tNo;
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
		return "Test [tNo=" + tNo + ", pNo=" + pNo + ", cNo=" + cNo + ", cName=" + cName + ", qNo=" + qNo + ", qTitle="
				+ qTitle + ", qContent1=" + qContent1 + ", qContent2=" + qContent2 + ", qContent3=" + qContent3
				+ ", qContent4=" + qContent4 + ", qAnswer=" + qAnswer + ", qWorth=" + qWorth + ", qId=" + qId
				+ ", getqId()=" + getqId() + ", gettNo()=" + gettNo() + ", getpNo()=" + getpNo() + ", getcNo()="
				+ getcNo() + ", getcName()=" + getcName() + ", getqNo()=" + getqNo() + ", getqTitle()=" + getqTitle()
				+ ", getqContent1()=" + getqContent1() + ", getqContent2()=" + getqContent2() + ", getqContent3()="
				+ getqContent3() + ", getqContent4()=" + getqContent4() + ", getqAnswer()=" + getqAnswer()
				+ ", getqWorth()=" + getqWorth() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}




	
	
	
	

}
