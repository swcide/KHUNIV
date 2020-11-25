package com.kh.univ.testPage.model.vo;

public class GradeBefore {
	
	private String tNo;
	private String sNo;
	private String pNo;
	private String cNo;
	private int quiz;
	private int homework;
	private int homeworkweek;
	private int homeworkAll;
	private int fTest;
	private int mTest;
	
	
	
	
	public GradeBefore() {
		super();
		// TODO Auto-generated constructor stub
	}



	public GradeBefore(String tNo, String sNo, String pNo, String cNo, int quiz, int homework, int homeworkAll,
			int fTest, int mTest) {
		super();
		this.tNo = tNo;
		this.sNo = sNo;
		this.pNo = pNo;
		this.cNo = cNo;
		this.quiz = quiz;
		this.homework = homework;
		this.homeworkAll = homeworkAll;
		this.fTest = fTest;
		this.mTest = mTest;
	}









	public int getHomeworkAll() {
		return homeworkAll;
	}



	public void setHomeworkAll(int homeworkAll) {
		this.homeworkAll = homeworkAll;
	}



	public int getQuiz() {
		return quiz;
	}



	public void setQuiz(int quiz) {
		this.quiz = quiz;
	}



	public String gettNo() {
		return tNo;
	}



	public void settNo(String tNo) {
		this.tNo = tNo;
	}



	public String getsNo() {
		return sNo;
	}



	public void setsNo(String sNo) {
		this.sNo = sNo;
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



	public int getHomework() {
		return homework;
	}



	public void setHomework(int homework) {
		this.homework = homework;
	}



	public int getfTest() {
		return fTest;
	}



	public void setfTest(int fTest) {
		this.fTest = fTest;
	}



	public int getmTest() {
		return mTest;
	}



	public void setmTest(int mTest) {
		this.mTest = mTest;
	}



	@Override
	public String toString() {
		return "GradeBefore [tNo=" + tNo + ", sNo=" + sNo + ", pNo=" + pNo + ", cNo=" + cNo + ", quiz=" + quiz
				+ ", homework=" + homework + ", homeworkAll=" + homeworkAll + ", fTest=" + fTest + ", mTest=" + mTest
				+ "]";
	}



	



	
	
	
}
