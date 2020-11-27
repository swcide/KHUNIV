package com.kh.univ.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.univ.admin.model.service.adminService;
import com.kh.univ.common.PageInfo;
import com.kh.univ.common.Pagination;
import com.kh.univ.helpDesk.model.vo.QnA;
import com.kh.univ.helpDesk.model.vo.Reply;

@Controller
public class adminController {
	@Autowired
	adminService aService;

	@RequestMapping("manageStudent.do")
	public String manageStudent()
		{
			return "admin/manageStudent";
		}

	@RequestMapping("manageBoard.do")
	public String manageBoard()
		{
			return "admin/manageBoard";
		}

	@RequestMapping("manageQna.do")
	public ModelAndView manageQna(ModelAndView mv, @RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage)
		{
			int listCount = aService.getListCount();
			System.out.println(listCount);

			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

			ArrayList<QnA> list = aService.selectList(pi);

			System.out.println(list);
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("admin/manageQna");

			return mv;
		}

	@RequestMapping(value = "manageQnA_detail.do", method = RequestMethod.GET)
	public ModelAndView manageQnA_detail(ModelAndView mv, int qnaId, @RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage)
		{
			System.out.println("야야야야야야야" + qnaId);
			QnA qna = aService.manageQnA_detail(qnaId);
			System.out.println(qna);
			if (qna != null) {
				mv.addObject("b", qna).addObject("currentPage", currentPage).setViewName("admin/manageQnaDetail");
			} else {
				mv.addObject("msg", "게시글 상세조회 실패").setViewName("common/errorPage");
			}
			return mv;
		}

	@RequestMapping("manageQnaDelete.do")
	public String boardDelete(int qnaId, HttpServletRequest request)
		{
			System.out.println("deleteController");
			int result = aService.deleteBoard(qnaId);
			if (result > 0) {
				return "redirect:QnA.do";
			} else {
				return "common/errorPage";
			}
		}

	@RequestMapping(value = "manageQnarList.do")
	public void getReplyList(HttpServletResponse response, int qnaId) throws JsonIOException, IOException
		{

			ArrayList<Reply> rList = aService.selectReplyList(qnaId);
			response.setContentType("application/json; charset=UTF-8");
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
			gson.toJson(rList, response.getWriter());
		}

	@ResponseBody
	@RequestMapping("manageQna_addReply.do")
	public String addReply(Reply r)
		{
			int result = aService.insertReply(r);
			if (result > 0) {
				return "success";
			} else {
				return "fail";
			}
		}

	@ResponseBody
	@RequestMapping("manageQna_DeleteReply.do")
	public String deleteReply(Reply r)
		{
			int result = aService.deleteReply(r);
			if (result > 0) {
				return "success";
			} else {
				return "fail";
			}
		}

	@ResponseBody
	@RequestMapping("manageQna_UpdateReply.do")
	public String updateReply(Reply r)
		{
			int result = aService.updateReply(r);

			if (result > 0) {
				return "success";
			} else {
				return "fail";
			}
		}

	@RequestMapping("manageNotice.do")
	public String manageNotice()
		{
			return "admin/manageNotice";
		}

	@RequestMapping("insertStudent.do")
	public String insertStudent()
		{
			return "admin/insertStudent";
		}

	@RequestMapping("insertProfessor.do")
	public String insertProfessor()
		{
			return "admin/insertProfessor";
		}

	@RequestMapping("insertLecture.do")
	public String insertLecture()
		{
			return "admin/insertLecture";
		}

}
