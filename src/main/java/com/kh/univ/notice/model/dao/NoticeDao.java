package com.kh.univ.notice.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.notice.model.vo.Notice;
import com.kh.univ.notice.model.vo.nReply;
import com.kh.univ.common.PageInfo;

@Repository("nDao")
public class NoticeDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int getListCount() {
		
		return sqlSession.selectOne("noticeMapper.getListCount");
	}

	public ArrayList<Notice> selectList(PageInfo pi) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("noticeMapper.selectList",null,rowBounds);
	}
	public int updateCount(int nId) {
		return sqlSession.update("noticeMapper.updateCount",nId);
	}

	public Notice selectNotice(int nId) {
		return  sqlSession.selectOne("noticeMapper.selectNotice",nId);
	}

	public int insertNotice(Notice n) {
		return sqlSession.insert("noticeMapper.insertNotice",n);
	}


	public int updateNotice(Notice n) {
		return sqlSession.update("noticeMapper.updateNotice",n);
	}

	public int deleteNotice(int nId) {
		return sqlSession.update("noticeMapper.deleteNotice",nId);



	}

	public ArrayList<nReply> selectReplyList(int nId) {
		return (ArrayList)sqlSession.selectList("noticeMapper.selectDeptReplyList",nId);
	}

	public int insertReply(nReply r) {
		return sqlSession.insert("noticeMapper.insertReply",r);
	}

	public int deleteReply(nReply r) {
		return sqlSession.update("noticeMapper.deleteReply",r);
	}

	public int updateReply(nReply r) {
		return sqlSession.update("noticeMapper.updateReply",r);
	}

}
