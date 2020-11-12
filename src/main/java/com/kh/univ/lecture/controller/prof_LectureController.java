package com.kh.univ.lecture.controller;

import java.io.File;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.lecture.model.service.profLecService;
import com.kh.univ.lecture.model.vo.LectureClass;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;
import com.kh.univ.member.model.vo.Professor;

@SessionAttributes({ "loginProf" })
@Controller
public class prof_LectureController {

	@Autowired
	profLecService plService;

	/**
	 * 내 강의 동영상 목록 클릭 담당과목만 출력
	 * 
	 * @param mv
	 * @param lc
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "prof_lecturelist.do")
	public ModelAndView prof_lecture(ModelAndView mv, HttpSession session)
		{

			Professor p = (Professor) session.getAttribute("loginProf");
			String pNo = p.getpNo();

			ArrayList<LectureClass> aLc = plService.selectValue(pNo);
			System.out.println(aLc);
			System.out.println();

			if (aLc != null) {
				mv.addObject("aLc", aLc);
				mv.setViewName("prof_lecture/prof_lectureList");
			} else {
				mv.addObject("msg", "로그인 실패");
				mv.setViewName("common/errorPage");
			}
			return mv;
		}

	@RequestMapping(value = "prof_lectureList2.do")
	public String prof_lecture2(Model model)
		{
			return "prof_lecture/prof_lectureList2";
		}

	@RequestMapping(value = "prof_lectureStudentList.do")
	public String prof_Studentlecture(Model model)
		{
			return "prof_lecture/prof_lectureStudentList";
		}

	/**
	 * 해당 과목의 주차별 내용만 출력
	 * 
	 * @param mv
	 * @param lpw
	 * @param cNo
	 * @return
	 */
	@RequestMapping(value = "prof_lectureVideo.do")
	public ModelAndView prof_lectureVideo(ModelAndView mv, @RequestParam(name = "classNo", required = false) String classNo)
		{
			ArrayList<LecturePlanWeek> aLpw = plService.lectureVideo(classNo);
			System.out.println(classNo);
			System.out.println("classNo");
			if (aLpw != null) {
				mv.addObject("classNo", classNo);
				mv.addObject("aLpw", aLpw);
				mv.setViewName("prof_lecture/prof_lectureVideo");
			} else {
				mv.addObject("msg", "로그인 실패");
				mv.setViewName("common/errorPage");
			}
			return mv;
		}

	/**
	 *  동영상 / 첨부파일 업로드 
	 * @param lpw
	 * @param request
	 * @param file
	 * @param refFile
	 * @param classNo
	 * @return
	 */
	@RequestMapping("prof_lectureVideoInsert.do")
	public String prof_lectureVideoInsert(LecturePlanWeek lpw, HttpServletRequest request, @RequestParam(name = "lecVideo1", required = false) MultipartFile file,
			@RequestParam(name = "lecRef", required = false) MultipartFile refFile, @RequestParam(name = "classNo", required = false) String classNo)
		{
			System.out.println("in");
			System.out.println(classNo);
			if (!file.getOriginalFilename().equals(" ")) {
				//서버에 업로드 해야한다.

				String renameFileName = saveFile(file, request);
				if (renameFileName != null) { //파일이 잘 저장된 경우
					lpw.setLecVideo(file.getOriginalFilename()); // 파일명만 DB에 저장
					lpw.setLecVideo(renameFileName);
				}
			}

			if (!refFile.getOriginalFilename().equals(" ")) {
				//서버에 업로드 해야한다.
				String renameRefFileName = saveFile(refFile, request);
				if (renameRefFileName != null) { //파일이 잘 저장된 경우
					lpw.setLecReference(refFile.getOriginalFilename()); // 파일명만 DB에 저장
					lpw.setLecReference(renameRefFileName);
				}
			}

			int result = plService.lectureVideoInsert(lpw);

			if (result > 0) {
				return "redirect:prof_lectureVideo.do?classNo=" + classNo;
			} else {
				return "common/errorPage";
			}
		}

	public String saveFile(MultipartFile file, HttpServletRequest request)
		{
			//파일이 저장될 경로를 설정하기
			//웹 서버의 ContextPath 불러와서 폴더의 경로를 가져온다
			//webapp 하위의 resources
			String root = request.getSession().getServletContext().getRealPath("resources");
			System.out.println("root : " + root);
			//파일 경로
			// \를 문자로 인식시키기 위해서는 "\\"를 사용한다.
			String savePath = root + "\\lectureUploadFile";

			File folder = new File(savePath);

			if (!folder.exists()) {
				folder.mkdirs(); // 폴더가 없다면 생성한다. 
			}

			String fileName = file.getOriginalFilename();

			String renamePath = folder + "\\" + fileName;//실제 저장될 파일 경로 + 파일명

			try {
				file.transferTo(new File(renamePath)); // 전달 받은 file이 rename명으로 이때 파일이 저장된다.
			} catch (Exception e) {
				System.out.println("파일 전송 에러 : " + e.getMessage());
			}
			return fileName;
		}

	/**
	 * 동영상 삭제
	 * @param model
	 * @param lecNo
	 * @param classNo
	 * @return
	 */
	@RequestMapping(value = "prof_lectureVideoDelete.do")
	public String prof_lectureVideoDelete(LecturePlanWeek lpw, @RequestParam(name = "lecNo", required = false) int lecNo, @RequestParam(name = "classNo", required = false) String classNo)
		{
			int result = plService.lectureVideoDelete(lpw);
			if(result > 0) {
				return "redirect:prof_lectureVideo.do?classNo=" + classNo;
			}else {
				return "common/errorPage";
			}
		}

	@RequestMapping(value = "prof_lectureVideoList.do")
	public String prof_lectureVideoList(Model model)
		{
			return "prof_lecture/prof_lectureVideoList";
		}

	@RequestMapping(value = "prof_Syllabus_LectureWrite.do")
	public String prof_Syllabus_LectureWrite(Model model)
		{
			return "prof_lecture/prof_Syllabus_LectureWrite";
		}

	@RequestMapping(value = "prof_learningprogress.do")
	public String prof_learningprogress(Model model)
		{
			return "prof_lecture/prof_learnig_progress";
		}

	@RequestMapping(value = "prof_lecturePlanList.do")
	public String prof_lecturePlanList(Model model)
		{
			return "prof_lecture/prof_lecturePlanList";
		}

}
