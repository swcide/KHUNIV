package com.kh.univ.notice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.univ.notice.model.service.NoticeService;

@Controller
public class NoticeController {
	
	@Autowired NoticeService nService
	
	public ModelAndView noticeDetail(ModelAndView mv, int bid,)
	
}
