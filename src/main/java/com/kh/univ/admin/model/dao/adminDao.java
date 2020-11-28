package com.kh.univ.admin.model.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.common.PageInfo;
import com.kh.univ.helpDesk.model.vo.QnA;
import com.kh.univ.helpDesk.model.vo.Reply;

@Repository("aDao")
public class adminDao {

	@Autowired
	SqlSessionTemplate sqlSession;

	public int getListCount() {
		return sqlSession.selectOne("hdBoardMapper.getListCount");
	}

	public ArrayList<QnA> getSelectList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList) sqlSession.selectList("hdBoardMapper.selectList", null, rowBounds);
	}

	public int updateCount(int qnaId) {
		return sqlSession.update("hdBoardMapper.updateCount", qnaId);
	}

	public QnA manageQnA_detail(int qnaId) {
		return sqlSession.selectOne("hdBoardMapper.selectBoard", qnaId);
	}

	public int deleteBoard(int qnaId) {
		return sqlSession.update("hdBoardMapper.deleteBoard", qnaId);
	}

	public ArrayList<Reply> selectReplyList(int qnaId) {
		return (ArrayList) sqlSession.selectList("hdBoardMapper.selectReplyList", qnaId);
	}

	public int insertReply(Reply r) {
		return sqlSession.insert("hdBoardMapper.insertReply", r);
	}

	public int deleteReply(Reply r) {
		return sqlSession.update("hdBoardMapper.deleteReply", r);
	}

	public int updateReply(Reply r) {
		return sqlSession.update("hdBoardMapper.updateReply", r);
	}

	public int insertExcel(Map<String, Object> paramMap) {
		System.out.println("paramMapDao: " + paramMap);
		return sqlSession.insert("hdBoardMapper.insertExcel", paramMap);
	}

}
