package com.kh.univ;

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
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "ad_lect_list.do", method = RequestMethod.GET)
	public String ad_lec(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ad_register/ad_Lecture_List";
	}
	
	@RequestMapping(value = "ad_appl_stat.do", method = RequestMethod.GET)
	public String ad_appl_stat(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ad_register/ad_Application_Status";
	}
	
	@RequestMapping(value = "ad_syllabus.do", method = RequestMethod.GET)
	public String ad_syllabus(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ad_register/ad_Syllabus_Lecture";
	}
	
	@RequestMapping(value = "ad_lect_appl.do", method = RequestMethod.GET)
	public String ad_lect_appl(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ad_register/ad_Lecture_Application";
	}
	@RequestMapping(value = "ad_audit_lect_appl.do", method = RequestMethod.GET)
	public String ad_audit_lect_appl(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ad_register/ad_AuditLecture_Application";
	}
	@RequestMapping(value = "ad_point_search_list.do", method = RequestMethod.GET)
	public String point_Search_List(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ad_register/ad_Point_Search_List";
	}
	@RequestMapping(value = "ad_point_search.do", method = RequestMethod.GET)
	public String point_Search(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ad_register/ad_Point_Search";
	}
	@RequestMapping(value = "ad_leave_absence.do", method = RequestMethod.GET)
	public String leave_absence(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ad_register/ad_Leave_Absence";
	}
	
	@RequestMapping(value = "ad_leave_absence_check.do", method = RequestMethod.GET)
	public String leave_absence_check(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ad_register/ad_Leave_Absence_Check";
	}
	
	@RequestMapping(value = "ad_return_absence.do", method = RequestMethod.GET)
	public String return_absence(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ad_register/ad_Return_Absence";
	}
	
	@RequestMapping(value = "ad_return_absence_check.do", method = RequestMethod.GET)
	public String return_absence_check(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ad_register/ad_Return_Absence_Check";
	}
	@RequestMapping(value = "ad_deferment_graduation.do", method = RequestMethod.GET)
	public String deferment_graduation(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ad_register/ad_Deferment_Graduation";
	}
	
	@RequestMapping(value = "ad_deferment_graduation_check.do", method = RequestMethod.GET)
	public String deferment_graduation_check(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ad_register/ad_Deferment_Graduation_Check";
	}
	
	@RequestMapping(value = "ad_drop_absence.do", method = RequestMethod.GET)
	public String drop_absence(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ad_register/ad_Drop_Absence";
	}
	
	@RequestMapping(value = "ad_drop_absence_check.do", method = RequestMethod.GET)
	public String drop_absence_check(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ad_register/ad_Drop_Absence_Check";
	}
	
	@RequestMapping(value = "ad_tuition_bill.do", method = RequestMethod.GET)
	public String tuition_bill(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ad_register/ad_Tuition_Bill";
	}
	
	@RequestMapping(value = "ad_tuition_payment.do", method = RequestMethod.GET)
	public String tuition_payment(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ad_register/ad_Tuition_Payment";
	}
	
	@RequestMapping(value = "ad_tuition_payment_check.do", method = RequestMethod.GET)
	public String tuition_payment_check(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ad_register/ad_Tuition_Payment_Check";
	}
	
	// 작성중 
	@RequestMapping(value = "ad_certificate_list.do", method = RequestMethod.GET)
	public String certificate_list(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ad_register/ad_Certificate_List";
	}
	@RequestMapping(value = "ad_certificate_inschool.do", method = RequestMethod.GET)
	public String certificate_inschool(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ad_register/ad_Certificate_InSchool";
	}
	@RequestMapping(value = "ad_certificate_graduation.do", method = RequestMethod.GET)
	public String certificate_graduation(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ad_register/ad_Certificate_Graduation";
	}
	
	
	
	
}
