package com.kh.univ.admin.model.service;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

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
	/*******excel upload*********/
	@Override
	public void excelUpload(File destFile) {
		
		ExcelReadOption excelReadOption = new ExcelReadOption();
		
		//파일경로 추가
		excelReadOption.setFilePath(destFile.getAbsolutePath());
		
		//추출할 컬럼명 추가
		excelReadOption.setOutputColumns("A", "B", "C");
		
		//시작행
		excelReadOption.setStartRow(2);
		
		List<Map<String, String>>excelContent  = ExcelRead.read(excelReadOption);
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("excelContent", excelContent);
		System.out.println("paramMap:" + paramMap);
		
		try {
			aDao.insertExcel(paramMap);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}