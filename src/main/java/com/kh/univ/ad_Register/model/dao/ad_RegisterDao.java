package com.kh.univ.ad_Register.model.dao;

import java.util.ArrayList;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.kh.univ.ad_Register.model.vo.Absence;
import com.kh.univ.ad_Register.model.vo.grdExp;
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

	///////////////////////////////////강의계획서 관리//////////////////////////////////////////////////
	// 강의 개설 리스트카운트
	public int getListCount(String dNo) {
		return sqlSession.selectOne("registerMapper.getLCount",dNo);
	}


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

	
	





	





	

}
