package com.kh.univ.helpDesk.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.helpDesk.model.dao.helpDeskDao;
import com.kh.univ.common.PageInfo;
import com.kh.univ.helpDesk.model.vo.QnA;
import com.kh.univ.helpDesk.model.vo.Reply;

@Service("hdService")
public class helpDeskServiceImpl implements helpDeskService{
	
	@Autowired
	private helpDeskDao hdDao;
	
	/**
	 *리스트 카운트
	 */
	@Override
	public int getListCount()
		{
			System.out.println("countservice");
			return hdDao.getListCount();
		}

	/**
	 * qna 리스트 불러오기
	 */
	@Override
	public ArrayList<QnA> selectList(PageInfo pi)
		{
			System.out.println("listservice");
			return hdDao.getSelectList(pi);
		}

	/**
	 * 조회수 카운트
	 */
	@Override
	public QnA selectBoard(int qnaId) {
	//조회수 증가
			int result = hdDao.updateCount(qnaId);
			System.out.println("조회수 증가 확인 : " + result);
			
			if(result > 0) {
				return hdDao.selectBoard(qnaId);
			}else {
				return null;
			}
	}

	/**
	 * 댓글 리스트 불러오기
	 */
	@Override
	public ArrayList<Reply> selectReplyList(int qnaId)
		{
			return hdDao.selectReplyList(qnaId);
		}

	/**
	 * 댓글 등록
	 */
	@Override
	public int insertReply(Reply r)
		{
			return hdDao.insertReply(r);
		}

	/**
	 * 게시글 수정 불러오기
	 */
	@Override
	public Object selectUpdateBoard(int qnaId)
		{
			return hdDao.selectUpdateBoard( qnaId) ;
		}
	
	@Override
	public int updateBoard(QnA qna)
		{
			return hdDao.updateBoard(qna);
		}

	
}
