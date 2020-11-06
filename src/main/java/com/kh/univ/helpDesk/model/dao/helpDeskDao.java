package com.kh.univ.helpDesk.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.helpDesk.model.vo.PageInfo;
import com.kh.univ.helpDesk.model.vo.QnA;
import com.kh.univ.helpDesk.model.vo.Reply;


@Repository("hdDao")
public class helpDeskDao {
	
	  @Autowired
	  SqlSessionTemplate sqlSession;

	public int getListCount()
		{
			System.out.println("countDao");
			return sqlSession.selectOne("hdBoardMapper.getListCount");
		}
	
	public ArrayList<QnA> getSelectList(PageInfo pi)
		{
			System.out.println("listDao");
			int offset = (pi.getCurrentPage() -1 ) * pi.getBoardLimit();
			RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
			return (ArrayList)sqlSession.selectList("hdBoardMapper.selectList",null,rowBounds);
		}

	public int updateCount(int qnaId)
		{
			return sqlSession.update("hdBoardMapper.updateCount",qnaId);
		}

	public QnA selectBoard(int qnaId)
		{
			return sqlSession.selectOne("hdBoardMapper.selectBoard", qnaId);
		}

	public ArrayList<Reply> selectReplyList(int qnaId)
		{
			return (ArrayList)sqlSession.selectList("hdBoardMapper.selectReplyList", qnaId);
		}

	public int insertReply(Reply r)
		{
			return sqlSession.insert("hdBoardMapper.insertReply",r);
		}

	public int updateBoard(QnA qna)
		{
			return sqlSession.update("hdBoardMapper.udateBoard",qna);
		}

	public Object selectUpdateBoard(int qnaId)
		{
			return sqlSession.selectOne("hdBoardMapper.selectUpdateBoard", qnaId);
		}


}
