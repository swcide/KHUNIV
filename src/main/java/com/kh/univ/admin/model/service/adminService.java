 package com.kh.univ.admin.model.service;

import java.io.File;
import java.util.ArrayList;

import com.kh.univ.common.PageInfo;
import com.kh.univ.helpDesk.model.vo.QnA;
import com.kh.univ.helpDesk.model.vo.Reply;

public interface adminService {

	int getListCount();

	ArrayList<QnA> selectList(PageInfo pi);

	QnA manageQnA_detail(int qnaId);

	int deleteBoard(int qnaId);

	ArrayList<Reply> selectReplyList(int qnaId);

	int insertReply(Reply r);

	int deleteReply(Reply r);

	int updateReply(Reply r);

	void excelUpload(File destFile);

}
