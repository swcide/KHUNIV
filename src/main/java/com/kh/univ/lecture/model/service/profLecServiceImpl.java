package com.kh.univ.lecture.model.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.common.PageInfo;
import com.kh.univ.lecture.model.dao.profLecDao;
import com.kh.univ.lecture.model.vo.Attendance;
import com.kh.univ.lecture.model.vo.ClassTest;
import com.kh.univ.lecture.model.vo.LectureClass;
import com.kh.univ.lecture.model.vo.LectureHomeWork;
import com.kh.univ.lecture.model.vo.LectureList;
import com.kh.univ.lecture.model.vo.LecturePlan;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;
import com.kh.univ.lecture.model.vo.LectureStudent;
import com.kh.univ.lecture.model.vo.SemePoint;
import com.kh.univ.lecture.model.vo.attPointsDTO;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.testPage.model.vo.HomeworkGrade;
import com.kh.univ.testPage.model.vo.Test;

@Service("plService")
public class profLecServiceImpl implements profLecService {

	@Autowired
	profLecDao plDao;

	/**
	 * 내동영상강의목록 클릭 시 DB 출력
	 */
	@Override
	public ArrayList<LectureClass> selectValue(String pNo)
		{
			return plDao.selectValue(pNo);
		}

	/**
	 *강의 업로드 화면
	 */
	@Override
	public ArrayList<LecturePlanWeek> lectureVideo(String classNo)
		{
			return plDao.lectureVideo(classNo);
		}

	/**
	 * 강의 업로드
	 */
	@Override
	public int lectureVideoInsert(LecturePlanWeek lpw)
		{
			return plDao.lectureVideoInsert(lpw);
		}

	/**
	 *강의 삭제
	 */
	@Override
	public int lectureVideoDelete(LecturePlanWeek lpw)
		{
			return plDao.lectureVideoDelete(lpw);
		}
	
	
	/**
	 * 강의 수정
	 */
	@Override
	public int lectureVideoUpdate(LecturePlanWeek lpw)
		{
			return plDao.lectureVideoUpdate(lpw);
		}

	@Override
	public ArrayList<LectureList> selectList(HttpSession session) {
		
		return plDao.selectList(session);
	}

	@Override
	public ArrayList<LecturePlanWeek> selectSyllaOne2(String classNo) {
		return plDao.selectSyllaOne2(classNo);
	}

	@Override
	public LecturePlan selectSyllaOne1(String classNo) {
		return plDao.selectSyllaOne1(classNo);
	}

	
	@Override
	public LecturePlan selectSyllainsertform(String pNo) {
		return plDao.selectSyllainsertform(pNo);
	}

	@Override
	public ArrayList<LectureList> SyllaPlanList(Professor pNo) {
		return plDao.SyllaPlanList(pNo);
	}



	@Override
	public LecturePlanWeek updateAfter(LecturePlanWeek lpw)
		{
			return plDao.updateAfter(lpw);
		}

	//==========================================================
	@Override
	public ArrayList<LecturePlanWeek> prof_Syllabus_LectureWeekSelect(LectureList ll) {
		return plDao.prof_Syllabus_LectureWeekSelect(ll);
	}

	@Override
	public LecturePlan prof_Syllabus_LectureSelect(LectureList ll) {
		return plDao.prof_Syllabus_LectureSelect(ll);

	}

	@Override
	public int prof_Syllabus_LectureUpdate(LecturePlan lp) {
		return plDao.prof_Syllabus_LectureUpdate(lp);
	}

//	-------------------------------강의동 시험 -------------------
	/**
	 * 
	 * 시험 리스트
	 *
	 */
	@Override
	public ArrayList<ClassTest> classSelectList(Professor p, PageInfo pi) {
		
		return plDao.classSelectList(p,pi);

	}

	/**
	 * 시험 수
	 */
	@Override
	public int getListCount(Professor p) {
		return plDao.getListCount(p);
	}

	/**
	 * 시헙 인서트
	 */
	@Override
	public int insertTestSchedule(ClassTest ct) {
		// TODO Auto-generated method stub
		return plDao.insertTestSchedule(ct);
	}
	@Override
	public int updateTestSchedule(ClassTest ct) {
		return plDao.updateTestSchedule(ct);
	}


	@Override
	public ArrayList<Test> selectClassList(String tNo) {
		// TODO Auto-generated method stub
		return plDao.selectClassList(tNo);
	}

	@Override
	public int updateTest(Test t) {
		// TODO Auto-generated method stub
		return plDao.updateTest(t);
	}

	@Override
	public int insertTest(Test t) {
		return plDao.insertTest(t);
	}

	@Override
	public ClassTest selectClassOne(String tNo) {
		return plDao.selectClassOne(tNo);
	}

	@Override
	public int deleteTest(Test t) {
		// TODO Auto-generated method stub
		return plDao.deleteTest(t);
	}

	@Override
	public Test selectTest(int qId) {
		return plDao.selectTest(qId);
	}

	@Override
	public ArrayList<Test> takeClassList(Test t1) {
		return plDao.takeClassList(t1);
	}

	@Override
	public int takeAddQ(ArrayList<Test> t) {
		return plDao.takeAddQ(t);
	}

	@Override
	public ArrayList<ClassTest> quizSelectList(Professor p, PageInfo pi) {
		// TODO Auto-generated method stub
		return plDao.quizSelectList(p,pi);
	}


	@Override
	public ArrayList<LectureList> hSelectList(Professor p) {
		return plDao.hSelectList(p);
	}

	@Override
	public int insertHomework(LectureHomeWork lh) {
		return plDao.insertHomework(lh);
	}

	@Override
	public ArrayList<LectureHomeWork> selectHList(LectureHomeWork lh) {
		return plDao.selectHList(lh);
	}

	@Override
	public ArrayList<LecturePlanWeek> selectSeList(HomeworkGrade lh) {
		return plDao.selectSeList(lh);
	}

	@Override
	public int EvaluationInsert(HomeworkGrade gb) {
		return plDao.EvaluationInsert(gb);
	}

	@Override
	public ArrayList<Test> takeQList(int qId) {
		return plDao.takeQList(qId);
	}

	// 교수의 내 강의 목록 1단계
	@Override
	public ArrayList<Attendance> AttendanceList(String pNo) {
		return plDao.selectAttendList(pNo);
	}
	// 교수의 내 강의 목록 2단계
	@Override
	public ArrayList<Attendance> StudentAttendList(LectureList ll) {
		return plDao.selectStudentAttendList(ll);
	}
	// 교수의 내 강의 목록 3단계
	@Override
	public ArrayList<LectureStudent> lectureStudentDetail(LectureStudent ls) {
		return plDao.selectlectureStudentDetail(ls);
	}
	// 교수의 내강의 목록 출석점수 배점 모달팝업
	@Override
	public LecturePlan lectureAttendancePointMax(LecturePlan lp) {
		return plDao.selectLectureAttendancePointMax(lp);
		
	}

	@Override
	public int attendancePointUpdate(attPointsDTO apDTO) {
		return plDao.updateStudentAttendancePoints(apDTO);
	}
	
	

	@Override
	public ArrayList<HomeworkGrade> hList(HomeworkGrade gb) {
		return plDao.hList(gb);
	}

	@Override
	public ArrayList<HomeworkGrade> SelectHGList(HomeworkGrade gb) {
		return plDao.SelectHGList(gb);
	}

	@Override
	public SemePoint studentSemesterPoint(SemePoint sp) {
		return plDao.studentSemesterPoint(sp);
	}

	

	
	


	
}
