package com.kh.univ.helpDesk.model.service;

import java.util.ArrayList;

import com.kh.univ.common.PageInfo;
import com.kh.univ.helpDesk.model.vo.QnA;
import com.kh.univ.helpDesk.model.vo.Reply;

public interface helpDeskService {

	int getListCount();
	
	/** 
	 * qnaList
	 * @param pi
	 * @return
	 */
	ArrayList<QnA> selectList(PageInfo pi);

	/**
	 * qnaDetail
	 * @param qnaId
	 * @return
	 */
	QnA selectBoard(int qnaId);

	/**
	 * replyList
	 * @param qnaId
	 * @return
	 */
	ArrayList<Reply> selectReplyList(int qnaId);

	/**
	 * replyInsert
	 * @param r
	 * @return
	 */
	int insertReply(Reply r);

	int updateBoard(QnA qna);

	Object selectUpdateBoard(int qnaId);


}
