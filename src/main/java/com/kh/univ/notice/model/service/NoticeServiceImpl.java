package com.kh.univ.notice.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.notice.model.dao.NoticeDao;
import com.kh.univ.notice.model.vo.Notice;
import com.kh.univ.notice.model.vo.PageInfo;

@Service("nService")
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDao nDao;
	
	@Override
	public int getListCount() {
		// TODO Auto-generated method stub
		return nDao.getListCount();
	}

	@Override
	public ArrayList<Notice> selectList(PageInfo pi) {
		// TODO Auto-generated method stub
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
		// TODO Auto-generated method stub
		return nDao.insertNotice(n);
	}

	@Override
	public Object selectUpdateNotice(int nId) {
		// TODO Auto-generated method stub
		return nDao.selectUpdateNotice(int nId);
	}
	

}
