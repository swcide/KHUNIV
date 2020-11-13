package com.kh.univ.univlife.board.human.controller;

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
import com.kh.univ.univlife.board.human.model.service.HumanBoardService;
import com.kh.univ.univlife.board.human.model.vo.HumanBoard;
import com.kh.univ.univlife.board.human.model.vo.hReply;
import com.kh.univ.common.PageInfo;

@Controller
public class HumanBoardController {

	@Autowired
	private HumanBoardService hService;

	/**
	 * 1.게시글 조회데스
	 * 
	 * @param mv
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("human.do")
	public ModelAndView humanBoardList(ModelAndView mv,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage) {

		int listCount = hService.getListCount();

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		

		ArrayList<HumanBoard> list = hService.selectList(pi);

		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.setViewName("univ_life/human_board");
		return mv;
	}

	@RequestMapping("hBoardDetail.do")
	public ModelAndView HumanBoardDetail(ModelAndView mv, int hId,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage) {

		HumanBoard h = hService.selectHumanBoard(hId);

		if (h != null) {
			mv.addObject("h", h).addObject("currentPage", currentPage).setViewName("univ_life/human_board_detail");
		} else {
			mv.addObject("msg", "게시글 상세 조회 실패").setViewName("common/errorPage");
		}

		return mv;
	}

	@RequestMapping("hBoardInsertView.do")
	public String humanBoardInsertView() {
		return "univ_life/human_board_write";
	}

	@RequestMapping("hBoardInsert.do")
	public String humanBoardInsert(HumanBoard h, HttpServletRequest request,
			@RequestParam(name = "uploadFile", required = false) MultipartFile file) {

		if (!file.getOriginalFilename().equals("")) {

			String renameFIlename = saveFile(file, request);

			if (renameFIlename != null) {
				h.setOriginalFilename(file.getOriginalFilename());
				h.setRenameFilename(renameFIlename);

			}
		}

		int result = hService.insertHumanBoard(h);

		if (result > 0) {

			return "redirect:human.do";
		} else {
			return "common/errorPage";
		}

	}

	public String saveFile(MultipartFile file, HttpServletRequest request) {

		// 파일이 저장될 경로를 설정하기
		// 웹 서버의 contextPath를 불러와서 폴더의 경로를 가져온다.

		// webapp하위의 resources
		String root = request.getSession().getServletContext().getRealPath("resources");
		System.out.println("root : " + root);

		// 파일 경로
		// \를 문자로 인식시키기 위해서는 "\\"를 사용한다
		String savePath = root + "\\uploadFiles";

		File folder = new File(savePath);

		if (!folder.exists()) {
			folder.mkdirs(); // 폴더가 없다면 생성한다.
		}
		// 파일명을 rename 과정을 추가 --> "년월일시분초.확장자"로 변경
		String originalFilename = file.getOriginalFilename();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

		String renameFilename = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
				+ originalFilename.substring(originalFilename.lastIndexOf(".") + 1);

		String renamePath = folder + "\\" + renameFilename; // 실제 저장될 파일 경로 + 파일명

		try {
			file.transferTo(new File(renamePath)); // 전달받은 file이 rename명으로 이때 파일이 저장된다.

		} catch (Exception e) {
			System.out.println("파일전송 에러" + e.getMessage());
		}

		return renameFilename;
	}

	@RequestMapping("hBoardupView.do")
	public ModelAndView humanBoardUpdateView(ModelAndView mv, int hId) {
		System.out.println(hId);
		mv.addObject("h", hService.selectUpdateHumanBoard(hId)).setViewName("univ_life/human_board_update");
		return mv;

	}

	@RequestMapping("hboardupdate.do")
	public ModelAndView humanBoardUpdate(ModelAndView mv, HumanBoard h, HttpServletRequest request,
			@RequestParam(name = "uploadFile", required = false) MultipartFile file) {
		if (file != null && !file.isEmpty()) { // 새로 업로드된 파일이 있다면
			if (h.getRenameFilename() != null) { // 기존의 파일이 존재했을 경우 기존 파일 삭제.
				deleteFile(h.getRenameFilename(), request);
			}

			String renameFilename = saveFile(file, request);

			if (renameFilename != null) {
				h.setOriginalFilename(file.getOriginalFilename());
				h.setRenameFilename(renameFilename);
			}
		}
		System.out.println(h.gethId());
		System.out.println(h);

		int result = hService.updateHumanBoard(h);

		if (result > 0) {
			System.out.println(h.gethId());
			mv.addObject("hId", h.gethId()).setViewName("redirect:humandetail.do");
		} else {
			mv.addObject("msg", "수정실패").setViewName("common/errorPage");
		}

		return mv;
	}

	public void deleteFile(String filename, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\uploadFiles";
		File f = new File(savePath + "\\" + filename);// 기존의 업로드된 파일의 실제 경로를 이용해서 ifle 객체 생성

		if (f.exists()) {
			f.delete();
		}
	}

	@RequestMapping("hBoarddelete.do")
	public String humanBoardDelete(int hId, HttpServletRequest request) {

		HumanBoard h = hService.selectUpdateHumanBoard(hId);

		if (h.getRenameFilename() != null) {
			deleteFile(h.getRenameFilename(), request);
		}

		int result = hService.deleteHumanBoard(hId);

		if (result > 0) {
			return "redirect:human.do";
		} else {
			return "common/errorPage";
		}
	}
	@RequestMapping(value="huamnboardrList.do")
	public void getReplyList(HttpServletResponse response, int hId ) throws JsonIOException, IOException {
	
		response.setContentType("application/json; charset=UTF-8");

		
		ArrayList<hReply> rList =hService.selectReplyList(hId);
		

		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(rList,response.getWriter());
	}
	@ResponseBody
	@RequestMapping("hBoardAddReply.do")
	public String addReply(hReply r) {
		
		
		int result = hService.insertReply(r);
		
		
		System.out.println(result);
		if(result>0) {
			return "success";
		}else {
			return "fail";
		}
	}	
	@ResponseBody
	@RequestMapping("HuamnBoardDeleteReply.do")
	public String deleteReply(hReply r) {
		
		
		int result = hService.deleteReply(r);
		
		
		System.out.println(result);
		if(result>0) {
			return "success";
		}else {
			return "fail";
		}
	}
	@ResponseBody
	@RequestMapping("hBoardUpdateReply.do")
	public String updateReply(hReply r) {
		
		
		int result = hService.updateReply(r);
		
		
		System.out.println(result);
		if(result>0) {
			return "success";
		}else {
			return "fail";
		}
	}

}
