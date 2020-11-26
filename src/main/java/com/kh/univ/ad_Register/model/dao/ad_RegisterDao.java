package com.kh.univ.ad_Register.model.dao;

import java.util.ArrayList;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.kh.univ.ad_Register.model.vo.Absence;
import com.kh.univ.ad_Register.model.vo.Certificate;
import com.kh.univ.ad_Register.model.vo.grdExp;
import com.kh.univ.ad_Register.model.vo.semesterPoint;
import com.kh.univ.lecture.model.vo.LectureList;
import com.kh.univ.lecture.model.vo.LecturePlan;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;

@Repository("adDao")
public class ad_RegisterDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	//휴학/복학 확인
	public Absence absenceCheck(String sNo)
		{
			return sqlSession.selectOne("registerMapper.absenceCheck",sNo);
		}
	//졸업유예 신청 확인
	public grdExp graduationDelayCheck(String sNo)
		{
			return sqlSession.selectOne("registerMapper.graduationDelayCheck",sNo);
		}
	//휴학 신청
	public int leave_absence_apply(Absence ab)
		{
			return sqlSession.update("registerMapper.absenceApply",ab);
		}
	//복학 신청
	public int return_absence_apply(Absence ab)
		{
			return sqlSession.update("registerMapper.returnApply",ab);
		}
	//졸업유예 신청
	public int ad_deferment_graduation_apply(grdExp ge)
		{
			return sqlSession.update("registerMapper.graduationDelayApply",ge);
		}
	//자퇴 신청
	public int ad_drop_absence_apply(grdExp ge)
		{
			return sqlSession.update("registerMapper.dropApply",ge);
		}

	// 등록금납부해야댐
	
	
	// 증명서발급 학생정보 테이블 출력
	public grdExp certificate_list(String sNo)
		{
			return sqlSession.selectOne("registerMapper.certificate_list",sNo);
		}
	
	// 재학증명서 발급 화면
	public Certificate certificate_inschool(String sNo)
		{
			return sqlSession.selectOne("registerMapper.certificate_inschool",sNo);
		}
	
	//졸업증명서 발급 화면
	public Certificate certificate_graduation(String sNo)
		{
			return sqlSession.selectOne("registerMapper.certificate_graduation",sNo);
		}
	///////////////////////////////////강의계획서 관리//////////////////////////////////////////////////

	// 강의 개설 정보 페이지
	public ArrayList<LectureList> selectList1(String dNo) {
		return (ArrayList)sqlSession.selectList("registerMapper.lecPList",dNo);
	}
	
	public ArrayList<LectureList> selectList2(String dNo) {
		return (ArrayList)sqlSession.selectList("registerMapper.lecPList2",dNo);
	
	}

	// 강의계획서 출력 팝업창
	// 상위부분
	public LecturePlan selectSyllaOne1(LectureList ll) {
		return sqlSession.selectOne("registerMapper.sylla1",ll);
	}
	//하위부분
	public ArrayList<LecturePlanWeek> selectSyllaOne2(LectureList ll) {
		return (ArrayList)sqlSession.selectList("registerMapper.sylla2",ll);
	}
	///////////////////////////////////////////////////////////////////////////////////////
	public ArrayList<semesterPoint> point_Search_List(String sNo)
		{
			return (ArrayList)sqlSession.selectList("registerMapper.pointSearchList",sNo);
		}
	public ArrayList<semesterPoint> point_Search(semesterPoint semp)
		{
			return (ArrayList)sqlSession.selectList("registerMapper.pointSearchDetail",semp);
		}
	public ArrayList<semesterPoint> point_Search_Top(semesterPoint semp)
		{
			return (ArrayList)sqlSession.selectList("registerMapper.pointSearchDetailTop",semp);
		}

	


	
	





	





	

}
