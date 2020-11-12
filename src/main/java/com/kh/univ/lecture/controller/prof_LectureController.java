package com.kh.univ.lecture.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.lecture.model.service.profLecService;
import com.kh.univ.lecture.model.vo.LectureClass;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;

@Controller
public class prof_LectureController {
	
	@Autowired
	profLecService plService;
	
	
	/**
	 * 내 강의 동영상 목록 클릭 시 DB 출력
	 * @param mv
	 * @param lc
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "prof_lecturelist.do")
	public ModelAndView prof_lecture(ModelAndView mv, LectureClass lc, HttpSession session) {
			ArrayList<LectureClass> aLc = plService.selectValue(lc);
			System.out.println(aLc);
			if(aLc != null) {
			mv.addObject("aLc",aLc);
			mv.setViewName("prof_lecture/prof_lectureList");
			}else {
				mv.addObject("msg","로그인 실패");
				mv.setViewName("common/errorPage");
			}
			return mv;
	}
	
	@RequestMapping(value = "prof_lectureList2.do")
	public String prof_lecture2(Model model) {
		return "prof_lecture/prof_lectureList2";
	}
	
	@RequestMapping(value = "prof_lectureStudentList.do")
	public String prof_Studentlecture(Model model) {
		return "prof_lecture/prof_lectureStudentList";
	}
	
	@RequestMapping(value = "prof_lectureVideo.do")
	public ModelAndView prof_lectureVideoWrite(ModelAndView mv, LecturePlanWeek lpw, HttpSession session) {
			ArrayList<LecturePlanWeek> aLpw = plService.lecVideoWrite(lpw);
			
			System.out.println(aLpw);
			if(aLpw != null) {
				mv.addObject("aLpw",aLpw);
				mv.setViewName("prof_lecture/prof_lectureVideo");
			}else {
				mv.addObject("msg","로그인 실패");
				mv.setViewName("common/errorPage");
			}
		return mv;
	}
	
	@RequestMapping(value ="prof_lectureVideoInsert.do")
	public String prof_lectureVideoInsert(LecturePlanWeek lpw, HttpServletRequest request,@RequestParam(name="lecVideo",required=false) MultipartFile file) {
			if(!file.getOriginalFilename().equals(" ")) {
				//서버에 업로드 해야한다.
				String renameFileName = saveFile(file,request);
				if(renameFileName != null) { //파일이 잘 저장된 경우
//					lpw.setLecVideo(file.getOriginalFilename()); // 파일명만 DB에 저장
					lpw.setLecVideo(renameFileName);
				}
			}
			
			int result = plService.lectureVideoInsert(lpw);
			if(result > 0) {
				return "redirect:prof_lectureVideo.do";
			}else {
				return "common/errorPage";
			}
		}
		
		public String saveFile(MultipartFile file, HttpServletRequest request) {
			//파일이 저장될 경로를 설정하기
			//웹 서버의 ContextPath 불러와서 폴더의 경로를 가져온다
			//webapp 하위의 resources
			String root = request.getSession().getServletContext().getRealPath("resources");
			System.out.println("root : " + root);
			
			//파일 경로
			// \를 문자로 인식시키기 위해서는 "\\"를 사용한다.
			String savePath = root + "\\videoUploadFile";
			
			File folder = new File(savePath);
			
			if(!folder.exists()) {
				folder.mkdirs(); // 폴더가 없다면 생성한다. 
			}
			
			String lecVideo = file.getOriginalFilename();
			
			String renamePath = folder + "\\"+lecVideo;//실제 저장될 파일 경로 + 파일명
			
			try {
				file.transferTo(new File(renamePath)); // 전달 받은 file이 rename명으로 이때 파일이 저장된다.
			}catch(Exception e) {
				System.out.println("파일 전송 에러 : " + e.getMessage());
			}
			return lecVideo;
		}

	
	@RequestMapping(value = "prof_lectureVideoList.do")
	public String prof_lectureVideoList(Model model) {
		return "prof_lecture/prof_lectureVideoList";
	}
	
	@RequestMapping(value = "prof_Syllabus_LectureWrite.do")
	public String prof_Syllabus_LectureWrite(Model model) {
		return "prof_lecture/prof_Syllabus_LectureWrite";
	}
	
	@RequestMapping(value = "prof_learningprogress.do")
	public String prof_learningprogress(Model model) {
		return "prof_lecture/prof_learnig_progress";
	}
	
	@RequestMapping(value = "prof_lecturePlanList.do")
	public String prof_lecturePlanList(Model model) {
		return "prof_lecture/prof_lecturePlanList";
	}
	
}	


	

	
	
	

	
	

	
