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
import com.kh.univ.notice.model.vo.Notice;

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

	public int getListCount(int nType) {
		return sqlSession.selectOne("noticeMapper.getListCount",nType);
	}

	public ArrayList<Notice> selectList(PageInfo pi, int nType) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("noticeMapper.selectnList",nType,rowBounds);
	}

	//삭제
	public Notice selectNotice(Notice n) {
		return  sqlSession.selectOne("noticeMapper.selectNotice",n);
	}

	public int updateCount(Notice n) {
		return sqlSession.update("noticeMapper.updateCount",n);
	}

	public int insertNotice(Notice n) {
		return sqlSession.insert("noticeMapper.insertNotice",n);
	}

	public Notice updateAfterNotice(Notice n) {
		return sqlSession.selectOne("noticeMapper.updateAfterNotice",n);
	}

	public int updateNotice(Notice n) {
		return sqlSession.update("noticeMapper.updateNotice",n);
	}

	public int deleteNotice(Notice n) {
		return sqlSession.update("noticeMapper.deleteNotice",n);
	}

}
