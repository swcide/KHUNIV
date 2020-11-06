package com.kh.univ.notice.model.service;

import java.util.ArrayList;

import com.kh.univ.notice.model.vo.Notice;
import com.kh.univ.notice.model.vo.PageInfo;

public interface NoticeService {

	/**
	 * 
	 * @return
	 */
	int getListCount();

	
	ArrayList<Notice> selectList(PageInfo pi);

}
