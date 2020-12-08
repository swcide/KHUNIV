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
	
	//공지사항 탑5 불러오기
	public ArrayList<Notice> selectTopList() {
		return (ArrayList)sqlSession.selectList("noticeMapper.selectTopList");
	}

	/**
	 * 공지사항 리스트 페이징처리
	 * @param nType
	 * @return
	 */
	public int getListCount(int nType) {
		return sqlSession.selectOne("noticeMapper.getListCount",nType);
	}

	/**
	 * 공지사항 리스트 불러오기
	 * @param pi
	 * @param nType
	 * @return
	 */
	public ArrayList<Notice> selectList(PageInfo pi, int nType) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("noticeMapper.selectnList",nType,rowBounds);
	}
	public Notice detailNotice(Notice n) {
		return sqlSession.selectOne("noticeMapper.detailNotice",n);
	
	}
	
	
	/**
	 * 
	 * 조회수 증가
	 * @param n
	 * @return
	 */
	public int updateCount(Notice n) {
		return sqlSession.update("noticeMapper.updateCount",n);
	}

	/**
	 * 디테일
	 * @param n
	 * @return
	 */
	public Notice selectNotice(Notice n) {
		return  sqlSession.selectOne("noticeMapper.selectNotice",n);
	}

	/**
	 * 인서트
	 * @param n
	 * @return
	 */
	public int insertNotice(Notice n) {
		return sqlSession.insert("noticeMapper.insertNotice",n);
	}


	/**
	 * 업데이트
	 * @param n
	 * @return
	 */
	public int updateNotice(Notice n) {
		return sqlSession.update("noticeMapper.updateNotice",n);
	}
	/**
	 * 업데이트 후
	 * @param n
	 * @return
	 */
	public Notice updateAfterNotice(Notice n) {
		return sqlSession.selectOne("noticeMapper.updateAfterNotice",n);
	}


	public int deleteNotice(Notice n) {
		return sqlSession.update("noticeMapper.deleteNotice",n);

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