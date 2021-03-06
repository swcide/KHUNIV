package com.kh.univ.lecture.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
import com.kh.univ.indexController;
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
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.notice.model.service.NoticeService;
import com.kh.univ.notice.model.vo.Notice;
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
	 * ??? ?????? ????????? ?????? ?????? ??????????????? ??????
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
		

		if (aLc != null) 
		{
			mv.addObject("aLc", aLc);
			mv.setViewName("prof_lecture/prof_lectureList");
		} else {
			mv.addObject("msg", "????????? ??????");
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
			mv.addObject("msg", "????????? ??????");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}

	@RequestMapping(value = "prof_lectureStudentList.do")
	public ModelAndView prof_lectureStudent(ModelAndView mv, LectureList ll, 
			 HttpSession session)
	{
	
		ArrayList<Attendance> lc = plService.StudentAttendList(ll);
		System.out.println(lc);

		if (lc != null) 
		{
			mv.addObject("lc", lc);
			mv.setViewName("prof_lecture/prof_lectureStudentList");
		} else {
			mv.addObject("msg", "????????? ??????");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	@RequestMapping(value = "prof_lectureStudentDetail.do")
	public ModelAndView prof_lectureStudent(ModelAndView mv, SemePoint sp,LectureStudent ls, LecturePlan lp, 
		
			HttpSession session)
	{
		
		
		SemePoint spp = plService.studentSemesterPoint(sp);
		// ????????????&??????????????? ????????? ?????? ??? ??????
		ArrayList<LectureStudent> lc = plService.lectureStudentDetail(ls);
		// ????????? ?????? ?????? ?????? ??? ??????
		LecturePlan ll = plService.lectureAttendancePointMax(lp);
		
		if (lc != null) 
		{
			mv.addObject("sp",spp);
			mv.addObject("lc", lc);
			mv.addObject("lp",ll);
			mv.setViewName("prof_lecture/prof_lectureStudentDetail");
		} else {
			mv.addObject("msg", "????????? ??????????????????.");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	@RequestMapping(value = "prof_lectureStudentAttPointPopup.do")
	public ModelAndView prof_lectureStudentAttPointPopup(ModelAndView mv, SemePoint sp,  LectureStudent ls, LecturePlan lp, 
		
			HttpSession session)
	{
	
		
		System.out.println("???????????? ?????????"+ sp);
		SemePoint spp = plService.studentSemesterPoint(sp);
		ArrayList<LectureStudent> lc = plService.lectureStudentDetail(ls);
		LecturePlan ll = plService.lectureAttendancePointMax(lp);
		
		if (lc != null) 
		{
			mv.addObject("sp",spp);
			mv.addObject("lc", lc);
			mv.addObject("lp",ll);
			mv.setViewName("prof_lecture/prof_lectureStudentAttendancePointInsert");
		} else {
			mv.addObject("msg", "????????? ??????????????????.");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	// ???????????? ????????? ?????? ???????????? ?????? ??????????????? ????????? ??? ?????????
	@ResponseBody
	@RequestMapping(value = "attendancePointUpdate.do")
	public String attendancePointUpdate(SemePoint sp) {
	
		System.out.println("??????????????? ????????? ????????????"+sp);
		int result = plService.attendancePointUpdate(sp);
		System.out.println("???????????? ???????????? ????????? "+result);
		if(result>0) {
			System.out.println("??????????????????"+sp);
			return "success";
		} else {
			return "fail";
		}
		
	}

	
	
	
	/**
	 * ?????? ????????? ????????? ????????? ??????
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
			mv.addObject("msg", "????????? ??????");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}

	/**
	 * ????????? / ???????????? ?????????
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
				//????????? ????????? ????????????.

				String renameFileName = saveFile(file, request);
				if (renameFileName != null) { //????????? ??? ????????? ??????
					lpw.setLecVideo(file.getOriginalFilename()); // ???????????? DB??? ??????
					lpw.setLecVideo(renameFileName);
				}
			}

			if (!refFile.getOriginalFilename().equals(" ")) {
				//????????? ????????? ????????????.
				String renameRefFileName = saveFile(refFile, request);
				if (renameRefFileName != null) { //????????? ??? ????????? ??????
					lpw.setLecReference(refFile.getOriginalFilename()); // ???????????? DB??? ??????
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
			//????????? ????????? ????????? ????????????
			//??? ????????? ContextPath ???????????? ????????? ????????? ????????????
			//webapp ????????? resources
			String root = request.getSession().getServletContext().getRealPath("resources");
			System.out.println("root : " + root);
			//?????? ??????
			// \??? ????????? ??????????????? ???????????? "\\"??? ????????????.
			String savePath = root + "\\lectureUploadFile";

			File folder = new File(savePath);

			if (!folder.exists()) {
				folder.mkdirs(); // ????????? ????????? ????????????. 
			}

			String fileName = file.getOriginalFilename();

			String renamePath = folder + "\\" + fileName;//?????? ????????? ?????? ?????? + ?????????

			try {
				file.transferTo(new File(renamePath)); // ?????? ?????? file??? rename????????? ?????? ????????? ????????????.
			} catch (Exception e) {
				System.out.println("?????? ?????? ?????? : " + e.getMessage());
			}
			return fileName;
		}

	/**
	 * ????????? / ???????????? ????????????
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
			
			// ?????? ?????? ----------------------------------------------------
			if (file != null && !file.isEmpty()) { // ?????? ????????? ??? ????????? ????????? - ??? ??????
				if (lpw.getLecVideo() != null) {// ????????? ????????? ???????????? ?????? ?????? ???????????? ??????
					deleteFile(lpw.getLecVideo(), request);
				}
				String renameFileName = saveFile(file, request);
				if (renameFileName != null) {
					lpw.setLecVideo(file.getOriginalFilename());
					lpw.setLecVideo(renameFileName);
				}
			}
			// ?????? ?????? ----------------------------------------------------
			if (refFile != null && !refFile.isEmpty()) { // ?????? ????????? ??? ????????? ????????? - ??? ??????
				if (lpw.getLecVideo() != null) {// ????????? ????????? ???????????? ?????? ?????? ???????????? ??????
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
//			System.out.println("?????? ? " + lecDB);
//			int lecNum= lecDB.getLecNo();
//			System.out.println(lecNum);
			
			if (result > 0) {
				ArrayList<LecturePlanWeek> aLpw = plService.lectureVideo(classNo);
				mv.addObject("classNo", classNo);
				mv.addObject("aLpw", aLpw);
				mv.setViewName("prof_lecture/prof_lectureVideo");
			} else {
				mv.addObject("msg", "????????????").setViewName("common/errorPage");
			}
			return mv;
		}

	public void deleteFile(String fileName, HttpServletRequest request)
		{
			String root = request.getSession().getServletContext().getRealPath("resources");
			String savePath = root + "\\lectureUploadFile";

			File f = new File(savePath + "\\" + fileName); // ????????? ???????????? ????????? ?????? ????????? ???????????? file ?????? ??????

			if (f.exists()) {
				f.delete();
			}
		}

	/**
	 * ????????? ??????
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
								//??? ??? ??? ??? ??? ??? ??? //
//=====================================================================================//
	/**
	 * ??????????????? ?????? ????????? ????????? 
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
			mv.addObject("msg","????????? ??????");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	/**
	 * ????????? ??????????????? ??????/??????
	 * 
	 * @param mv
	 * @param lp
	 * @return
	 */
	@RequestMapping(value = "prof_Syllabus_LectureUpdate.do")
	public ModelAndView prof_Syllabus_LectureUpdate(ModelAndView mv, LecturePlan lp ) {
		System.out.println("????????????"+lp);
		int result = plService.prof_Syllabus_LectureUpdate(lp);
		System.out.println(result);
		if(result>0) {
			System.out.println(lp);
			mv.setViewName("prof_lecture/prof_lecturePlanList"); // ??????????????????

		}else {
			System.out.println(lp);
			mv.addObject("msg","????????????");
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
	 * ????????? ??????????????? ??????/??????
	 * 
	 * @param mv
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "prof_lecturePlanList.do")
	public ModelAndView prof_lecturePlanList(ModelAndView mv, HttpSession session) {
		Professor pNo = (Professor) session.getAttribute("loginProf");
		System.out.println(pNo);
		System.out.println("?????????????????????");
		ArrayList <LectureList> plpl = plService.SyllaPlanList(pNo);
		if(plpl !=null) {
			mv.addObject("plpl",plpl);
			mv.setViewName("prof_lecture/prof_lecturePlanList");
		}else {
			mv.addObject("msg","????????? ??????");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}

	

	
//------------------------????????? ??????---------------------------------------------------------------------------
	
	
	/**
	 * 
	 * ???????????????
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
		
		mv.addObject("cTList",cTList);
		mv.addObject("pi",pi);
		mv.setViewName("prof_lecture/prof_testList");
		return mv;
	}
	/**
	 * 
	 * ????????? ???
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
	 * ????????? insert
	 * @param mv
	 * @param ct
	 * @param openDate
	 * @param openTime
	 * @return
	 */
	@RequestMapping( "prof_testScheduleInsert.do")
	public ModelAndView prof_testInsert(ModelAndView mv, ClassTest ct,
			@RequestParam(value="openDate",required = false)String openDate, @RequestParam(value="openTime",required = false)String openTime
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
		ct.settNo(tNo);//?????? ??????
		
		
		
		
		int result = plService.insertTestSchedule(ct);
		
		if(result>0) {
			mv.addObject("cNo",ct.getcNo());
			mv.addObject("tNo",ct.gettNo());
			mv.setViewName("redirect:qList.do");
		}
		return mv;
	}
	/**
	 * ??????????????? ?????????
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
	 * ????????? ???????????? ???
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
	 * ?????? ????????????
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
	 * ?????? ??????
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
	 * ?????? ?????????
	 * @param mv
	 * @param cNo
	 * @param tNo
	 * @return
	 */
	@RequestMapping("qList.do")
	public ModelAndView qList(ModelAndView mv, String cNo,String tNo) {
		ArrayList<Test> t = plService.selectClassList(tNo);
		ClassTest ct = plService.selectClassOne(tNo);
		mv.addObject("t",t);
		mv.addObject("ct",ct)
		.setViewName("prof_lecture/prof_test_after_insert");
		System.out.println(t);
		return mv;	
		
	}
	/**
	 * ?????? ????????? ajax
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
	 * ?????? ????????? ???????????? ??????
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
		
		// qId ????????? ??????
		for (int i = 0; i < qId.length; i++) {
			
			Test t1 = plService.selectTest(Integer.parseInt(qId[i]));
			
			t1.settNo(t.gettNo());
			
			tArr.add(t1);
		}
		
		System.out.println(tArr);
		System.out.println(t);
		System.out.println("qid-------takeQAdd------");
		
		int result = plService.takeAddQ(tArr);
		System.out.println(result);
		
		if(result>0) {
			return "success";
		}else {
			return "fail";
		}
	}
	/**
	 * ?????? ??????
	 * @param t
	 * @return
	 */
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
	 * ?????? ?????????
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
	
	/**
	 * 
	 * ?????? ????????? ???
	 * @param mv
	 * @param lh
	 * @return
	 */
	@RequestMapping( "hWeekList.do")
	public ModelAndView prof_homeworkWeekView(ModelAndView mv,LectureHomeWork lh) {
		
		ArrayList <LectureHomeWork> hList = plService.selectHList(lh); 
		mv.addObject("lh",lh);
		mv.addObject("hList",hList);
		mv.setViewName("prof_lecture/prof_homework_weekList"); 
		
		return mv;
	}
	
	
	/**
	 * 
	 * ?????? ?????????
	 * @param mv
	 * @param lh
	 * @return
	 */
	@RequestMapping("hWeekInsertView.do")
	public ModelAndView QuizDelete2(ModelAndView mv, LectureHomeWork lh) {
		
		
		mv.addObject("lh",lh);
		mv.setViewName("prof_lecture/prof_homework_insert");
		
		return mv;
	}
	
	/**
	 * ?????? ?????? - ??????
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
			//????????? ???????????? ????????????.
			String renameFIleName =  saveFile(file,request);
			
			if(renameFIleName != null) { // ????????? ??? ????????? ??????;
				lh.setOriginalFileName(file.getOriginalFilename());
				lh.setRenameFileName(renameFIleName);
				
			}
		}
		
		String openDate = lh.getOpenDate();
		
		String arr[] = openDate.split("-");
		
		String str = arr[0]+arr[1]+arr[2];
		
		System.out.println("d???????????????????????????????");
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
	 * ?????? ???
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
	 * ????????????
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
		

		int result=plService.EvaluationInsert(gb);
		
		
//		----------------------------------------- semesterPoint insert
		
		ArrayList<HomeworkGrade> hg =plService.hList(gb); 
		int grade =0;
		
		for (int i = 0; i < hg.size(); i++) {
			
		  grade +=hg.get(i).getPoint();
		}
		
		LecturePlan lp = tService.lpOne(cNo);
		
		int reportPoint = lp.getAssignmentPoints();
		
		int report = (int) (grade*(reportPoint)/120);
		
		semesterPoint sp = new semesterPoint();
		Calendar cal = Calendar.getInstance();
		String year = String.valueOf(cal.get(Calendar.YEAR));
		int month = cal.get(Calendar.MONTH+1);
		
		
		sp.setcNo(gb.getcNo());
		sp.setpNo(gb.getpNo());
		sp.setsNo(gb.getsNo());
		sp.setSemYear(year);
		
	
		
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
