package com.kh.univ.ad_Register.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.ad_Register.model.dao.ad_RegisterDao;
import com.kh.univ.ad_Register.model.vo.Absence;
import com.kh.univ.ad_Register.model.vo.Certificate;
import com.kh.univ.ad_Register.model.vo.grdExp;
import com.kh.univ.common.PageInfo;
import com.kh.univ.lecture.model.vo.LectureList;
import com.kh.univ.lecture.model.vo.LecturePlan;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;

@Service("arService")
public class ad_RegisterServiceImpl implements ad_RegisterService{

	@Autowired
	private ad_RegisterDao arDao;


	/**
	 *휴학/복학 확인
	 */
	@Override
	public Absence absenceCheck(String sNo)
		{
			return arDao.absenceCheck(sNo);
		}

	@Override
	public grdExp graduationDelayCheck(String sNo)
		{
			return arDao.graduationDelayCheck(sNo);
		}

	/**
	 *휴학 신청
	 */
	@Override
	public int leave_absence_apply(Absence ab)
		{
			return arDao.leave_absence_apply(ab);
		}
	
	/**
	 *복학 신청
	 */
	@Override
	public int return_absence_apply(Absence ab)
		{
			return arDao.return_absence_apply(ab);
		}
	
	/**
	 * 졸업유예 신청
	 */
	@Override
	public int ad_deferment_graduation_apply(grdExp ge)
		{
			return arDao.ad_deferment_graduation_apply(ge);
		}

	
	/**
	 *증명서 발급 전 학생 정보 출력 테이블
	 */
	@Override
	public grdExp certificate_list(String sNo)
		{
			return arDao.certificate_list(sNo);
		}

	/**
	 * 재학증명서 발급
	 */
	@Override
	public Certificate certificate_inschool(String sNo)
		{
			return arDao.certificate_inschool(sNo);
		}
	@Override
	public int getListCount(String dNo) {
		return arDao.getListCount(dNo);
	}

	@Override
	public ArrayList<LectureList> selectList1(String dNo) {
		return arDao.selectList1(dNo);
	}

	@Override
	public ArrayList<LectureList> selectList2(String dNo) {
		return arDao.selectList2(dNo);
	}

	@Override
	public LecturePlan selectSyllaOne1(LectureList ll) {
		return arDao.selectSyllaOne1(ll);
	}

	@Override
	public ArrayList<LecturePlanWeek> selectSyllaOne2(LectureList ll) {
		return arDao.selectSyllaOne2(ll);
	}

	@Override
	public int ad_drop_absence_apply(grdExp ge)
		{
			return arDao.ad_drop_absence_apply(ge);
		}

	




	


	

	
	
}
