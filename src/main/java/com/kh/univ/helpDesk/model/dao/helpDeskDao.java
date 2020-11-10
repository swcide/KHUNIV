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

	public int getListCount()
		{
			return sqlSession.selectOne("hdBoardMapper.getListCount");
		}
	
	public ArrayList<QnA> getSelectList(PageInfo pi)
		{
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
			System.out.println("댓글추가DAO");
			return sqlSession.insert("hdBoardMapper.insertReply",r);
		}

	public int insertQnA(QnA q)
		{
			return sqlSession.insert("hdBoardMapper.insertQnA",q);
		}

	public Object selectUpdateBoard(int qnaId)
		{
			return sqlSession.selectOne("hdBoardMapper.updateBoard",qnaId);
		}

	public int updateContents(QnA qna)
		{
			return sqlSession.update("hdBoardMapper.updateContents", qna);
		}

	public int deleteBoard(int qnaId)
		{
			System.out.println("delete Dao");
			return sqlSession.update("hdBoardMapper.deleteBoard", qnaId);
		}

	public int getMyListCount()
		{
			return sqlSession.selectOne("hdBoardMapper.getMyListCount");
		}
	
	public ArrayList<QnA> mySelectList(PageInfo pi, Student student)
		{
			int offset = (pi.getCurrentPage() -1 ) * pi.getBoardLimit();
			RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
			return (ArrayList)sqlSession.selectList("hdBoardMapper.mySelectList",student,rowBounds);
		}


}
