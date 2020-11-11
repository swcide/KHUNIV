package com.kh.univ.ad_Register.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ad_Register_Controller {
	
	private static final Logger logger = LoggerFactory.getLogger(ad_Register_Controller.class);
	
	
	/**
	 * 학사행정 > 학적관리 > 강의 > 강의개설정보
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "ad_lect_list.do")
	public String ad_lec(Locale locale, Model model) {
		
		return "ad_register/ad_Lecture_List";
	}
	
	/**
	 * 학사행정 > 학적관리 > 강의 > 수강신청현황
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "ad_appl_stat.do")
	public String ad_appl_stat(Locale locale, Model model) {
		
		return "ad_register/ad_Application_Status";
	}
	
	/**
	 * 학사행정 > 학적관리 > 강의 > 강의계획서
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "ad_syllabus.do")
	public String ad_syllabus(Locale locale, Model model) {
		
		return "ad_register/ad_Syllabus_Lecture";
	}
	
	/**
	 * 학사행정 > 학적관리 > 강의 > 수강신청
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "ad_lect_appl.do")
	public String ad_lect_appl(Locale locale, Model model) {
		
		return "ad_register/ad_Lecture_Application";
	}
	/**
	 * 학사행정 > 학적관리 > 강의 > 청강신청
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "ad_audit_lect_appl.do")
	public String ad_audit_lect_appl(Locale locale, Model model) {
		
		return "ad_register/ad_AuditLecture_Application";
	}
	
	/**
	 * 학사행정 > 학적관리 > 강의 > 성적조회
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "ad_point_search_list.do")
	public String point_Search_List(Locale locale, Model model) {
		
		return "ad_register/ad_Point_Search_List";
	}
	
	/**
	 * 학사행정 > 학적관리 > 강의 > 학기별 성적 조회 디테일
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "ad_point_search.do")
	public String point_Search(Locale locale, Model model) {
		
		return "ad_register/ad_Point_Search";
	}
	
	/**
	 * 학사행정 > 학적관리 > 강의 > 휴학신청 바로가기
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "ad_leave_absence.do")
	public String leave_absence(Locale locale, Model model) {
		
		return "ad_register/ad_Leave_Absence";
	}
	
	/**
	 * 학사행정 > 학적관리 > 강의 > 휴학신청 확인
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "ad_leave_absence_check.do")
	public String leave_absence_check(Locale locale, Model model) {
		
		return "ad_register/ad_Leave_Absence_Check";
	}
	
	/**
	 * 학사행정 > 학적관리 > 강의 > 복학신청 바로가기
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "ad_return_absence.do")
	public String return_absence(Locale locale, Model model) {
		
		return "ad_register/ad_Return_Absence";
	}
	
	/**
	 * 학사행정 > 학적관리 > 강의 > 복학신청 확인
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "ad_return_absence_check.do")
	public String return_absence_check(Locale locale, Model model) {
		
		return "ad_register/ad_Return_Absence_Check";
	}
	
	/**
	 * 학사행정 > 학적관리 > 강의 > 졸업유예 바로가기
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "ad_deferment_graduation.do")
	public String deferment_graduation(Locale locale, Model model) {
		
		return "ad_register/ad_Deferment_Graduation";
	}
	
	/**
	 * 학사행정 > 학적관리 > 강의 > 졸업유예 확인
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "ad_deferment_graduation_check.do")
	public String deferment_graduation_check(Locale locale, Model model) {
		
		return "ad_register/ad_Deferment_Graduation_Check";
	}
	
	/**
	 * 학사행정 > 학적관리 > 강의 > 자퇴 바로가기
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "ad_drop_absence.do")
	public String drop_absence(Locale locale, Model model) {
		
		return "ad_register/ad_Drop_Absence";
	}
	
	/**
	 * 학사행정 > 학적관리 > 강의 > 자퇴 확인
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "ad_drop_absence_check.do")
	public String drop_absence_check(Locale locale, Model model) {
		
		return "ad_register/ad_Drop_Absence_Check";
	}
	
	/**
	 * 학사행정 > 학적관리 > 강의 > 등록금 고지서
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "ad_tuition_bill.do")
	public String tuition_bill(Locale locale, Model model) {
		
		return "ad_register/ad_Tuition_Bill";
	}
	
	/**
	 * 학사행정 > 학적관리 > 강의 > 등록금 납부
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "ad_tuition_payment.do")
	public String tuition_payment(Locale locale, Model model) {
		
		return "ad_register/ad_Tuition_Payment";
	}
	
	/**
	 * 학사행정 > 학적관리 > 강의 > 등록금 납부 확인
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "ad_tuition_payment_check.do")
	public String tuition_payment_check(Locale locale, Model model) {
		
		return "ad_register/ad_Tuition_Payment_Check";
	}
	
	
	/**
	 * 학사행정 > 학적관리 > 강의 > 증명서 발급 목록
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "ad_certificate_list.do")
	public String certificate_list(Locale locale, Model model) {
		
		return "ad_register/ad_Certificate_List";
	}
	
	/**
	 * 학사행정 > 학적관리 > 강의 > 재학증명서 확인
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "ad_certificate_inschool.do")
	public String certificate_inschool(Locale locale, Model model) {
		
		return "ad_register/ad_Certificate_InSchool";
	}
	
	/**
	 * 학사행정 > 학적관리 > 강의 > 졸업증명서 확인
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "ad_certificate_graduation.do")
	public String certificate_graduation(Locale locale, Model model) {
		
		return "ad_register/ad_Certificate_Graduation";
	}
	
	
	
	
}
