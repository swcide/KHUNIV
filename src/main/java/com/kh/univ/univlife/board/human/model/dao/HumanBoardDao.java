package com.kh.univ.univlife.board.human.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



import com.kh.univ.common.PageInfo;
import com.kh.univ.univlife.board.human.model.vo.HumanBoard;
import com.kh.univ.univlife.board.human.model.vo.hReply;

@Repository("hDao")
public class HumanBoardDao {


	@Autowired
	private SqlSessionTemplate sqlSession;

	public int getListCount() {
		
		return sqlSession.selectOne("humanBoardMapper.getListCount");
	}

	public ArrayList<HumanBoard> selectList(PageInfo pi) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("humanBoardMapper.selectList",null,rowBounds);
	}
	public int updateCount(int hId) {
		return sqlSession.update("humanBoardMapper.updateCount",hId);
	}

	public HumanBoard selectHumanBoard(int hId) {
		return  sqlSession.selectOne("humanBoardMapper.selectHumanBoard",hId);
	}

	public int insertHumanBoard(HumanBoard h) {
		return sqlSession.insert("humanBoardMapper.insertHumanBoard",h);
	}


	public int updateHumanBoard(HumanBoard h) {
		return sqlSession.update("humanBoardMapper.updateHumanBoard",h);
	}

	public int deleteHumanBoard(int hId) {
		return sqlSession.update("humanBoardMapper.deleteHumanBoard",hId);



	}

	public ArrayList<hReply> selectReplyList(int hId) {
		return (ArrayList)sqlSession.selectList("humanBoardMapper.selectHumanReplyList",hId);
	}

	public int insertReply(hReply r) {
		return sqlSession.insert("humanBoardMapper.insertReply",r);
	}

	public int deleteReply(hReply r) {
		return sqlSession.update("humanBoardMapper.deleteReply",r);
	}

	public int updateReply(hReply r) {
		return sqlSession.update("humanBoardMapper.updateReply",r);
	}

	public int reportReply(hReply r) {

		return sqlSession.update("humanBoardMapper.reportReply",r);
	}


}
