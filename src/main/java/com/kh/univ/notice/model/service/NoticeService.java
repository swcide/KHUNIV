package com.kh.univ.notice.model.service;

import java.util.ArrayList;

import com.kh.univ.notice.model.vo.Notice;
<<<<<<< HEAD
import com.kh.univ.notice.model.vo.PageInfo;
import com.kh.univ.notice.model.vo.nReply;
=======
import com.kh.univ.common.PageInfo;

>>>>>>> branch 'master' of https://github.com/KHunivesity/khuniv.git

public interface NoticeService {

	/**
	 * 1.조회수용
	 * @return
	 */
	int getListCount();

	
	ArrayList<Notice> selectList(PageInfo pi);

	
	/**
	 * 2.상세보기
	 * @param bId
	 * @return
	 */
	Notice selectNotice(int nId);


	/**
	 * 3,게시글 작성
	 * @param n
	 * @return
	 */
	int insertNotice(Notice n);


	Notice selectUpdateNotice(int nId);


	int updateNotice(Notice n);


	int deleteNotice(int nId);


	ArrayList<nReply> selectReplyList(int nId);


	int insertReply(nReply r);

}
