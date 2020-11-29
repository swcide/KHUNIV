 package com.kh.univ.admin.model.service;

import java.io.File;
import java.util.ArrayList;

import com.kh.univ.common.PageInfo;
import com.kh.univ.helpDesk.model.vo.QnA;
import com.kh.univ.helpDesk.model.vo.Reply;
import com.kh.univ.notice.model.vo.Notice;

public interface adminService {

	int getListCount();

	ArrayList<QnA> selectList(PageInfo pi);

	QnA manageQnA_detail(int qnaId);

	int deleteBoard(int qnaId);

	ArrayList<Reply> selectReplyList(int qnaId);

	int insertReply(Reply r);

	int deleteReply(Reply r);

	int updateReply(Reply r);

	int excelUpload(File destFile);

	// 공지
	int getListCount(int nType);

	ArrayList<Notice> selectList(PageInfo pi, int nType);

	Notice selectNotice(Notice n);

	Notice selectUpdateNotice(Notice n);

	int updateNotice(Notice n);

	Notice updateAfterNotice(Notice n);

	int insertNotice(Notice n);

	int deleteNotice(Notice n);

}
