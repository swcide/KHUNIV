package com.kh.univ.univlife.board.human.model.service;

import java.util.ArrayList;

import com.kh.univ.common.PageInfo;

import com.kh.univ.univlife.board.human.model.vo.HumanBoard;
import com.kh.univ.univlife.board.human.model.vo.Report;
import com.kh.univ.univlife.board.human.model.vo.hReply;

public interface HumanBoardService {

	ArrayList<HumanBoard> selectList(PageInfo pi);

	int getListCount();

	HumanBoard selectHumanBoard(int hId);

	int insertHumanBoard(HumanBoard h);

	

	int updateHumanBoard(HumanBoard h);

	ArrayList<hReply> selectReplyList(int hId);

	int insertReply(hReply r);

	int deleteReply(hReply r);

	int updateReply(hReply r);

	

	HumanBoard selectUpdateHumanBoard(int hId);

	int deleteHumanBoard(int hId);

	int reportReply(hReply r);



	int reportInsert(Report rp);

	int reportDone(int rpId);

	




}
