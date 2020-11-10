package com.kh.univ.notice.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.notice.model.vo.Notice;
import com.kh.univ.notice.model.vo.nReply;
import com.kh.univ.common.PageInfo;
import com.kh.univ.member.model.vo.Admin;

@Repository("nDao")
public class NoticeDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	public ArrayList<Notice> selectTopList() {
		return (ArrayList)sqlSession.selectList("noticeMapper.selectTopList");
	}

	public int getListCount(int nType) {
		
		return sqlSession.selectOne("noticeMapper.getListCount",nType);
	}

	public ArrayList<Notice> selectList(PageInfo pi, int nType) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("noticeMapper.selectnList",nType,rowBounds);
	}
	public Notice detailNotice(Notice n) {
		return sqlSession.selectOne("noticeMapper.detailNotice",n);
	
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
		return (ArrayList)sqlSession.selectList("noticeMapper.selectNReplyList",nId);
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
