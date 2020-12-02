package com.kh.univ.lecture.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.univ.ad_Register.model.vo.semesterPoint;
import com.kh.univ.common.PageInfo;
import com.kh.univ.common.Pagination;
import com.kh.univ.lecture.model.service.profLecService;
import com.kh.univ.lecture.model.vo.Attendance;
import com.kh.univ.lecture.model.vo.ClassTest;
import com.kh.univ.lecture.model.vo.LectureClass;
import com.kh.univ.lecture.model.vo.LectureHomeWork;
import com.kh.univ.lecture.model.vo.LectureList;
import com.kh.univ.lecture.model.vo.LecturePlan;
import com.kh.univ.lecture.model.vo.LecturePlanWeek;
import com.kh.univ.lecture.model.vo.LectureStudent;
import com.kh.univ.lecture.model.vo.SemePoint;
import com.kh.univ.lecture.model.vo.attPointsDTO;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.testPage.model.service.TestPageService;
import com.kh.univ.testPage.model.vo.HomeworkGrade;
import com.kh.univ.testPage.model.vo.Test;

@SessionAttributes({ "loginProf" })
@Controller
public class prof_LectureController {

	@Autowired
	profLecService plService;
	
	@Autowired
	TestPageService tService; 

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

		if (aLc != null) 
		{
			mv.addObject("aLc", aLc);
			mv.setViewName("prof_lecture/prof_lectureList");
		} else {
			mv.addObject("msg", "로그인 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}

	@RequestMapping(value = "prof_lectureList2.do")
	public ModelAndView prof_lecture2(ModelAndView mv, HttpSession session)
		{
		Professor p = (Professor) session.getAttribute("loginProf");
		String pNo = p.getpNo();

		ArrayList<Attendance> ls = plService.AttendanceList(pNo);
		System.out.println(ls);

		if (ls != null) 
		{
			mv.addObject("ls", ls);
			mv.setViewName("prof_lecture/prof_lectureList2");
		} else {
			mv.addObject("msg", "로그인 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}

	@RequestMapping(value = "prof_lectureStudentList.do")
	public ModelAndView prof_lectureStudent(ModelAndView mv, LectureList ll, 
			@RequestParam(name = "pNo", required = false) String pNo, 
			@RequestParam(name = "classNo", required = false) String classNo, HttpSession session)
	{
		System.out.println(pNo);
		System.out.println(classNo);
		ll.setpNo(pNo);
		ll.setClassNo(classNo);

		ArrayList<Attendance> lc = plService.StudentAttendList(ll);
		System.out.println(lc);

		if (lc != null) 
		{
			mv.addObject("lc", lc);
			mv.setViewName("prof_lecture/prof_lectureStudentList");
		} else {
			mv.addObject("msg", "로그인 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	@RequestMapping(value = "prof_lectureStudentDetail.do")
	public ModelAndView prof_lectureStudent(ModelAndView mv, SemePoint sp,LectureStudent ls, LecturePlan lp, 
			@RequestParam(name = "pNo", required = false) String pNo, 
			@RequestParam(name = "sNo", required = false) String sNo, 
			@RequestParam(name = "classNo", required = false) String classNo,
			@RequestParam(name = "year", required = false) String year,
			@RequestParam(name = "semesterNo", required = false) String semesterNo,
			HttpSession session)
	{
		
		ls.setpNo(pNo);
		ls.setsNo(sNo);
		ls.setClassNo(classNo);
		
		sp.setClassNo(classNo);
		sp.setpNo(pNo);
		sp.setsNo(sNo);
		sp.setYear(year);
		sp.setSemesterNo(semesterNo);
		System.out.println("sp값 잘 들어가나?" + sp);
		SemePoint spp = plService.studentSemesterPoint(sp);
		ArrayList<LectureStudent> lc = plService.lectureStudentDetail(ls);
		LecturePlan ll = plService.lectureAttendancePointMax(lp);
		
		System.out.println("디비갔다온"+spp);
		if (lc != null) 
		{
			mv.addObject("sp",spp);
			mv.addObject("lc", lc);
			mv.addObject("lp",ll);
			mv.setViewName("prof_lecture/prof_lectureStudentDetail");
		} else {
			mv.addObject("msg", "에러가 발생했습니다.");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	@RequestMapping(value = "prof_lectureStudentAttPointPopup.do")
	public ModelAndView prof_lectureStudentAttPointPopup(ModelAndView mv, LectureStudent ls, LecturePlan lp, 
			@RequestParam(name = "pNo", required = false) String pNo, 
			@RequestParam(name = "sNo", required = false) String sNo, 
			@RequestParam(name = "classNo", required = false) String classNo, HttpSession session)
	{
		System.out.println(pNo);
		System.out.println(sNo);
		System.out.println(classNo);
		ls.setpNo(pNo);
		ls.setsNo(sNo);
		ls.setClassNo(classNo);

		ArrayList<LectureStudent> lc = plService.lectureStudentDetail(ls);
		LecturePlan ll = plService.lectureAttendancePointMax(lp);
		System.out.println("출석점수"+ll);

		if (lc != null) 
		{
			mv.addObject("lc", lc);
			mv.addObject("lp",ll);
			mv.setViewName("prof_lecture/prof_lectureStudentAttendancePointInsert");
		} else {
			mv.addObject("msg", "에러가 발생했습니다.");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	// 출석점수 배점에 따라 부여하기 모달 팝업창에서 디비에 값 넣어줌
	@ResponseBody
	@RequestMapping(value = "attendancePointUpdate.do")
	public String attendancePointUpdate(attPointsDTO apDTO,
			@RequestParam(name = "pNo", required = false) String pNo, 
			@RequestParam(name = "sNo", required = false) String sNo, 
			@RequestParam(name = "classNo", required = false) String classNo,
			@RequestParam(name = "year", required = false) String year,
			@RequestParam(name = "semester", required = false) String semesterNo,
			@RequestParam(name = "attendancePoints", required = false) String attendancePoints
			
			) {
		apDTO.setAttendancePoints(attendancePoints);
		apDTO.setClassNo(classNo);
		apDTO.setpNo(pNo);
		apDTO.setSemesterNo(semesterNo);
		apDTO.setsNo(sNo);
		apDTO.setYear(year);
		System.out.println("출석점수 잘 들어가나??");
		System.out.println("컨트롤러에 들어온 출석점수"+apDTO);
		int result = plService.attendancePointUpdate(apDTO);
		System.out.println("출석점수 들어가면 나오는 "+result);
		if(result>0) {
			System.out.println("성공했씁니다"+apDTO);
			return "success";
		} else {
			return "fail";
		}
		
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
	 * 동영상 / 첨부파일 업로드
	 * 
	 * @param lpw
	 * @param request
	 * @param file
	 * @param refFile
	 * @param classNo
	 * @return
	 */
	@RequestMapping("prof_lectureVideoInsert.do")
	public String prof_lectureVideoInsert(Model m, LecturePlanWeek lpw, HttpServletRequest request, @RequestParam(name = "lecVideoInsert", required = false) MultipartFile file,
			@RequestParam(name = "lecReferenceInsert", required = false) MultipartFile refFile, @RequestParam(name = "classNo", required = false) String classNo)
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
				ArrayList<LecturePlanWeek> aLpw = plService.lectureVideo(classNo);
				m.addAttribute("classNo", classNo);
				m.addAttribute(aLpw);
				return "redirect:prof_lectureVideo.do";
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
	 * 동영상 / 첨부파일 업데이트
	 * @param mv
	 * @param lpw
	 * @param request
	 * @param file
	 * @param refFile
	 * @return
	 */
	@RequestMapping("prof_lectureVideoUpdate.do")
	public ModelAndView lectureVideoUpdate(ModelAndView mv, LecturePlanWeek lpw, HttpServletRequest request, @RequestParam(name = "lecVideoUpdate", required = false) MultipartFile file,
			@RequestParam(name = "lecReferenceUpdate", required = false) MultipartFile refFile, @RequestParam(name = "classNo", required = false) String classNo){
			
			// 영상 파일 ----------------------------------------------------
			if (file != null && !file.isEmpty()) { // 새로 업로드 된 파일이 있다면 - 의 조건
				if (lpw.getLecVideo() != null) {// 기존의 파일이 존재했을 경우 파일 삭제하는 조건
					deleteFile(lpw.getLecVideo(), request);
				}
				String renameFileName = saveFile(file, request);
				if (renameFileName != null) {
					lpw.setLecVideo(file.getOriginalFilename());
					lpw.setLecVideo(renameFileName);
				}
			}
			// 첨부 파일 ----------------------------------------------------
			if (refFile != null && !refFile.isEmpty()) { // 새로 업로드 된 파일이 있다면 - 의 조건
				if (lpw.getLecVideo() != null) {// 기존의 파일이 존재했을 경우 파일 삭제하는 조건
					deleteFile(lpw.getLecReference(), request);
				}
				String renameFileName = saveFile(refFile, request);
				if (renameFileName != null) {
					lpw.setLecReference(refFile.getOriginalFilename());
					lpw.setLecReference(renameFileName);
				}
			}
			
			int result = plService.lectureVideoUpdate(lpw);
			System.out.println(result);
//			LecturePlanWeek lecDB = plService.updateAfter(lpw);
//			System.out.println("이거 ? " + lecDB);
//			int lecNum= lecDB.getLecNo();
//			System.out.println(lecNum);
			
			if (result > 0) {
				ArrayList<LecturePlanWeek> aLpw = plService.lectureVideo(classNo);
				mv.addObject("classNo", classNo);
				mv.addObject("aLpw", aLpw);
				mv.setViewName("prof_lecture/prof_lectureVideo");
			} else {
				mv.addObject("msg", "수정실패").setViewName("common/errorPage");
			}
			return mv;
		}

	public void deleteFile(String fileName, HttpServletRequest request)
		{
			String root = request.getSession().getServletContext().getRealPath("resources");
			String savePath = root + "\\lectureUploadFile";

			File f = new File(savePath + "\\" + fileName); // 기존에 업로드된 파일의 실제 경로를 이용해서 file 객체 생성

			if (f.exists()) {
				f.delete();
			}
		}

	/**
	 * 동영상 삭제
	 * 
	 * @param model
	 * @param lecNo
	 * @param classNo
	 * @return
	 */
	@RequestMapping(value = "prof_lectureVideoDelete.do")
	public String prof_lectureVideoDelete(LecturePlanWeek lpw, @RequestParam(name = "lecNo", required = false) int lecNo, @RequestParam(name = "classNo", required = false) String classNo)
		{
			int result = plService.lectureVideoDelete(lpw);
			if (result > 0) {
				return "redirect:prof_lectureVideo.do?classNo=" + classNo;
			} else {
				return "common/errorPage";
			}
		}

	@RequestMapping(value = "prof_lectureVideoList.do")
	public String prof_lectureVideoList(Model model)
		{
			return "prof_lecture/prof_lectureVideoList";
		}

//=====================================================================================//
								//교 수 강 의 계 획 서 //
//=====================================================================================//
	/**
	 * 강의계획서 관리 리스트 페이지 
	 * 
	 * @param mv
	 * @param ll
	 * @param classNo
	 * @param pNo
	 * @return
	 */
	@RequestMapping(value = "prof_Syllabus_LectureWrite.do")
	public ModelAndView prof_Syllabus_LectureWrite(ModelAndView mv, LectureList ll,
			@RequestParam(name = "pNo", required = false) String pNo, 
			@RequestParam(name = "classNo", required = false) String classNo, HttpSession session ) {
		System.out.println(pNo);
		System.out.println(classNo);
		ll.setpNo(pNo);
		ll.setClassNo(classNo);
		ArrayList <LecturePlanWeek> lpw = plService.prof_Syllabus_LectureWeekSelect(ll);
		LecturePlan lp = plService.prof_Syllabus_LectureSelect(ll);
		System.out.println(lpw);
		System.out.println(lp);
		if(lp !=null&& lpw!= null) {
			mv.addObject("lp",lp);
			mv.addObject("lpw",lpw);
			mv.setViewName("prof_lecture/prof_Syllabus_LectureWrite");
		}else {
			mv.addObject("msg","로그인 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	/**
	 * 교수용 강의계획서 등록/수정
	 * 
	 * @param mv
	 * @param lp
	 * @return
	 */
	@RequestMapping(value = "prof_Syllabus_LectureUpdate.do")
	public ModelAndView prof_Syllabus_LectureUpdate(ModelAndView mv, LecturePlan lp ) {
		System.out.println("컨트롤러"+lp);
		int result = plService.prof_Syllabus_LectureUpdate(lp);
		System.out.println(result);
		if(result>0) {
			System.out.println(lp);
			mv.setViewName("prof_lecture/prof_lecturePlanList"); // 어느페이지로

		}else {
			System.out.println(lp);
			mv.addObject("msg","수정실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}


	@RequestMapping(value = "prof_learningprogress.do")
	public String prof_learningprogress(Model model)
	{
		return "prof_lecture/prof_learnig_progress";
	}

	/**
	 * 교수용 강의계획서 등록/수정
	 * 
	 * @param mv
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "prof_lecturePlanList.do")
	public ModelAndView prof_lecturePlanList(ModelAndView mv, HttpSession session) {
		Professor pNo = (Professor) session.getAttribute("loginProf");
		System.out.println(pNo);
		System.out.println("게시판들어왔다");
		ArrayList <LectureList> plpl = plService.SyllaPlanList(pNo);
		if(plpl !=null) {
			mv.addObject("plpl",plpl);
			mv.setViewName("prof_lecture/prof_lecturePlanList");
		}else {
			mv.addObject("msg","로그인 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}

	

	
//------------------------강의동 시험---------------------------------------------------------------------------
	
	
	/**
	 * 
	 * 시험리스트
	 * @param mv
	 * @param session
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("prof_testList.do")
	public ModelAndView prof_testList(ModelAndView mv,HttpSession session,
			@RequestParam(value="currentPage",required = false,defaultValue = "1") int currentPage) {
		
		Professor p= (Professor)session.getAttribute("loginProf");
		
		int listCount = plService.getListCount(p);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		
		
		ArrayList<ClassTest> cTList = plService.classSelectList(p,pi);
		
//		System.out.println(cTList);
		
		
		mv.addObject("cTList",cTList);
		mv.addObject("pi",pi);
		mv.setViewName("prof_lecture/prof_testList");
		return mv;
	}

	
	/**
	 * 
	 * 인서트 뷰
	 * @param session
	 * @return
	 */
	@RequestMapping( "prof_testInsertView.do")
	public ModelAndView prof_testInsertView(ModelAndView mv, HttpSession session) {
		
		Professor p= (Professor)session.getAttribute("loginProf");
		String pNo =p.getpNo();
		
		ArrayList<LectureClass> lc = plService.selectValue(pNo);
		

		
		mv.addObject("lc",lc);
		mv.addObject("p",p);
		mv.setViewName("prof_lecture/prof_test_insert"); 
		
		return mv;
	}
		

	
	


	/**
	 * 
	 * 스케쥴 insert
	 * @param mv
	 * @param ct
	 * @param openDate
	 * @param openTime
	 * @return
	 */
	@RequestMapping( "prof_testScheduleInsert.do")
	public ModelAndView prof_testInsert(ModelAndView mv, ClassTest ct,
			@RequestParam(value="openDate",required = false)String openDate, @RequestParam(value="openTime",required = false)String openTime
//			@RequestParam(value="startDate",required = false)String startDate1, @RequestParam(value="startTime",required = false)Date startTime,
//			@RequestParam(value="endDate",required = false)String endDate1, @RequestParam(value="endTime",required = false)Date endTime ) {
		 ){
		String openDate2 = openDate+" "+openTime;
		ct.setOpenDate(openDate2);
//		--------------------------------------------------
		String str = ct.getcName(); 
		String[] arr = str.split(",");
		ct.setcName(arr[0]);
		ct.setcNo(arr[1]);
		
		
		
		
//		-------------------------------------------------------
		String str2 =openDate;
		String str3 =openTime;
		
		
		String[] arr2 = str2.split("-");
		String[] arr3 = str3.split(":");
		
		
		
		String tNo=ct.gettType()+arr2[0]+arr2[1]+arr2[2]+arr3[0]+arr3[1];
		ct.settNo(tNo);//시험 번호
		
		
		
		
		int result = plService.insertTestSchedule(ct);
		
		if(result>0) {
			mv.addObject("cNo",ct.getcNo());
			mv.addObject("tNo",ct.gettNo());
			mv.setViewName("redirect:qList.do");
		}
		return mv;
	}
	
	/**
	 * 시험스케쥴 디테일
	 * @param mv
	 * @param tNo
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("ctDetail.do")
	public ModelAndView prof_TestDetail(ModelAndView mv,String tNo ,@RequestParam(value="currentPage",required = false,defaultValue = "1") int currentPage) {
		ClassTest ct = plService.selectClassOne(tNo);
	
		mv.addObject("ct",ct);
		mv.addObject("currentPage",currentPage);
		mv.setViewName("prof_lecture/prof_test_detail");
		
		return mv;
	}
	
	
	
	
	/**
	 * 스케쥴 업데이트 뷰
	 * @param mv
	 * @param tNo
	 * @return
	 */
	@RequestMapping("tUpScheduleView.do")
	public ModelAndView boardUpdateView(ModelAndView mv, String tNo) {
		mv.addObject("ct",plService.selectClassOne(tNo)).setViewName("prof_lecture/prof_tSchedule_update");
		return mv;
		
	}
	
	@RequestMapping("tUpSchedule.do")
	public ModelAndView boardUpdate(ModelAndView mv, ClassTest ct,
			@RequestParam(value="openDate",required = false)String openDate, @RequestParam(value="openTime",required = false)String openTime
//			@RequestParam(value="startDate",required = false)String startDate1, @RequestParam(value="startTime",required = false)Date startTime,
//			@RequestParam(value="endDate",required = false)String endDate1, @RequestParam(value="endTime",required = false)Date endTime ) {
		 ) {

		String openDate2 = openDate+" "+openTime;
		ct.setOpenDate(openDate2);


		
		
		
		
		ArrayList<Test> t = plService.selectClassList(ct.getcNo());
		int result = plService.updateTestSchedule(ct);
		
		if(result>0) {
			mv.addObject("cNo",ct.getcNo());
			mv.addObject("tNo",ct.gettNo());
			mv.setViewName("redirect:qList.do");
		}
		return mv;
	}
	
	/**
	 * 
	 * 문제 업데이트
	 * @param t
	 * @param cNo
	 * @return
	 */
	@ResponseBody
	@RequestMapping("prof_testUpdate.do")
	public String prof_TestUpdate(Test t ,String cNo) {


//		ArrayList<Test> t1 = plService.selectClassList(cNo);
		
		System.out.println(t);
		t.getqNo();
		
		
		int result = plService.updateTest(t);
		System.out.println(result);
		
		if(result>0) {
			return "success";
		}else {
			return "fail";
		}
		
	}
	
	
	
	
	/**
	 * 
	 * 문제 저장
	 * @param mv
	 * @param t
	 * @return
	 */
	@RequestMapping( "testInsert.do")
	public ModelAndView prof_TestInsert(ModelAndView mv,Test t) {
		
		String cNo =t.getcNo();
		String tNo =t.gettNo();
		t.getqTitle();
		
		int result = plService.insertTest(t);
		
		if (result>0) {
			mv.addObject("cNo",cNo);
			mv.addObject("tNo",tNo);
			mv.setViewName("redirect:qList.do");
		}
		
		
		return mv;
	}

	/**
	 * 문제 리스트
	 * @param mv
	 * @param cNo
	 * @param tNo
	 * @return
	 */
	@RequestMapping("qList.do")
	public ModelAndView qList(ModelAndView mv, String cNo,String tNo) {
		
//		
//		
		ArrayList<Test> t = plService.selectClassList(tNo);
		ClassTest ct = plService.selectClassOne(tNo);
		mv.addObject("t",t);
		mv.addObject("ct",ct)
		.setViewName("prof_lecture/prof_test_after_insert");
		return mv;	
		
	}
	
	/**
	 * 문제 리스트 ajax
	 * @param mv
	 * @param cNo
	 * @param tNo
	 * @return
	 */
	@RequestMapping("takeQList.do")
	public void takeQlistAjax( Test t1,HttpServletResponse response) throws JsonIOException, IOException  {
		response.setContentType("application/json; charset=UTF-8");
		ArrayList<Test> t = plService.takeClassList(t1);
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(t,response.getWriter());
	}
	/**
	 * 문제 리스트 불러오기 저장
	 * @param cNo
	 * @param response
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@ResponseBody
	@RequestMapping("takeQListAdd.do")
	public String takeQListAddAjax(Test t,String [] qId)   {
		
		ArrayList<Test> tArr = new ArrayList<Test>();	
		
		System.out.println(t.getcNo());
		System.out.println(t.gettNo());
		
		for (int i = 0; i < qId.length; i++) {
			System.out.println(qId[i]+":qId "+i+"번쨰");
		
//			Test t1 = new Test();
			
			Test t1 = plService.selectTest(Integer.parseInt(qId[i]));
			
			t1.settNo(t.gettNo());
			
			tArr.add(t1);
		}
			
		
		
		System.out.println(tArr);
		System.out.println(t);
		System.out.println("qid-------takeQAdd------");
		

//		Test t1 = plService.selectTest(t.getqId());
		
//		t1.settNo(t.gettNo());
//		System.out.println(t);
//		
		int result = plService.takeAddQ(tArr);
		System.out.println(result);
		
		if(result>0) {
			return "success";
		}else {
			return "fail";
		}
	}
	
	

	
	@RequestMapping("qdelete.do")
	public String testDelete(Test t) {
		
		System.out.println(t);
		int result = plService.deleteTest(t);
		System.out.println(result);
		if (result>0) {
			return "redirect:qList.do?cNo="+t.getcNo()+"&tNo="+t.gettNo();
		}else {
			return "common/errorPage";
		}
		
	}
	
	
	
	
	
	
	
	
	
	/**
	 * 
	 * 과제 리스트
	 * @param mv
	 * @param session
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("hlist.do")
	public ModelAndView QuizList( ModelAndView mv, HttpSession session)  {
		
		
		
		Professor p= (Professor)session.getAttribute("loginProf");
		
		String pNo = p.getpNo();

		ArrayList <LectureList> ll = plService.hSelectList(p);
		
		mv.addObject("pNo",pNo);
		mv.addObject("ll",ll);
		mv.setViewName("prof_lecture/prof_homework_list");
		return mv;

		
	}
	
	@RequestMapping( "hWeekList.do")
	public ModelAndView prof_homeworkWeekView(ModelAndView mv,LectureHomeWork lh) {
		
		ArrayList <LectureHomeWork> hList = plService.selectHList(lh); 
		mv.addObject("lh",lh);
		mv.addObject("hList",hList);
		mv.setViewName("prof_lecture/prof_homework_weekList"); 
		
		return mv;
	}
	
	
	@RequestMapping("hWeekInsertView.do")
	public ModelAndView QuizDelete2(ModelAndView mv, LectureHomeWork lh) {
		
		
		mv.addObject("lh",lh);
		mv.setViewName("prof_lecture/prof_homework_insert");
		
		return mv;
	}
	
	/**
	 * 과제 제출 - 교수
	 * @param lh
	 * @param request
	 * @param file
	 * @return
	 */
	
	
	@RequestMapping("hInsert.do")
	public String homeworkEvaludation(LectureHomeWork lh,HttpServletRequest request,
			 @RequestParam(name="uploadFile",required=false) MultipartFile file) {
		
		System.out.println(lh);
		System.out.println(file);
		
		if(!file.getOriginalFilename().equals("")) {
			//서버에 업로드를 해야한다.
			String renameFIleName =  saveFile(file,request);
			
			if(renameFIleName != null) { // 파일이 잘 저장된 경우;
				lh.setOriginalFileName(file.getOriginalFilename());
				lh.setRenameFileName(renameFIleName);
				
			}
		}
		
		String openDate = lh.getOpenDate();
		
		String arr[] = openDate.split("-");
		
		String str = arr[0]+arr[1]+arr[2];
		
		System.out.println("d여기오니ㅣㅣㅣㅣㅣㅣ?");
		System.out.println(lh);
		
		

		
		lh.sethNo("H"+lh.getpNo()+str);
		
		int result = plService.insertHomework(lh);	
		
		if(result>0) {
			return "redirect:hWeekList.do?cNo="+lh.getcNo()+"&pNo="+lh.getpNo();
		}else {
			return "common/errorPage";
		}
	}
	
	
	
	
	
	/**
	 * 평가 뷰
	 * @param mv
	 * @param lh
	 * @return
	 */
	@RequestMapping( "sEvaluation.do")
	public ModelAndView prof_StdEvaluation(ModelAndView mv,HomeworkGrade gb) {
		
		
		
		System.out.println(gb);
		
		ArrayList<LecturePlanWeek> ag = plService.selectSeList(gb);
		ArrayList<HomeworkGrade> hg = plService.SelectHGList(gb);
		System.out.println(ag);
		
		System.out.println(hg);
		
		mv.addObject("hg",hg);
		mv.addObject("lh",gb);
		mv.addObject("ag",ag);
		mv.setViewName("prof_lecture/prof_homework_Evaluation"); 
		
		return mv;
	}
	
	/**
	 * 
	 * 평가하기
	 * @param mv
	 * @param lh
	 * @return
	 */
	@RequestMapping( "sEvaluationInsert.do")
	public String prof_StdEvaluationUpdate(HttpSession session , HomeworkGrade gb ) {
		
		Professor p =  (Professor)session.getAttribute("loginProf");
		
		
		
		String pNo =p.getpNo();
		String cNo =gb.getcNo();
		
		gb.setpNo(pNo);
		
		
		System.out.println(gb);
		
		
		

		int result=plService.EvaluationInsert(gb);
		
		
		
//		----------------------------------------- semesterPoint insert
		
		ArrayList<HomeworkGrade> hg =plService.hList(gb); 
		int grade =0;
		
		for (int i = 0; i < hg.size(); i++) {
			
		  grade +=hg.get(i).getPoint();
		}
		System.out.println(grade);
		
		LecturePlan lp = tService.lpOne(cNo);
		
		
		int reportPoint = lp.getAssignmentPoints();
		
		System.out.println(grade);
		System.out.println(reportPoint+"examPoint");
		
		int report = (int) (grade*(reportPoint)/120);
		
		System.out.println(report);
		semesterPoint sp = new semesterPoint();
		Calendar cal = Calendar.getInstance();
		String year = String.valueOf(cal.get(Calendar.YEAR));
		int month = cal.get(Calendar.MONTH+1);
		
		
		
		sp.setcNo(gb.getcNo());
		sp.setpNo(gb.getpNo());
		sp.setsNo(gb.getsNo());
		sp.setSemYear(year);
		
	
		System.out.println(sp);
		
		if(month >8 && hg.size()==6) {
			sp.setSemNo("2");
			sp.setReport(report);
			int result2 = tService.updateSp(sp);
		}else if(month<8 && hg.size()==6) {
			sp.setReport(report);
			sp.setsNo("1");
			int result2 = tService.updateSp(sp);
		}
		
		
		
		return "redirect:sEvaluation.do?cNo="+cNo+"&lecNo="+gb.getLecNo()+"&hNo="+gb.gethNo();
	}
	
	
	

}
