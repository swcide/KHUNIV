package com.kh.univ;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.notice.model.service.NoticeService;
import com.kh.univ.notice.model.vo.Notice;

/**
 * Handles requests for the application home page.
 */
@Controller
public class indexController {
	
	@Autowired
	NoticeService nService;
	
	private static final Logger logger = LoggerFactory.getLogger(indexController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "main.do", method = RequestMethod.GET)
	public ModelAndView  main( ModelAndView mv ) {
		
		
		
		
		ArrayList<Notice> nList = nService.selectTopList();
		
		System.out.println(nList);
		
		
		mv.addObject("nList",nList);
		mv.setViewName("main");
	
		return mv;
	
	}
	

	@RequestMapping(value = "login_page.do", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "member/login";
	}
	@RequestMapping(value = "admin.do")
	public String admin() {
			return "admin/admin";
	}
	
	@RequestMapping(value = "prof_main.do", method = RequestMethod.GET)
	public String prof_main() {
		
		return "professor_main";
	}
	
	@RequestMapping(value = "emp.do")
	public String emp(Model model) {
		return "univ_life/emp_center";
	}
}
