package com.kh.univ.notice.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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


//	-------------------------- 학사공지 ------------------------------
	/**
	 * 1_1 .학사 게시글 조회데스
	 * @param mv
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("nList.do")
	public ModelAndView noticeList (ModelAndView mv,HttpSession session, @RequestParam int nType,@RequestParam(value="currentPage",
	    required = false,defaultValue = "1") int currentPage) {
				
		int listCount = nService.getListCount(nType);
		
		
		
		Admin admin =(Admin)session.getAttribute("loginAdmin");
	
		
	
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<Notice> list = nService.selectList(pi,nType);

	
			
			if(nType ==1) {
	
				mv.addObject("list",list);
				mv.addObject("pi",pi);
				mv.addObject("admin",admin);
				mv.addObject("nType",nType);
				mv.setViewName("notice/dept_notice");
				
				
			}else if(nType==2){
				mv.addObject("list",list);
				mv.addObject("admin",admin);
				mv.addObject("pi",pi);
				mv.setViewName("notice/gener_notice");
			}
		
			
		return mv;
		
		
		
	}
	

	
	/**
	 * 2 게시물 상세조회
	 * @param mv
	 * @param nId
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("nDetail.do")
	public ModelAndView noticeDetail(ModelAndView mv, Notice n,
									@RequestParam(value="currentPage",required = false,defaultValue = "1") int currentPage) {
	
	
		 n = nService.selectNotice(n);
		
		
		
		if(n.getnType()==1) {
			mv.addObject("n",n)
			  .addObject("currentPage", currentPage)
			  .setViewName("notice/dept_notice_detail");
			
			
		}else if(n.getnType()==2) {
			
			mv.addObject("n",n)
			  .addObject("currentPage", currentPage)
			  .setViewName("notice/gener_notice_detail");

			
		}else {
			mv.addObject("msg", "게시글 상세 조회 실패").setViewName("common/errorPage");
		}
		return mv;
	}	
	
	
	
	
	/**
	 * 3 .게시글 작성 뷰
	 * @return
	 */
	@RequestMapping("nInsertView.do")
	public String noticeInsertView(@RequestParam int nType) {
		
		if(nType==1) {
		
		return "notice/dept_notice_write";
		}else if(nType==2){
		return "notice/gener_notice_write";
		}else {
		return 	"common/errorPage";
		}
	}
	
		

	/**
	 * 4. 게시글 작성
	 * @param n
	 * @param request
	 * @param file
	 * @return
	 */
	@RequestMapping("nInsert.do")
	public String noticeInsert(Notice n,HttpServletRequest request,
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
		
		for (int i = 0; i<18;i++) {
			for(int j=0; j<20; j++) {
				if(i==j) {
					
				}
			}
			
		}
		int result = nService.insertNotice(n);
	
		
		
		if(result>0) {
			if(n.getnType()==1) {
				return "redirect:nList.do?nType=1";
			}else if(n.getnType()==2){
				return "redirect:nList.do?nType=2";
			}
		}
		return "common/errorPage";
	
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
		
	/**
	 * 5 게시글 수정 뷰
	 * @param mv
	 * @param nId
	 * @return
	 */
	@RequestMapping("nUpView.do")
	public ModelAndView noticeUpdateView(ModelAndView mv,Notice n) {

		

		int nType = n.getnType();

		
		
		if(nType ==1 ) {
			mv.addObject("n",nService.selectUpdateNotice(n)).setViewName("notice/dept_notice_update");

		}else if(nType==2){
			mv.addObject("n",nService.selectUpdateNotice(n)).setViewName("notice/gener_notice_update");

		}
		return mv;
		
	}
	

	/**
	 * 
	 * 6. 게시글 수정
	 * @param mv
	 * @param n
	 * @param request
	 * @param file
	 * @return
	 */
	@RequestMapping("nUpdate.do")
	public ModelAndView noticeUpdate(ModelAndView mv,Notice n,HttpServletRequest request,
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
		System.out.println(n);
		
		int result = nService.updateNotice(n);
		ArrayList<Notice> list = nService.selectTopList();
		
		int lastIndex = list.size();
		
		int nId= list.get(lastIndex-1).getnId();
		
		
		
		
		if(result>0) {
			if(n.getnType()==1) {
			mv.addObject("nId",nId).setViewName("redirect:nDetail.do?nType=1");
			System.out.println("nId type=1::::" +n.getnId());
			}else if (n.getnType()==2) {
			mv.addObject("nId",nId).setViewName("redirect:nDetail.do?nType=2");
			System.out.println("nId tpye=2::::" +n.getnId());
			}
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
	/**
	 * 7. 게시글 삭제
	 * @param nId
	 * @param request
	 * @return
	 */
	@RequestMapping("nDelete.do")
	public String noticeDelete(Notice n , HttpServletRequest request) {
		
		
		
		
		n = nService.selectUpdateNotice(n);
		
		if(n.getRenameFileName() != null) {
			deleteFile(n.getRenameFileName(),request);
		}
		
		int result = nService.deleteNotice(n);
		
		if(result >0 && n.getnType()==1) {
			return "redirect:nList.do?nType=1";
			
		}else if(result>0 &&n.getnType()==2){
			return "redirect:nList.do?nType=2";
		}else {
			return "common/errorPage";
		}
			
		
	}
		
	
	/**
	 * 8. 댓글 조회
	 * @param response
	 * @param nId
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@RequestMapping(value="nRList.do")
	public void getReplyList(HttpServletResponse response, int nId ) throws JsonIOException, IOException {
	
		response.setContentType("application/json; charset=UTF-8");

		
		ArrayList<nReply> rList =nService.selectReplyList(nId);
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(rList,response.getWriter());
		
	}
	/**
	 * 9. 댓글 작성
	 * @param r
	 * @return
	 */
	@ResponseBody
	@RequestMapping("NoticeAddReply.do")
	public String addReply(nReply r) {
		
		
		int result = nService.insertReply(r);
		
		
		if(result>0) {
			return "success";
		}else {
			return "fail";
		}
	}	
	/**
	 * 10. 댓글 삭제
	 * @param r
	 * @return
	 */
	@ResponseBody
	@RequestMapping("NoticeDeleteReply.do")
	public String deleteReply(nReply r) {
		
		
		int result = nService.deleteReply(r);
		
		
		if(result>0) {
			return "success";
		}else {
			return "fail";
		}
	}
	/**
	 * 11. 댓글 업데이트
	 * @param r
	 * @return
	 */
	@ResponseBody
	@RequestMapping("noticeUpdateReply.do")
	public String updateReply(nReply r) {
		
		
		int result = nService.updateReply(r);
		
		
		if(result>0) {
			return "success";
		}else {
			return "fail";
		}
	}
	
	


		

//----------------------------------------------------------

	
	/**
	 * 1_2. 일반 게시물 리스트 조회
	 * @param mv
	 * @param session
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("generNList.do")
	public ModelAndView generNoticeList (ModelAndView mv,HttpSession session, @RequestParam(value="currentPage",
	    required = false,defaultValue = "1") int currentPage) {
//				
//		int listCount = nService.getDeptListCount();
//		
//		Admin admin =(Admin)session.getAttribute("loginAdmin");
//		
//		
//		
//		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
//		
//		ArrayList<Notice> list = nService.selectDeptList(pi);
//		ArrayList<Notice> listAll = nService.selectDeptListAll(pi); //비공개,공개 모두 관람 
//		
//		if(admin==null) {
//			mv.addObject("list",list);
//			mv.addObject("pi",pi);
//			mv.setViewName("notice/gener_notice");
//		}else{
//			mv.addObject("list",listAll);
//			mv.addObject("pi",pi);
//			mv.setViewName("notice/gener_notice");
//		}
	
		return mv;
		
	}

	
}