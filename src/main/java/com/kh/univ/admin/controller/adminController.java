package com.kh.univ.admin.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.univ.admin.model.service.adminService;
import com.kh.univ.common.PageInfo;
import com.kh.univ.common.Pagination;
import com.kh.univ.helpDesk.model.vo.QnA;
import com.kh.univ.helpDesk.model.vo.Reply;
import com.kh.univ.member.model.vo.Admin;
import com.kh.univ.notice.model.vo.Notice;
import com.kh.univ.univlife.board.human.model.vo.Report;
import com.kh.univ.univlife.board.human.model.vo.hReply;

@Controller
@SessionAttributes("loginAdmin")
public class adminController {
	@Autowired
	adminService aService;

	@RequestMapping("manageStudent.do")
	public String manageStudent() {
		return "admin/manageStudent";
	}

	@RequestMapping("manageBoard.do")
	public String manageBoard() {
		return "admin/manageBoard";
	}

	@RequestMapping("manageQna.do")
	public ModelAndView manageQna(ModelAndView mv,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage) {
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
	public ModelAndView manageQnA_detail(ModelAndView mv, int qnaId,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage) {
		System.out.println("?????????????????????" + qnaId);
		QnA qna = aService.manageQnA_detail(qnaId);
		System.out.println(qna);
		if (qna != null) {
			mv.addObject("b", qna).addObject("currentPage", currentPage).setViewName("admin/manageQnaDetail");
		} else {
			mv.addObject("msg", "????????? ???????????? ??????").setViewName("common/errorPage");
		}
		return mv;
	}

	@RequestMapping("manageQnaDelete.do")
	public String boardDelete(int qnaId, HttpServletRequest request) {
		System.out.println("deleteController");
		int result = aService.deleteBoard(qnaId);
		if (result > 0) {
			return "redirect:QnA.do";
		} else {
			return "common/errorPage";
		}
	}

	@RequestMapping(value = "manageQnarList.do")
	public void getReplyList(HttpServletResponse response, int qnaId) throws JsonIOException, IOException {

		ArrayList<Reply> rList = aService.selectReplyList(qnaId);
		response.setContentType("application/json; charset=UTF-8");
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(rList, response.getWriter());
	}

	@ResponseBody
	@RequestMapping("manageQna_addReply.do")
	public String addReply(Reply r) {
		int result = aService.insertReply(r);
		if (result > 0) {
			return "success";
		} else {
			return "fail";
		}
	}

	@ResponseBody
	@RequestMapping("manageQna_DeleteReply.do")
	public String deleteReply(Reply r) {
		int result = aService.deleteReply(r);
		if (result > 0) {
			return "success";
		} else {
			return "fail";
		}
	}

	@ResponseBody
	@RequestMapping("manageQna_UpdateReply.do")
	public String updateReply(Reply r) {
		int result = aService.updateReply(r);

		if (result > 0) {
			return "success";
		} else {
			return "fail";
		}
	}
// ????????? ???????????? ?????? 
	@RequestMapping("manageNotice.do")
	public ModelAndView manageNotice(ModelAndView mv,HttpSession session, @RequestParam int nType,@RequestParam(value="currentPage",
		    required = false,defaultValue = "1") int currentPage) {
int listCount = aService.getListCount(nType);
		
		Admin admin =(Admin)session.getAttribute("loginAdmin");
	
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<Notice> list = aService.selectList(pi,nType);

		if(nType ==1) {
	
				mv.addObject("list",list);
				mv.addObject("pi",pi);
				mv.addObject("admin",admin);
				mv.addObject("nType",nType);
				mv.setViewName("admin/manageDeptNotice");
				
			}else if(nType==2){
				mv.addObject("list",list);
				mv.addObject("admin",admin);
				mv.addObject("pi",pi);
				mv.setViewName("admin/manageGeneralNotice");
			}
		return mv;
	}
	
	//????????? ???????????? ????????? ??????
	@RequestMapping("manageNoticeDetail.do")
	public ModelAndView noticeDetail(ModelAndView mv, Notice n, @RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage) {

		n = aService.selectNotice(n);

		if (n.getnType() == 1) {
			mv.addObject("n", n).addObject("currentPage", currentPage).setViewName("admin/manageDeptDetail");

		} else if (n.getnType() == 2) {

			mv.addObject("n", n).addObject("currentPage", currentPage).setViewName("admin/manageGeneralDetail");

		} else {
			mv.addObject("msg", "????????? ?????? ?????? ??????").setViewName("common/errorPage");
		}
		return mv;
	}
	
	//????????? ???????????? ??????
	@RequestMapping("manageInsertView.do")
	public String noticeInsertView(@RequestParam int nType) {

		if (nType == 1) {

			return "admin/manageDeptWrite";
		} else if (nType == 2) {
			return "admin/manageGeneralWrite";
		} else {
			return "common/errorPage";
		}
	}
	
	
	@RequestMapping("manageNoticeInsert.do")
	public String noticeInsert(Notice n, HttpServletRequest request, @RequestParam(name = "uploadFile", required = false) MultipartFile file) {
		// @RequestParam?????????????????? ????????? ?????? ????????? ??????
		// form enctype??? multipart/form-data??? ???????????????????????????, method=post????????? ??????.
		// MultipartResolver??? multipartFile????????? ??????????????? ????????? ??? ??????.

		if (!file.getOriginalFilename().equals("")) {
			// ????????? ???????????? ????????????.
			String renameFIleName = saveFile(file, request);

			if (renameFIleName != null) { // ????????? ??? ????????? ??????;
				n.setOriginalFileName(file.getOriginalFilename());
				n.setRenameFileName(renameFIleName);

			}
		}

		for (int i = 0; i < 18; i++) {
			for (int j = 0; j < 20; j++) {
				if (i == j) {

				}
			}

		}
		int result = aService.insertNotice(n);

		if (result > 0) {
			if (n.getnType() == 1) {
				return "redirect:manageNotice.do?nType=1";
			} else if (n.getnType() == 2) {
				return "redirect:manageNotice.do?nType=2";
			}
		}
		return "common/errorPage";

	}

	public String saveFile(MultipartFile file, HttpServletRequest request) {

		// ????????? ????????? ????????? ????????????
		// ??? ????????? contextPath??? ???????????? ????????? ????????? ????????????.

		// webapp????????? resources
		String root = request.getSession().getServletContext().getRealPath("resources");
		System.out.println("root : " + root);

		// ?????? ??????
		// \??? ????????? ??????????????? ???????????? "\\"??? ????????????
		String savePath = root + "\\uploadFiles";

		File folder = new File(savePath);

		if (!folder.exists()) {
			folder.mkdirs(); // ????????? ????????? ????????????.
		}
		// ???????????? rename ????????? ?????? --> "??????????????????.?????????"??? ??????
		String originalFileName = file.getOriginalFilename();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

		String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "." + originalFileName.substring(originalFileName.lastIndexOf(".") + 1);

		String renamePath = folder + "\\" + renameFileName; // ?????? ????????? ?????? ?????? + ?????????

		try {
			file.transferTo(new File(renamePath)); // ???????????? file??? rename????????? ?????? ????????? ????????????.

		} catch (Exception e) {
			System.out.println("???????????? ??????" + e.getMessage());
		}

		return renameFileName;
	}
	
	// ????????? ???????????? ??????
	@RequestMapping("manageNoticeUpView.do")
	public ModelAndView noticeUpdateView(ModelAndView mv, Notice n) {

		int nType = n.getnType();

		if (nType == 1) {
			mv.addObject("n", aService.selectUpdateNotice(n)).setViewName("admin/manageDeptUpdate");

		} else if (nType == 2) {
			mv.addObject("n", aService.selectUpdateNotice(n)).setViewName("admin/manageGeneralUpdate");

		}
		return mv;

	}
	
	@RequestMapping("manageNoticeUpdate.do")
	public ModelAndView noticeUpdate(ModelAndView mv, Notice n, HttpServletRequest request, @RequestParam(name = "uploadFile", required = false) MultipartFile file) {
		if (file != null && !file.isEmpty()) { // ?????? ???????????? ????????? ?????????
			if (n.getRenameFileName() != null) { // ????????? ????????? ???????????? ?????? ?????? ?????? ??????.
				deleteFile(n.getRenameFileName(), request);
			}

			String renameFileName = saveFile(file, request);

			if (renameFileName != null) {
				n.setOriginalFileName(file.getOriginalFilename());
				n.setRenameFileName(renameFileName);
			}
		}
		System.out.println(n);

		int result = aService.updateNotice(n);

		System.out.println("result=" + result);
		Notice upN = aService.updateAfterNotice(n);
		System.out.println(upN);
		int nId = upN.getnId();
		System.out.println(nId);

		if (result > 0) {
			if (n.getnType() == 1) {
				mv.addObject("nId", nId).setViewName("redirect:manageNoticeDetail.do?nType=1");
				System.out.println("nId type=1::::" + n.getnId());
			} else if (n.getnType() == 2) {
				mv.addObject("nId", nId).setViewName("redirect:manageNoticeDetail.do?nType=2");
				System.out.println("nId tpye=2::::" + n.getnId());
			} else if (n.getnType() == 3) {
				mv.addObject("nId", nId).setViewName("redirect:manageNoticeDetail.do?nType=1");
				System.out.println("nId tpye=3::::" + n.getnId());
			} else if (n.getnType() == 4) {
				mv.addObject("nId", nId).setViewName("redirect:manageNoticeDetail.do?nType=2");
				System.out.println("nId tpye=4::::" + n.getnId());
			}

		} else {
			mv.addObject("msg", "????????????").setViewName("common/errorPage");
		}

		return mv;
	}

	public void deleteFile(String fileName, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\uploadFiles";
		File f = new File(savePath + "\\" + fileName);// ????????? ???????????? ????????? ?????? ????????? ???????????? ifle ?????? ??????

		if (f.exists()) {
			f.delete();
		}
	}
	
	//???????????????

	@RequestMapping("manageNoticeDelete.do")
	public String noticeDelete(Notice nc, HttpServletRequest request) {
		
		Notice n = aService.selectUpdateNotice(nc);
		System.out.println(n);
		
		if (n.getRenameFileName() != null) {
			deleteFile(n.getRenameFileName(), request);
		}

		int result = aService.deleteNotice(n);
		System.out.println(result);

		if (result > 0 && n.getnType() == 1) {
			return "redirect:manageNotice.do?nType=1";

		} else if (result > 0 && n.getnType() == 2) {
			return "redirect:manageNotice.do?nType=2";
		} else {
			return "common/errorPage";
		}

	}
	
	@RequestMapping(value = "insertStudent.do")
	public String insertStudent(Model model) {
		
		return "admin/insertStudent";
	}

	@RequestMapping("insertProfessor.do")
	public String insertProfessor() {
		return "admin/insertProfessor";
	}

	@RequestMapping("insertLecture.do")
	public String insertLecture() {
		return "admin/insertLecture";
	}

	
	//?????? ?????? ?????????
	@ResponseBody
	@RequestMapping(value = "/excelUploadAjax.do", method = RequestMethod.POST)
	public ModelAndView excelUploadAjax(MultipartFile testFile, MultipartHttpServletRequest request) throws Exception {

		System.out.println("????????? ??????");

		MultipartFile excelFile = request.getFile("excelFile");

		if (excelFile == null || excelFile.isEmpty()) {
			throw new RuntimeException("??????????????? ????????? ?????????");
		}

		File destFile = new File("D:\\upload\\" + excelFile.getOriginalFilename());

		try {
			// ?????? ????????? ????????? ?????? ?????? ????????? ?????????
			excelFile.transferTo(destFile);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage(), e);
		}

		// ???????????? ???????????? ?????? ?????????
		aService.excelUpload(destFile);

		destFile.delete();

		ModelAndView view = new ModelAndView();
		view.setViewName("/insertStudent.do");
		System.out.println("view: " + view);
		return view;
	}
	
	@RequestMapping(value="reportList.do")
	public void getReportList(HttpServletResponse response) throws JsonIOException, IOException {
	
		response.setContentType("application/json; charset=UTF-8");

		ArrayList<Report> rp =aService.selectReportList();
		System.out.println("rp" + rp);
		
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(rp,response.getWriter());
	}
}
