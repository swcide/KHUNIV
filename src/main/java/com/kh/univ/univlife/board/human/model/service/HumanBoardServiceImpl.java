package com.kh.univ.univlife.board.human.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.common.PageInfo;



import com.kh.univ.univlife.board.human.model.dao.HumanBoardDao;
import com.kh.univ.univlife.board.human.model.vo.HumanBoard;
import com.kh.univ.univlife.board.human.model.vo.hReply;

@Service("hService")
public class HumanBoardServiceImpl implements HumanBoardService {

	@Autowired
	private HumanBoardDao hDao;
	
	@Override
	public int getListCount() {
		return hDao.getListCount();
	}

	@Override
	public ArrayList<HumanBoard> selectList(PageInfo pi) {
		return  hDao.selectList(pi);
	}

	@Override
	public HumanBoard selectHumanBoard(int hId) {
		
		int result=hDao.updateCount(hId);
		
		if(result>0) {
			return hDao.selectHumanBoard(hId);
		}else {
			return null;
		}
		
	}

	@Override
	public int insertHumanBoard(HumanBoard h) {
		return hDao.insertHumanBoard(h);
	}

	@Override
	public HumanBoard selectUpdateHumanBoard(int hId) {
		return hDao.selectHumanBoard(hId);
	}

	@Override
	public int updateHumanBoard(HumanBoard h) {
		return hDao.updateHumanBoard(h);
	}

	@Override
	public int deleteHumanBoard(int hId) {
		return hDao.deleteHumanBoard(hId);
	}

	@Override
	public ArrayList<hReply> selectReplyList(int hId) {
		return hDao.selectReplyList(hId);
	}

	@Override
	public int insertReply(hReply r) {
		return hDao.insertReply(r);
	}

	@Override
	public int deleteReply(hReply r) {
		return hDao.deleteReply(r);
	}

	@Override
	public int updateReply(hReply r) {
		return hDao.updateReply(r);
	}

	@Override
	public int reportReply(hReply r) {
		
		return  hDao.reportReply(r);
	}


}