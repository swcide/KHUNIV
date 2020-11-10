package com.kh.univ.helpDesk.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.common.PageInfo;
import com.kh.univ.helpDesk.model.vo.QnA;
import com.kh.univ.helpDesk.model.vo.Reply;
import com.kh.univ.member.model.vo.Student;


@Repository("hdDao")
public class helpDeskDao {
	
	  @Autowired
	  SqlSessionTemplate sqlSession;

	/**
	 * QnA ListCount
	 * @return
	 */
	public int getListCount()
		{
			return sqlSession.selectOne("hdBoardMapper.getListCount");
		}
	
	/**
	 * QnA List
	 * @param pi
	 * @return
	 */
	public ArrayList<QnA> getSelectList(PageInfo pi)
		{
			int offset = (pi.getCurrentPage() -1 ) * pi.getBoardLimit();
			RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
			return (ArrayList)sqlSession.selectList("hdBoardMapper.selectList",null,rowBounds);
		}

	/**
	 * QnA detail Count
	 * @param qnaId
	 * @return
	 */
	public int updateCount(int qnaId)
		{
			return sqlSession.update("hdBoardMapper.updateCount",qnaId);
		}

	/**
	 * QnA Detail
	 * @param qnaId
	 * @return
	 */
	public QnA selectBoard(int qnaId)
		{
			return sqlSession.selectOne("hdBoardMapper.selectBoard", qnaId);
		}

	/**
	 * QnA Insert
	 * @param q
	 * @return
	 */
	public int insertQnA(QnA q)
		{
			return sqlSession.insert("hdBoardMapper.insertQnA",q);
		}

	/**
	 * QnA Update view
	 * @param qnaId
	 * @return
	 */
	public Object selectUpdateBoard(int qnaId)
		{
			return sqlSession.selectOne("hdBoardMapper.updateBoard",qnaId);
		}

	/**
	 * QnA Update Form
	 * @param qna
	 * @return
	 */
	public int updateContents(QnA qna)
		{
			return sqlSession.update("hdBoardMapper.updateContents", qna);
		}

	/**
	 * QnA Delete
	 * @param qnaId
	 * @return
	 */
	public int deleteBoard(int qnaId)
		{
			return sqlSession.update("hdBoardMapper.deleteBoard", qnaId);
		}

	/**
	 * My QnA List Count
	 * @return
	 */
	public int getMyListCount()
		{
			return sqlSession.selectOne("hdBoardMapper.getMyListCount");
		}
	
	/**
	 * My QnA List
	 * @param pi
	 * @param student
	 * @return
	 */
	public ArrayList<QnA> mySelectList(PageInfo pi, Student student)
		{
			int offset = (pi.getCurrentPage() -1 ) * pi.getBoardLimit();
			RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
			return (ArrayList)sqlSession.selectList("hdBoardMapper.mySelectList",student,rowBounds);
		}
	
	/**
	 * QnA ReplyList
	 * @param qnaId
	 * @return
	 */
	public ArrayList<Reply> selectReplyList(int qnaId)
		{
			return (ArrayList)sqlSession.selectList("hdBoardMapper.selectReplyList", qnaId);
		}

	/**
	 * QnA ReplyInsert
	 * @param r
	 * @return
	 */
	public int insertReply(Reply r)
		{
			return sqlSession.insert("hdBoardMapper.insertReply",r);
		}
	
	/**
	 * QnA ReplyDelete
	 * @param r
	 * @return
	 */
	public int deleteReply(Reply r)
		{
			return sqlSession.update("hdBoardMapper.deleteReply",r);
		}

	/**
	 * QnA ReplyUpdate
	 * @param r
	 * @return
	 */
	public int updateReply(Reply r)
		{
			return sqlSession.update("hdBoardMapper.updateReply",r);
		}


}
