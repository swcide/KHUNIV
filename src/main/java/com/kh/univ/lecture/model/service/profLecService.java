package com.kh.univ.lecture.model.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import com.kh.univ.common.PageInfo;
import com.kh.univ.lecture.model.vo.Attendance;
import com.kh.univ.lecture.model.vo.ClassTest;
import com.kh.univ.lecture.model.vo.LectureClass;
import com.kh.univ.lecture.model.vo.LectureHomeWork;
import com.kh.univ.lecture.model.vo.LectureList;
import com.kh.univ.lecture.model.vo.LecturePlan;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;
import com.kh.univ.lecture.model.vo.LectureStudent;
import com.kh.univ.lecture.model.vo.SemePoint;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.testPage.model.vo.HomeworkGrade;
import com.kh.univ.testPage.model.vo.Test;

/**
 * @author admin
 *
 */
public interface profLecService {

	/**
	 * 내 동영상 강의 목록 첫페이지 출력 값 호출
	 * @param pNo
	 * @return
	 */
	ArrayList<LectureClass> selectValue(String pNo);
	
	/**
	 * 내 강의 목록 첫페이지 출력 값 호출
	 * @param session 
	 * @return
	 */
	ArrayList<LectureList> selectList(HttpSession session);

	/**
	 * 강의 등록 페이지
	 * @param cNo
	 * @return
	 */
	ArrayList<LecturePlanWeek> lectureVideo(String classNo);

	/**
	 * 강의등록 로직
	 * @param lpw
	 * @return
	 */
	int lectureVideoInsert(LecturePlanWeek lpw);

	/**
	 * 강의 삭제
	 * @param lpw
	 * @return
	 */
	int lectureVideoDelete(LecturePlanWeek lpw);
	

	/**
	 * 강의 수정
	 * @param lpw
	 * @return
	 */
	int lectureVideoUpdate(LecturePlanWeek lpw);
	
	/**
	 * ㅅㅂ
	 * @param lpw
	 * @return
	 */
	LecturePlanWeek updateAfter(LecturePlanWeek lpw);
	ArrayList<LecturePlanWeek> selectSyllaOne2(String classNo);

	LecturePlan selectSyllaOne1(String classNo);
	
	LecturePlan selectSyllainsertform(String pNo);

	ArrayList<LectureList> SyllaPlanList(Professor pNo);
	
	//==========================================================

	int prof_Syllabus_LectureUpdate(LecturePlan lp);
	/**
	 * @param lpw
	 * @return
	 */
	
	ArrayList<LecturePlanWeek> prof_Syllabus_LectureWeekSelect(LectureList ll);

	LecturePlan prof_Syllabus_LectureSelect(LectureList ll);
	
	
//-------------------강의동 교수 시험 ---------------------------
	


	ArrayList<ClassTest> classSelectList(Professor p, PageInfo pi);

	int getListCount(Professor p);

	int insertTestSchedule(ClassTest ct);

	ArrayList<Test> selectClassList(String tNo);

	int updateTest(Test t);

	int insertTest(Test t);

	ClassTest selectClassOne(String tNo);

	int deleteTest(Test t);

	int updateTestSchedule(ClassTest ct);

	Test selectTest(int qId);

	ArrayList<Test> takeClassList(Test t1);

	int takeAddQ(ArrayList<Test> tArr);

	ArrayList<ClassTest> quizSelectList(Professor p, PageInfo pi);
	

	ArrayList<LectureList> hSelectList(Professor p);

	int insertHomework(LectureHomeWork lh);

	ArrayList<LectureHomeWork> selectHList(LectureHomeWork lh);

	ArrayList<LecturePlanWeek> selectSeList(HomeworkGrade gb);


	

	ArrayList<Test> takeQList(int qId);
	
	
	int EvaluationInsert(HomeworkGrade gb);
	
	ArrayList<HomeworkGrade> hList(HomeworkGrade gb);
	
	/**
	 * 평가 뷰 체크용
	 * @param gb
	 * @return
	 */
	ArrayList<HomeworkGrade> SelectHGList(HomeworkGrade gb);
	
	

	
	// 교수용 강의 리스트(학생관리용 리스트) 1단계
	ArrayList<Attendance> AttendanceList(String pNo);
	
	// 교수용 학생 리스트(학생리스트) 
	ArrayList<Attendance> StudentAttendList(LectureList ll);
	
	// 교수용 학생 디테일 
	ArrayList<LectureStudent> lectureStudentDetail(LectureStudent ls);
	
	// 출석점수 배점용 모달 팝업 출석점수 
	LecturePlan lectureAttendancePointMax(LecturePlan lp);

	int attendancePointUpdate(SemePoint sp);

	SemePoint studentSemesterPoint(SemePoint sp);
	
	





	
	
	
	
	



	

}
