package com.kh.univ.helpDesk.controller;


import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.univ.common.Pagination;
import com.kh.univ.common.PageInfo;
import com.kh.univ.helpDesk.model.service.helpDeskService;
import com.kh.univ.helpDesk.model.vo.QnA;
import com.kh.univ.helpDesk.model.vo.Reply;
import com.kh.univ.member.model.vo.Student;
import com.kh.univ.notice.model.vo.Notice;
import com.kh.univ.notice.model.vo.nReply;

/**
 * Handles requests for the application home page.
 */
@Controller
public class helpDeskController {
	
	@Autowired
	private helpDeskService hdService;
	
	private static final Logger logger = LoggerFactory.getLogger(helpDeskController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "FAQ.do", method = RequestMethod.GET)
	public String FAQ(Model model) {
		return "help_info/FAQ";
	}

	/**
	 * QnA List & Count
	 * @param mv
	 * @param currentPage
	 * @param qnaId 
	 * @param response 
	 * @return
	 */
	@RequestMapping("QnA.do")                                                                                        
	public ModelAndView boardList(ModelAndView mv, @RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage) {
		int listCount = hdService.getListCount();
		System.out.println(listCount);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<QnA> list = hdService.selectList(pi);
	
		System.out.println(list);
		mv.addObject("list",list);
		mv.addObject("pi",pi);
		mv.setViewName("help_info/QnA");

		return mv;
		
	}
	
	/**
	 * QnA Detail
	 * @param mv
	 * @param qnaId
	 * @param currentPage
	 * @return
	 */
	@RequestMapping(value = "QnA_detail.do", method = RequestMethod.GET)
	public ModelAndView QnA_detail(ModelAndView mv, int qnaId, @RequestParam(value="currentPage", required=false, defaultValue="1")int currentPage) {
			QnA qna = hdService.selectBoard(qnaId);
			System.out.println(qna);
			if(qna != null) {
				mv.addObject("b", qna)
				    .addObject("currentPage", currentPage)
				    .setViewName("help_info/QnA_detail");
			}else {
				mv.addObject("msg","게시글 상세조회 실패").setViewName("common/errorPage");
			}
			return mv;
	}
	
	
	
	/**
	 * QnA Insert
	 * @param q
	 * @param request
	 * @return
	 */
	@RequestMapping("qna_insert.do")
	public String insertBoard(QnA q,HttpServletRequest request ) {
		int result = hdService.insertQnA(q);
		
		if(result>0) {
			System.out.println(result);
			return "redirect:QnA.do";
		}else {
			return "common/errorPage";
		}
	
	}
	
	/**
	 * QnA UpdateView
	 * @param mv
	 * @param qnaId
	 * @return
	 */
	@RequestMapping("qnaUpView.do")
	public ModelAndView boardUpdateView(ModelAndView mv, int qnaId) {
		mv.addObject("b", hdService.selectUpdateBoard(qnaId)).setViewName("help_info/QnA_update");
		
		return mv;
	}
	
	/**
	 * QnA UpdateForm
	 * @param mv
	 * @param qna
	 * @param request
	 * @return
	 */
	@RequestMapping("qnaUpdate.do")
	public ModelAndView boardUpdate(ModelAndView mv, QnA qna, HttpServletRequest request) {
		int result = hdService.updateContents(qna);
		System.out.println(result);
		if(result > 0) {
			mv.addObject("qnaId", qna.getQnaId()).setViewName("redirect:QnA_detail.do");
		}else {
			mv.addObject("msg", "수정실패").setViewName("common/errorPage");
		}
		return mv;
	}
	
	/**
	 * QnA Delete
	 * @param qnaId
	 * @param request
	 * @return
	 */
	@RequestMapping("qnaDelete.do")
	public String boardDelete(int qnaId, HttpServletRequest request) {
			System.out.println("deleteController");
		int result = hdService.deleteBoard(qnaId);
		if(result > 0) {
			return "redirect:QnA.do";
		}else {
			return "common/errorPage";
		}
	}
	
	/**
	 * QnA Write
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "QnA_write.do")
	public String QnA_write(Model model) {
		return "help_info/QnA_write";
	}

	/**
	 * My QnA
	 * @param mv
	 * @param session
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("myQnA.do")                                                                                        
	public ModelAndView myQnAList(ModelAndView mv,HttpSession session,@RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage ) {
		int listCount = hdService.getMyListCount();
		
		Student student = (Student)session.getAttribute("loginUser");
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		ArrayList<QnA> list = hdService.mySelectList(pi, student);
		System.out.println(list);
		mv.addObject("list",list);
		mv.addObject("pi",pi);
		mv.setViewName("help_info/myQnA");
		
		return mv;
	}
	
	/**
	 * QnA ReplyList
	 * @param response
	 * @param qnaId
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@RequestMapping(value="qnarList.do")
	public void getReplyList(HttpServletResponse response, int qnaId) throws JsonIOException, IOException {
		
		ArrayList<Reply> rList = hdService.selectReplyList(qnaId);
		response.setContentType("application/json; charset=UTF-8");
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(rList, response.getWriter());
	}
	
	/**
	 * QnA ReplyInsert
	 * @param r
	 * @return
	 */
	@ResponseBody
	@RequestMapping("qna_addReply.do")
	public String addReply(Reply r) {
		int result = hdService.insertReply(r);
		if(result > 0) {
			return "success";
		}else {
			return "fail";
		}
	}
	
	/**
	 * QnA ReplyDelete
	 * @param r
	 * @return
	 */
	@ResponseBody
	@RequestMapping("qna_DeleteReply.do")
	public String deleteReply(Reply r) {
		int result = hdService.deleteReply(r);
		if(result>0) {
			return "success";
		}else {
			return "fail";
		}
	}
	
	/**
	 * QnA ReplyUpdate
	 * @param r
	 * @return
	 */
	@ResponseBody
	@RequestMapping("qna_UpdateReply.do")
	public String updateReply(Reply r) {
		int result = hdService.updateReply(r);
		
		if(result>0) {
			return "success";
		}else {
			return "fail";
		}
	}
	
}

