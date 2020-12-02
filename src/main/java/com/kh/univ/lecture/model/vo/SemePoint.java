package com.kh.univ.lecture.model.vo;

// 교수용 강의계획서
// 학생용 강의계획서 
public class SemePoint{
	
	private String sNo;					// 학생번호
	private String year;				// 현재 년도
	private String semesterNo;			// 현재 학기
	private String classNo;				// 강의번호
	private String midTestPoints;		// 중간고사 점수
	private String finalTestPoints;		// 기말고사 점수
	private String reportPoints;			// 과제 점수
	private String attendancePoints;	// 과목의 출석 배점 
	private String totalPoints;			// 총점
	private String pNo;					// 교수번호
	
	public SemePoint() {
	}

	public SemePoint(String sNo, String year, String semesterNo, String classNo, String midTestPoints, String finalTestPoints,
			String reportPoints, String attendancePoints, String totalPoints, String pNo) {
		this.sNo = sNo;
		this.year = year;
		this.semesterNo = semesterNo;
		this.classNo = classNo;
		this.midTestPoints = midTestPoints;
		this.finalTestPoints = finalTestPoints;
		this.reportPoints = reportPoints;
		this.attendancePoints = attendancePoints;
		this.totalPoints = totalPoints;
		this.pNo = pNo;
	}

	public String getsNo() {
		return sNo;
	}

	public void setsNo(String sNo) {
		this.sNo = sNo;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getSemesterNo() {
		return semesterNo;
	}

	public void setSemesterNo(String semesterNo) {
		this.semesterNo = semesterNo;
	}

	public String getClassNo() {
		return classNo;
	}

	public void setClassNo(String classNo) {
		this.classNo = classNo;
	}

	public String getMidTestPoints() {
		return midTestPoints;
	}

	public void setMidTestPoints(String midTestPoints) {
		this.midTestPoints = midTestPoints;
	}

	public String getFinalTestPoints() {
		return finalTestPoints;
	}

	public void setFinalTestPoints(String finalTestPoints) {
		this.finalTestPoints = finalTestPoints;
	}

	public String getReportPoints() {
		return reportPoints;
	}

	public void setReportPoints(String reportPoints) {
		this.reportPoints = reportPoints;
	}

	public String getAttendancePoints() {
		return attendancePoints;
	}

	public void setAttendancePoints(String attendancePoints) {
		this.attendancePoints = attendancePoints;
	}

	public String getTotalPoints() {
		return totalPoints;
	}

	public void setTotalPoints(String totalPoints) {
		this.totalPoints = totalPoints;
	}

	public String getpNo() {
		return pNo;
	}

	public void setpNo(String pNo) {
		this.pNo = pNo;
	}

	@Override
	public String toString() {
		return "SemePoint [sNo=" + sNo + ", year=" + year + ", semesterNo=" + semesterNo + ", classNo=" + classNo + ", midTestPoints="
				+ midTestPoints + ", finalTestPoints=" + finalTestPoints + ", reportPoints=" + reportPoints + ", attendancePoints=" + attendancePoints
				+ ", totalPoints=" + totalPoints + ", pNo=" + pNo + "]";
	}
	
	
	
	
	
	
	
	

	




	
	
}
