package com.kh.univ.notice.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.common.Pagination;
import com.kh.univ.notice.model.service.NoticeService;
import com.kh.univ.notice.model.vo.Notice;
import com.kh.univ.notice.model.vo.PageInfo;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService nService;
	
	
	/**
	 * 1.게시글 조회데스
	 * @param mv
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("dept_notice.do")
	public ModelAndView noticeDetail (ModelAndView mv, @RequestParam(value="currentPage",
	    required = false,defaultValue = "1") int currentPage) {
				
		int listCount = nService.getListCount();
		
		System.out.println(listCount);
		
		PageInfo pi = Pagination.getpageInfo(currentPage, listCount);
		
		ArrayList<Notice> list = nService.selectList(pi);
		System.out.println(pi);
		System.out.println(list);
		
		mv.addObject("list",list);
		mv.addObject("pi",pi);
		mv.setViewName("notice/dept_notice");
		return mv;
	}
	

		
}
