package com.kh.univ.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.admin.model.dao.adminDao;
import com.kh.univ.common.PageInfo;
import com.kh.univ.helpDesk.model.vo.QnA;
import com.kh.univ.helpDesk.model.vo.Reply;

@Service("aService")
public class adminServiceImpl implements adminService {

	@Autowired
	adminDao aDao;

	@Override
	public int getListCount()
		{
			System.out.println("AdminCountService");
			return aDao.getListCount();
		}

	@Override
	public ArrayList<QnA> selectList(PageInfo pi)
		{
			System.out.println("QnaListService");
			return aDao.getSelectList(pi);
		}

	@Override
	public QnA manageQnA_detail(int qnaId)
		{
			int result = aDao.updateCount(qnaId);
			System.out.println("조회수 증가 확인 : " + result);
			
			if(result > 0) {
				return aDao.manageQnA_detail(qnaId);
			}else {
				return null;
			}
		}
	
	@Override
	public int deleteBoard(int qnaId)
		{
			return aDao.deleteBoard(qnaId);
		}

	@Override
	public ArrayList<Reply> selectReplyList(int qnaId)
		{
			return aDao.selectReplyList(qnaId);
		}

	@Override
	public int insertReply(Reply r)
		{
			return aDao.insertReply(r);
		}

	@Override
	public int deleteReply(Reply r)
		{
			return aDao.deleteReply(r);
		}

	@Override
	public int updateReply(Reply r)
		{
			return aDao.updateReply(r);
		}

}
