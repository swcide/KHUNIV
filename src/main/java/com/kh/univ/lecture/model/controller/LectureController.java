package com.kh.univ.lecture.model.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.common.PageInfo;
import com.kh.univ.common.Pagination;
import com.kh.univ.lecture.model.service.LectureService;
import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.notice.model.service.NoticeService;
import com.kh.univ.notice.model.vo.Notice;

@Controller
public class LectureController{
	
	@Autowired
	   private LectureService lService;

	//   -------------------------- 학사공지 ------------------------------
	   /**
	    * 1.게시글 조회데스
	    * @param mv
	    * @param currentPage
	    * @return
	    */
	   @RequestMapping("LecList.do")
	   public ModelAndView LectureList (ModelAndView mv, @RequestParam(value="currentPage", required = false,defaultValue = "1") int currentPage) {
	            
	      int listCount = lService.getListCount();
	      
	      
	      
	      PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
	      
	      ArrayList<Lecture> list = lService.selectList(pi);
	   
	      
	      mv.addObject("list",list);
	      mv.addObject("pi",pi);
	      mv.setViewName("prof_lecture/dept_notice");
	      return mv;
	   }
	
}