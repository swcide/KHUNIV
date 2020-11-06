package com.kh.univ.notice.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.common.Pagination;
import com.kh.univ.notice.model.service.NoticeService;
import com.kh.univ.notice.model.vo.Notice;
import com.kh.univ.notice.model.vo.PageInfo;

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
		
	
		
		PageInfo pi = Pagination.getpageInfo(currentPage, listCount);
		
		ArrayList<Notice> list = nService.selectList(pi);

		
		mv.addObject("list",list);
		mv.addObject("pi",pi);
		mv.setViewName("notice/dept_notice");
		return mv;
	}
	@RequestMapping("humandetail.do")
	public ModelAndView boardDetail(ModelAndView mv, int nId,
									@RequestParam(value="currentPage",required = false,defaultValue = "1") int currentPage) {
		System.out.println(nId);
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
			System.out.println(result);
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
		mv.addObject("n",nService.selectUpdateNotice(nId)).setViewName("board/boardUpdateForm");
		return mv;
		
	}
		
}
