package com.kh.univ.notice.model.service;

import java.util.ArrayList;

import com.kh.univ.notice.model.vo.Notice;

import com.kh.univ.notice.model.vo.nReply;

import com.kh.univ.common.PageInfo;
import com.kh.univ.member.model.vo.Admin;



public interface NoticeService {

	/**
	 * 1.조회수용
	 * @param nType 
	 * @return
	 */
	int getListCount(int nType);
	//공지사항 게시글 불러오기
	ArrayList<Notice> selectList(PageInfo pi, int nType);
	//공지사항 탑5 불러오기
	ArrayList<Notice> selectTopList();

	/**
	 * 2.상세보기
	 * @param n 
	 * @param bId
	 * @return
	 */
	Notice selectNotice(Notice n);


	/**
	 * 3,게시글 작성
	 * @param n
	 * @return
	 */
	int insertNotice(Notice n);


	
	/**
	 * 
	 * 업데이트 
	 * @param n
	 * @return
	 */
	Notice selectUpdateNotice(Notice n);
	int updateNotice(Notice n);
	Notice updateAfterNotice(Notice n);
	


	int deleteNotice(Notice n);
	
	


	ArrayList<nReply> selectReplyList(int nId);


	int insertReply(nReply r);


	int deleteReply(nReply r);


	int updateReply(nReply r);

	




	

}