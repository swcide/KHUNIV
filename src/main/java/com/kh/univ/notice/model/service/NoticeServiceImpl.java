package com.kh.univ.notice.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.notice.model.dao.NoticeDao;
import com.kh.univ.notice.model.vo.Notice;
import com.kh.univ.notice.model.vo.nReply;
import com.kh.univ.common.PageInfo;
import com.kh.univ.member.model.vo.Admin;

@Service("nService")
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDao nDao;

	/**
	 * 공지사항 페이징
	 *
	 */
	@Override
	public int getListCount(int nType) {
		return nDao.getListCount(nType);
	}

	// 공지사항 탑5 불러오기
	@Override
	public ArrayList<Notice> selectTopList() {
		return nDao.selectTopList();
	}

	/**
	 * 공지사항 게시글 리스트
	 *
	 */
	@Override
	public ArrayList<Notice> selectList(PageInfo pi, int nType) {

		return nDao.selectList(pi, nType);
	}

	/**
	 * 디테일
	 */
	@Override
	public Notice selectNotice(Notice n) {

		int result = nDao.updateCount(n);

		if (result > 0) {
			return nDao.detailNotice(n);
		} else {
			return null;
		}

	}

	/**
	 *
	 *인서트
	 */
	@Override
	public int insertNotice(Notice n) {
		return nDao.insertNotice(n);
	}

	/**
	 *업데이트 뷰
	 */
	@Override
	public Notice selectUpdateNotice(Notice n) {
		return nDao.selectNotice(n);
	}

	/**
	 *업데이트 후
	 */
	@Override
	public Notice updateAfterNotice(Notice n) {
		return nDao.updateAfterNotice(n);
	}

	/**
	 * 업데이트
	 */
	@Override
	public int updateNotice(Notice n) {
		return nDao.updateNotice(n);
	}

	@Override
	public int deleteNotice(Notice n) {
		return nDao.deleteNotice(n);
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