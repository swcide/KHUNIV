package com.kh.univ;

import java.io.IOException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.univ.lecture.controller.prof_LectureController;
import com.kh.univ.lecture.model.service.profLecService;
import com.kh.univ.lecture.model.vo.LectureClass;
import com.kh.univ.member.model.vo.Professor;
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
		
		// 공지사항 탑5 불러오기
		ArrayList<Notice> nList = nService.selectTopList();
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
	
	
		
	
	@Autowired
	profLecService plService;
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "prof_main.do")
	public void  prof_main(HttpSession session,HttpServletResponse response) throws JsonIOException, IOException {
	
		response.setContentType("application/json; charset=UTF-8"); 
		
		Professor p = (Professor) session.getAttribute("loginProf");
		String pNo = p.getpNo();
		
		// 내강의목록 탑5 불러오기
		ArrayList<LectureClass> aLc = plService.selectValue(pNo);
		System.out.println("aLc: " + aLc);
	
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(aLc,response.getWriter());
	}
	
	
	
	
	
	
	
	@RequestMapping(value = "emp.do")
	public String emp(Model model) {
		return "univ_life/emp_center";
	}

	@RequestMapping(value = "ad_main.do", method = RequestMethod.GET)
	public String ad_main() {
		
		return "administration_main";
	}
	
	@RequestMapping(value="pwSearch.do")
	public String pwSearch() {
			return "member/pwSearch";
	}
}
