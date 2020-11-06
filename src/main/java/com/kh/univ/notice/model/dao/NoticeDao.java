package com.kh.univ.notice.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.notice.model.vo.Notice;
import com.kh.univ.notice.model.vo.PageInfo;

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
		// TODO Auto-generated method stub
		return  sqlSession.selectOne("noticeMapper.selectNotice",nId);
	}

	public int insertNotice(Notice n) {
		// TODO Auto-generated method stub
		return sqlSession.insert("noticeMapper.insertNotice",n);
	}

	public Object selectUpdateNotice(int nId) {
		
		return sqlSession.insert("noticeMapper.updateNotice",nId);
	}

}
