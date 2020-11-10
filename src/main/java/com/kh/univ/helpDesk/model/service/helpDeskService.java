package com.kh.univ.helpDesk.model.service;

import java.util.ArrayList;

import com.kh.univ.common.PageInfo;
import com.kh.univ.helpDesk.model.vo.QnA;
import com.kh.univ.helpDesk.model.vo.Reply;
import com.kh.univ.member.model.vo.Student;

/**
 * @author admin
 *
 */
public interface helpDeskService {

	/**
	 * @return
	 */
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

	/** 아직안함
	 * replyInsert
	 * @param r
	 * @return
	 */
	int insertReply(Reply r);

	/**
	 * qna 작성
	 * @param q
	 * @return
	 */
	int insertQnA(QnA q);

	/**
	 * qna 수정 화면
	 * @param qnaId
	 * @return
	 */
	Object selectUpdateBoard(int qnaId);

	/**
	 * qna 수정
	 * @param qna
	 * @return
	 */
	int updateContents(QnA qna);

	/**
	 * qna 삭제
	 * @param qnaId
	 * @return
	 */
	int deleteBoard(int qnaId);

	
	
	/**
	 * 내질문
	 * @return
	 */
	int getMyListCount();

	/**
	 * 내질문
	 * @param pi
	 * @return
	 */
	ArrayList<QnA> mySelectList(PageInfo pi, Student student);


}
