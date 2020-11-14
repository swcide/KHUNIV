package com.kh.univ.lecture.model.vo;

public class Attendance {
	
	protected String classType; 		    // 이수구분 					tb-class
	protected String className; 		    // 과목명 					tb-class
	protected int firstWeek; 				// 1주차 출석 					TB_ATTENDANCE
	protected int secondndWeek; 			// 2주차 출석 					TB_ATTENDANCE
	protected int thirdWeek; 				// 3주차 출석 					TB_ATTENDANCE
	protected int fourththWeek; 			// 4주차 출석 					TB_ATTENDANCE
	protected int fifththWeek; 				// 5주차 출석 					TB_ATTENDANCE
	protected int sixththWeek; 				// 6주차 출석 					TB_ATTENDANCE
	protected int seventhWeek; 				// 7주차 출석 					TB_ATTENDANCE
	protected int eighthWeek; 				// 8주차 출석 					TB_ATTENDANCE
	protected int ninfifthWeek; 			// 9주차 출석 					TB_ATTENDANCE
	protected int tenthWeek; 				// 10주차 출석 				TB_ATTENDANCE
	protected int eleventhWeek; 			// 11주차 출석 				TB_ATTENDANCE
	protected int twelfthWeek; 				// 12주차 출석 				TB_ATTENDANCE
	
	
	public Attendance() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Attendance(String classType, String className, int firstWeek, int secondndWeek, int thirdWeek,
			int fourththWeek, int fifththWeek, int sixththWeek, int seventhWeek, int eighthWeek, int ninfifthWeek,
			int tenthWeek, int eleventhWeek, int twelfthWeek) {
		super();
		this.classType = classType;
		this.className = className;
		this.firstWeek = firstWeek;
		this.secondndWeek = secondndWeek;
		this.thirdWeek = thirdWeek;
		this.fourththWeek = fourththWeek;
		this.fifththWeek = fifththWeek;
		this.sixththWeek = sixththWeek;
		this.seventhWeek = seventhWeek;
		this.eighthWeek = eighthWeek;
		this.ninfifthWeek = ninfifthWeek;
		this.tenthWeek = tenthWeek;
		this.eleventhWeek = eleventhWeek;
		this.twelfthWeek = twelfthWeek;
	}


	public String getClassType() {
		return classType;
	}


	public void setClassType(String classType) {
		this.classType = classType;
	}


	public String getClassName() {
		return className;
	}


	public void setClassName(String className) {
		this.className = className;
	}


	public int getFirstWeek() {
		return firstWeek;
	}


	public void setFirstWeek(int firstWeek) {
		this.firstWeek = firstWeek;
	}


	public int getSecondndWeek() {
		return secondndWeek;
	}


	public void setSecondndWeek(int secondndWeek) {
		this.secondndWeek = secondndWeek;
	}


	public int getThirdWeek() {
		return thirdWeek;
	}


	public void setThirdWeek(int thirdWeek) {
		this.thirdWeek = thirdWeek;
	}


	public int getFourththWeek() {
		return fourththWeek;
	}


	public void setFourththWeek(int fourththWeek) {
		this.fourththWeek = fourththWeek;
	}


	public int getFifththWeek() {
		return fifththWeek;
	}


	public void setFifththWeek(int fifththWeek) {
		this.fifththWeek = fifththWeek;
	}


	public int getSixththWeek() {
		return sixththWeek;
	}


	public void setSixththWeek(int sixththWeek) {
		this.sixththWeek = sixththWeek;
	}


	public int getSeventhWeek() {
		return seventhWeek;
	}


	public void setSeventhWeek(int seventhWeek) {
		this.seventhWeek = seventhWeek;
	}


	public int getEighthWeek() {
		return eighthWeek;
	}


	public void setEighthWeek(int eighthWeek) {
		this.eighthWeek = eighthWeek;
	}


	public int getNinfifthWeek() {
		return ninfifthWeek;
	}


	public void setNinfifthWeek(int ninfifthWeek) {
		this.ninfifthWeek = ninfifthWeek;
	}


	public int getTenthWeek() {
		return tenthWeek;
	}


	public void setTenthWeek(int tenthWeek) {
		this.tenthWeek = tenthWeek;
	}


	public int getEleventhWeek() {
		return eleventhWeek;
	}


	public void setEleventhWeek(int eleventhWeek) {
		this.eleventhWeek = eleventhWeek;
	}


	public int getTwelfthWeek() {
		return twelfthWeek;
	}


	public void setTwelfthWeek(int twelfthWeek) {
		this.twelfthWeek = twelfthWeek;
	}


	@Override
	public String toString() {
		return "Attendance [classType=" + classType + ", className=" + className + ", firstWeek=" + firstWeek
				+ ", secondndWeek=" + secondndWeek + ", thirdWeek=" + thirdWeek + ", fourththWeek=" + fourththWeek
				+ ", fifththWeek=" + fifththWeek + ", sixththWeek=" + sixththWeek + ", seventhWeek=" + seventhWeek
				+ ", eighthWeek=" + eighthWeek + ", ninfifthWeek=" + ninfifthWeek + ", tenthWeek=" + tenthWeek
				+ ", eleventhWeek=" + eleventhWeek + ", twelfthWeek=" + twelfthWeek + "]";
	}
	
	
	
	
	
	

}
