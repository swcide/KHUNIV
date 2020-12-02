package com.kh.univ.lecture.model.vo;

// 교수용 강의계획서
// 학생용 강의계획서 
public class attPointsDTO{
	
	private String classNo;			// 강의번호
	private String attendancePoints;	// 과목의 출석 배점 
	private String pNo;				// 교수번호
	private String year;			// 현재 년도
	private String semesterNo;		// 현재 학기
	private String sNo;				// 학생번호
	
	public attPointsDTO() {
	}

	public attPointsDTO(String classNo, String attendancePoints, String pNo, String year, String semesterNo, String sNo) {
		this.classNo = classNo;
		this.attendancePoints = attendancePoints;
		this.pNo = pNo;
		this.year = year;
		this.semesterNo = semesterNo;
		this.sNo = sNo;
	}

	public String getClassNo() {
		return classNo;
	}

	public void setClassNo(String classNo) {
		this.classNo = classNo;
	}

	public String getAttendancePoints() {
		return attendancePoints;
	}

	public void setAttendancePoints(String attendancePoints) {
		this.attendancePoints = attendancePoints;
	}

	public String getpNo() {
		return pNo;
	}

	public void setpNo(String pNo) {
		this.pNo = pNo;
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

	public String getsNo() {
		return sNo;
	}

	public void setsNo(String sNo) {
		this.sNo = sNo;
	}

	@Override
	public String toString() {
		return "LecturePlan [classNo=" + classNo + ", attendancePoints=" + attendancePoints + ", pNo=" + pNo + ", year=" + year + ", semesterNo="
				+ semesterNo + ", sNo=" + sNo + "]";
	}
	
	
	
	
	

	




	
	
}
