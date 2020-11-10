package com.kh.univ.notice.model.service;

import java.util.ArrayList;

import com.kh.univ.notice.model.vo.Notice;

import com.kh.univ.notice.model.vo.nReply;
<<<<<<< HEAD

import com.kh.univ.common.PageInfo;
=======
>>>>>>> branch 'master' of https://github.com/KHunivesity/khuniv.git

<<<<<<< HEAD
=======
import com.kh.univ.common.PageInfo;
import com.kh.univ.member.model.vo.Admin;

>>>>>>> branch 'master' of https://github.com/KHunivesity/khuniv.git


public interface NoticeService {

	/**
	 * 1.조회수용
	 * @param nType 
	 * @return
	 */
	int getListCount(int nType);

	ArrayList<Notice> selectList(PageInfo pi, int nType);
	
	ArrayList<Notice> selectTopList();


	
	/**
	 * 2.상세보기
	 * @param n 
	 * @param bId
	 * @return
	 */
	Notice selectNotice(int nId, Notice n);


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


	int deleteReply(nReply r);


	int updateReply(nReply r);




	

}
