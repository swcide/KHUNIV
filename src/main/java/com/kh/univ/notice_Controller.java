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
public class notice_Controller {

	private static final Logger logger = LoggerFactory.getLogger(notice_Controller.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	

	
	@RequestMapping(value = "gener_notice.do", method = RequestMethod.GET)
	public String gener_notice(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate );

		return "notice/gener_notice";
	}
	
	@RequestMapping(value = "gener_notice_write.do", method = RequestMethod.GET)
	public String gener_notice_write(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate );

		return "notice/gener_notice_write";
	}
	@RequestMapping(value = "gener_notice_detail.do", method = RequestMethod.GET)
	public String gener_notice_detail(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate );

		return "notice/gener_notice_detail";
	}
	
	@RequestMapping(value = "dept_notice_detail.do", method = RequestMethod.GET)
	public String dept_notice_detail(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate );

		return "notice/dept_notice_detail";
	}
	
	@RequestMapping(value = "dept_notice_write.do", method = RequestMethod.GET)
	public String dept_notice_write(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate );

		return "notice/dept_notice_write";
	}
	
	

}
