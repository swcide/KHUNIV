package com.kh.univ.helpDesk.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.helpDesk.model.dao.helpDeskDao;
import com.kh.univ.common.PageInfo;
import com.kh.univ.helpDesk.model.vo.QnA;
import com.kh.univ.helpDesk.model.vo.Reply;
import com.kh.univ.member.model.vo.Student;
import com.kh.univ.notice.model.vo.nReply;

@Service("hdService")
public class helpDeskServiceImpl implements helpDeskService {

	@Autowired
	private helpDeskDao hdDao;

	/**
	 * 리스트 카운트
	 */
	@Override
	public int getListCount() {
		return hdDao.getListCount();
	}

	/**
	 * qna 리스트 불러오기
	 */
	@Override
	public ArrayList<QnA> selectList(PageInfo pi) {
		return hdDao.getSelectList(pi);
	}

	/**
	 * qna 디테일 & 조회수 카운트
	 */
	@Override
	public QnA selectBoard(int qnaId) {
		int result = hdDao.updateCount(qnaId); // 조회수 업데이트
		if (result > 0) {
			return hdDao.selectBoard(qnaId); // 게시글 상세내용 select
		} else {
			return null;
		}
	}

	/**
	 * qna 작성
	 */
	@Override
	public int insertQnA(QnA q) {
		return hdDao.insertQnA(q);
	}

	/**
	 * qna 수정 화면
	 */
	@Override
	public Object selectUpdateBoard(int qnaId) {
		return hdDao.selectUpdateBoard(qnaId);
	}

	/**
	 * qna 수정
	 */
	@Override
	public int updateContents(QnA qna) {
		return hdDao.updateContents(qna);
	}

	/**
	 * qna 삭제 = status > n
	 */
	@Override
	public int deleteBoard(int qnaId) {
		return hdDao.deleteBoard(qnaId);
	}

	/**
	 * 내질문 갯수
	 */
	@Override
	public int getMyListCount() {
		return hdDao.getMyListCount();
	}

	/**
	 * 내질문 리스트
	 */
	@Override
	public ArrayList<QnA> mySelectList(PageInfo pi, Student student) {
		return hdDao.mySelectList(pi, student);
	}

	/**
	 * 댓글 리스트 불러오기
	 */
	@Override
	public ArrayList<Reply> selectReplyList(int qnaId) {
		return hdDao.selectReplyList(qnaId);
	}

	/**
	 * 댓글 등록
	 */
	@Override
	public int insertReply(Reply r) {
		System.out.println("댓글추가서비스");
		return hdDao.insertReply(r);
	}

	/**
	 * 댓글삭제
	 */
	@Override
	public int deleteReply(Reply r) {
		return hdDao.deleteReply(r);
	}

	/**
	 * 댓글수정
	 */
	@Override
	public int updateReply(Reply r) {
		return hdDao.updateReply(r);
	}

}
