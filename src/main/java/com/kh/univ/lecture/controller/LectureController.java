package com.kh.univ.lecture.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.reflection.SystemMetaObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.common.PageInfo;
import com.kh.univ.common.Pagination;
import com.kh.univ.lecture.model.service.LectureService;
import com.kh.univ.lecture.model.service.profLecService;
import com.kh.univ.lecture.model.vo.Assignment;
import com.kh.univ.lecture.model.vo.Attendance;
import com.kh.univ.lecture.model.vo.LectureClass;
import com.kh.univ.lecture.model.vo.LectureList;
import com.kh.univ.lecture.model.vo.LecturePlan;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;
import com.kh.univ.lecture.model.vo.MyLectureVideoList;
import com.kh.univ.lecture.model.vo.SemePoint;
import com.kh.univ.member.model.vo.Student;
import com.kh.univ.univlife.board.human.model.vo.HumanBoard;

@Controller //이거 안쓰면 에러남 
public class LectureController {
	
	@Autowired
	LectureService lService;
	// 학생용 강의리스트 조회
	@RequestMapping(value = "lecturelist.do")
	public ModelAndView lectureList(ModelAndView mv,HttpSession session) {
	Student student = (Student)session.getAttribute("loginUser"); // 로긴세션에서 뽑은 정보를 학생객체에 넣기
	String sNo = student.getsNo();
	ArrayList<LectureList> ll = lService.selectList1(sNo);
	System.out.println("ll: " + ll);
	mv.addObject("ll", ll);
	mv.setViewName("ad_lecture/ad_lectureList");
		return mv;
	}
	
	// 학생용 성적조회
	@RequestMapping(value = "grade.do")
	public ModelAndView grade(ModelAndView mv,HttpSession session, SemePoint sp,
			 @RequestParam(name = "year", required = false) String year,
			 @RequestParam(name = "semesterNo", required = false) String semesterNo
			 ) {
		Student student = (Student)session.getAttribute("loginUser"); // 로긴세션에서 뽑은 정보를 학생객체에 넣기
		String sNo = student.getsNo();
		sp.setsNo(sNo);
		sp.setYear(year);
		sp.setSemesterNo(semesterNo);
		System.out.println("화면에서 받아온"+sp);
		ArrayList<SemePoint> spl = lService.selectGradeList(sp);
		System.out.println("성적조회 리스트: " + spl);
		if(spl !=null) {
			mv.addObject("spl", spl);
			mv.setViewName("ad_lecture/ad_grade");
		}else {
			mv.addObject("msg","비정상적인 접근입니다.");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	@RequestMapping(value = "stdVideoList.do")
	public ModelAndView myLectureVideoList(ModelAndView mv,@RequestParam(name = "classNo", required = false) String classNo)
	{
		System.out.println("classNo: " + classNo);
		ArrayList<LecturePlanWeek> aLpw = lService.selectList2(classNo);
		System.out.println("aLpw: " + aLpw);
		if (aLpw != null) {
			mv.addObject("classNo", classNo);
			mv.addObject("aLpw", aLpw);
			mv.setViewName("ad_lecture/ad_myLectureVideoList");
		}else {
			mv.addObject("msg","로그인실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	/**
	 * 1.나의출석현황
	 * 
	 * @param mv
	 * @param session
	 * @param al
	 * @return
	 */
	@RequestMapping(value = "attendance.do")
	public ModelAndView attendance(ModelAndView mv,HttpSession session)
	{	
		Student student = (Student)session.getAttribute("loginUser"); // 로긴세션에서 뽑은 정보를 학생객체에 넣기
		String sNo = student.getsNo();
		System.out.println("학생번호 컨트롤러"+sNo);
		ArrayList<Attendance> al = lService.selectList(sNo);
		System.out.println(al);

//		System.out.print("attendanceRate: " + attendanceRate);

		
		mv.addObject("al", al);
		mv.setViewName("ad_lecture/ad_attendance");
		return mv;
	}
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "speciallecture.do")
	public String speciallecture( Model model) {
		
		return "ad_lecture/ad_special_lecture";
	}
	
	/**
	 * 과제 첨부파일 인서트
	 * @param mv
	 * @param lpw
	 * @param request
	 * @param file
	 * @param refFile
	 * @return
	 */
	@RequestMapping("std_assignmentInsert.do")
	public String assignmentInsertt(Model m, LecturePlanWeek lpw, HttpServletRequest request, @RequestParam(name = "assignmentFile", required = false) MultipartFile file,
			 @RequestParam(name = "classNo", required = false) String classNo)
	{
		

		if (!file.getOriginalFilename().equals(" ")) {
			//서버에 업로드 해야한다.
			String renameFileName = saveFile(file, request);
			if (renameFileName != null) { //파일이 잘 저장된 경우
				lpw.setLecReference(file.getOriginalFilename()); // 파일명만 DB에 저장
				lpw.setLecReference(renameFileName);
			}
		}

		int result = lService.assignmentInsert(lpw);

		if (result > 0) {
			ArrayList<LecturePlanWeek> aLpw = lService.assignment(classNo);
			m.addAttribute("classNo", classNo);
			m.addAttribute(aLpw);
			return "redirect:stdVideoList.do";
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
		String savePath = root + "\\assignmentUploadFile";

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
	
	public void deleteFile(String fileName, HttpServletRequest request)
	{
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\assignmentUploadFile";

		File f = new File(savePath + "\\" + fileName); // 기존에 업로드된 파일의 실제 경로를 이용해서 file 객체 생성

		if (f.exists()) {
			f.delete();
		}
	}

}