package com.kh.univ.notice.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.univ.common.Pagination;
import com.kh.univ.member.model.vo.Admin;

import com.kh.univ.common.PageInfo;

import com.kh.univ.notice.model.service.NoticeService;
import com.kh.univ.notice.model.vo.Notice;
import com.kh.univ.notice.model.vo.nReply;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService nService;

	/**
	 * 1.게시글 조회데스
	 * @param mv
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("dept_notice.do")
	public ModelAndView noticeDetail (ModelAndView mv, @RequestParam(value="currentPage",
	    required = false,defaultValue = "1") int currentPage) {
				
		int listCount = nService.getListCount();
		
		
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<Notice> list = nService.selectList(pi);
	
		
		mv.addObject("list",list);
		mv.addObject("pi",pi);
		mv.setViewName("notice/dept_notice");
		return mv;
	}
	@RequestMapping("humandetail.do")
	public ModelAndView boardDetail(ModelAndView mv, int nId,
									@RequestParam(value="currentPage",required = false,defaultValue = "1") int currentPage) {
	
		Notice n = nService.selectNotice(nId);
		
		if(n!=null) {
			mv.addObject("n",n)
			  .addObject("currentPage", currentPage)
			  .setViewName("notice/dept_notice_detail");
		}else {
			mv.addObject("msg", "게시글 상세 조회 실패").setViewName("common/errorPage");
		}
		
		return mv;
	}
	
	@RequestMapping("humaninsert.do")
	public String boardInsertView() {
		return "notice/dept_notice_write";
	}
	
	
	@RequestMapping("ninsert.do")
	public String insertBoard(Notice n,HttpServletRequest request,
							 @RequestParam(name="uploadFile",required = false) MultipartFile file) {
		// @RequestParam어노테이션을 이용한 업롣 ㅡ파일 접근
		// form enctype이 multipart/form-data로 작성되어있어야하고, method=post이어야 한다.
		// MultipartResolver가 multipartFile객체를 컨트롤러로 전달할 수 있다.
		
		if(!file.getOriginalFilename().equals("")) {
			//서버에 업로드를 해야한다.
			String renameFIleName =  saveFile(file,request);
			
			if(renameFIleName != null) { // 파일이 잘 저장된 경우;
				n.setOriginalFileName(file.getOriginalFilename());
				n.setRenameFileName(renameFIleName);
				
			}
		}
		
		
		int result = nService.insertNotice(n);
		
		if(result>0) {
			
			return "redirect:dept_notice.do";
		}else {
			return "common/errorPage";
		}
	
	}
	
	
	public String saveFile(MultipartFile file,HttpServletRequest request) {
		
		// 파일이 저장될 경로를 설정하기
		// 웹 서버의 contextPath를 불러와서 폴더의 경로를 가져온다.
		
		// webapp하위의 resources
		String root  = request.getSession().getServletContext().getRealPath("resources");
		System.out.println("root : " + root );
		
		// 파일 경로
		// \를 문자로 인식시키기 위해서는 "\\"를 사용한다
		String savePath = root+"\\uploadFiles";
		
		File folder = new File(savePath);
		
		if(!folder.exists()) {
			folder.mkdirs(); // 폴더가 없다면 생성한다.
		}
		// 파일명을 rename 과정을 추가 --> "년월일시분초.확장자"로 변경
		String originalFileName= file.getOriginalFilename();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		
		String renameFileName =sdf.format(new java.sql.Date(System.currentTimeMillis()))+"."
								+originalFileName.substring(originalFileName.lastIndexOf(".")+1);
		
		String renamePath =folder+"\\"+renameFileName; // 실제 저장될 파일 경로 + 파일명
		
		try {
			file.transferTo(new File(renamePath)); // 전달받은 file이 rename명으로 이때 파일이 저장된다.
			
		}catch(Exception e) {
			System.out.println("파일전송 에러"+e.getMessage());
		}
		
		
		
		return renameFileName;
	}
	

	@RequestMapping("nupView.do")
	public ModelAndView noticeUpdateView(ModelAndView mv, int nId) {
		System.out.println(nId);
		mv.addObject("n",nService.selectUpdateNotice(nId)).setViewName("notice/dept_notice_update");
		return mv;
		
	}
	@RequestMapping("nupdate.do")
	public ModelAndView updateBoard(ModelAndView mv,Notice n,HttpServletRequest request,
			 @RequestParam(name="uploadFile",required = false) MultipartFile file) {
		if(file !=null && !file.isEmpty()) { // 새로 업로드된 파일이 있다면
			if(n.getRenameFileName() !=null) { //기존의 파일이 존재했을 경우 기존 파일 삭제.
				deleteFile(n.getRenameFileName(),request);
			}
			
			String renameFileName = saveFile(file,request);
			
			if(renameFileName != null) {
				n.setOriginalFileName(file.getOriginalFilename());
				n.setRenameFileName(renameFileName);
			}
		}
		System.out.println(n.getnId());
		System.out.println(n);
		
		int result = nService.updateNotice(n);
		
		if(result>0) {
			System.out.println(n.getnId());
			mv.addObject("nId",n.getnId()).setViewName("redirect:humandetail.do");
		}else {
			mv.addObject("msg","수정실패").setViewName("common/errorPage");
		}
		
		
		return mv;
	}
	
		public void deleteFile(String fileName, HttpServletRequest request) {
			String root = request.getSession().getServletContext().getRealPath("resources");
			String savePath = root+"\\uploadFiles";
			File f = new File(savePath+"\\"+fileName);//기존의 업로드된 파일의 실제 경로를 이용해서 ifle 객체 생성
		
			if( f.exists()) {
				f.delete();
			}
		}
	@RequestMapping("ndelete.do")
	public String boardDelete(int nId, HttpServletRequest request) {
		
		Notice n = nService.selectUpdateNotice(nId);
		
		if(n.getRenameFileName() != null) {
			deleteFile(n.getRenameFileName(),request);
		}
		
		int result = nService.deleteNotice(nId);
		
		if(result >0) {
			return "redirect:dept_notice.do";
		}else {
			return "common/errorPage";
		}
	}
	
	@RequestMapping(value="nrList.do")
	public void getReplyList(HttpServletResponse response, int nId ) throws JsonIOException, IOException {
	
		response.setContentType("application/json; charset=UTF-8");

		
		ArrayList<nReply> rList =nService.selectReplyList(nId);
		

		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(rList,response.getWriter());
	}
	
	@ResponseBody
	@RequestMapping("addReply.do")
	public String addReply(nReply r) {
		
		
		int result = nService.insertReply(r);
		
		
		System.out.println(result);
		if(result>0) {
			return "success";
		}else {
			return "fail";
		}
	}
	
		
}
