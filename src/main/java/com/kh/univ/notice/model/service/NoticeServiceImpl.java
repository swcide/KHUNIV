package com.kh.univ.notice.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.notice.model.dao.NoticeDao;
import com.kh.univ.notice.model.vo.Notice;
import com.kh.univ.notice.model.vo.nReply;
import com.kh.univ.common.PageInfo;



@Service("nService")
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDao nDao;
	
	@Override
	public int getListCount() {
		return nDao.getListCount();
	}

	@Override
	public ArrayList<Notice> selectList(PageInfo pi) {
		return  nDao.selectList(pi);
	}

	@Override
	public Notice selectNotice(int nId) {
		
		int result=nDao.updateCount(nId);
		
		if(result>0) {
			return nDao.selectNotice(nId);
		}else {
			return null;
		}
		
	}

	@Override
	public int insertNotice(Notice n) {
		return nDao.insertNotice(n);
	}

	@Override
	public Notice selectUpdateNotice(int nId) {
		return nDao.selectNotice(nId);
	}

	@Override
	public int updateNotice(Notice n) {
		return nDao.updateNotice(n);
	}

	@Override
	public int deleteNotice(int nId) {
		return nDao.deleteNotice(nId);
	}

	@Override
	public ArrayList<nReply> selectReplyList(int nId) {
		return nDao.selectReplyList(nId);
	}

	@Override
	public int insertReply(nReply r) {
		return nDao.insertReply(r);
	}

	@Override
	public int deleteReply(nReply r) {
		return nDao.deleteReply(r);
	}

	@Override
	public int updateReply(nReply r) {
		return nDao.updateReply(r);
	}
	

}
