package com.kh.univ.member.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.ad_Register.model.vo.grdExp;
import com.kh.univ.member.model.service.MemberService;
import com.kh.univ.member.model.vo.Admin;
import com.kh.univ.member.model.vo.Email;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;

@SessionAttributes({ "loginUser", "loginProf", "loginAdmin" })
@Controller
public class MemberController {

	@Autowired
	private MemberService mService;
	@Autowired
	private EmailSender emailSender;

	private Logger logger = LoggerFactory.getLogger(MemberController.class);

	// 암호화 처리
	/*
	 * @Autowired private BCryptPasswordEncoder bcryptPasswordEncoder;
	 */

	/*
	 * 3. session에 저장할 때 @SessionAttributes 사용
	 * 
	 * Model에 Attribute가 추가될 때 자동으로 키 값을 찾아 세션에 등록하는 기능을 제공하는 어노테이션
	 */
	/**
	 * @param s
	 * @param p
	 * @param a
	 * @param model
	 * @param type1
	 * @param type2
	 * @param id
	 * @param pw
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "login.do")
	public String memberLogin(Student s, Professor p, Admin a, Model model, @RequestParam(value = "type1") int type1, @RequestParam(value = "type2") int type2, @RequestParam(name = "id") String id,
			@RequestParam(name = "pw") String pw, HttpServletRequest request, HttpServletResponse response) throws IOException {

		System.out.println(id);
		System.out.println(pw);

		System.out.println("type1:" + type1 + "type2:" + type2);

		if (type1 == 1) {
			switch (type2) {
			case 1:
				s.setsNo(id);
				s.setsPwd(pw);
				s.setType(type2);
				Student loginUser = mService.loginMember(s);
				if (loginUser != null) {
					System.out.println(loginUser);
					model.addAttribute("loginUser", loginUser);

					return "main";
				} else {
					response.setContentType("text/html; charset=UTF-8");

					PrintWriter out = response.getWriter();
					out.println("<script>alert('로그인 정보를 확인해주세요.'); history.go(-1);</script>");
					out.flush();
					return "main";

				}

			case 2:
				p.setpNo(id);
				p.setpPwd(pw);

				Professor loginProf = mService.loginProf(p);
				if (loginProf != null) {
					model.addAttribute("loginProf", loginProf);
					model.addAttribute("type2", type2);

					return "main";

				} else {
					response.setContentType("text/html; charset=UTF-8");

					PrintWriter out = response.getWriter();
					out.println("<script>alert('로그인 정보를 확인해주세요.'); history.go(-1);</script>");
					out.flush();
					return "main";

				}

			case 3:
				a.setaId(id);
				a.setaPwd(pw);
				Admin loginAdmin = mService.loginAdmin(a);
				System.out.println(loginAdmin);

				if (loginAdmin != null) {
					model.addAttribute("loginAdmin", loginAdmin);

					model.addAttribute("type2", type2);

					return "redirect:main.do";
				} else {
					response.setContentType("text/html; charset=UTF-8");

					PrintWriter out = response.getWriter();
					out.println("<script>alert('로그인 정보를 확인해주세요 admin.'); history.go(-1);</script>");
					out.flush();
					return "main";
				}
			default:
				response.setContentType("text/html; charset=UTF-8");

				PrintWriter out = response.getWriter();
				out.println("<script>alert('로그인 정보를 확인하쇼.'); history.go(-1);</script>");
				out.flush();
				return "main";

			}
		} else {
			switch (type2) {
			case 1:
				s.setsNo(id);
				s.setsPwd(pw);
				Student loginUser = mService.loginMember(s);

				if (loginUser != null) {
					model.addAttribute("loginUser", loginUser);
					model.addAttribute("type2", type2);
					return "administration_main";
				} else {
					response.setContentType("text/html; charset=UTF-8");

					PrintWriter out = response.getWriter();
					out.println("<script>alert('로그인 정보를 확인해주세요.'); history.go(-1);</script>");
					out.flush();
					return "member/login";

				}

			case 2:
				p.setpNo(id);
				p.setpPwd(pw);
				Professor loginProf = mService.loginProf(p);

				if (loginProf != null) {
					model.addAttribute("loginProf", loginProf);
					model.addAttribute("type2", type2);
					return "professor_main";
				} else {
					response.setContentType("text/html; charset=UTF-8");

					PrintWriter out = response.getWriter();
					out.println("<script>alert('로그인 정보를 확인해주세요.'); history.go(-1);</script>");
					out.flush();
					return "member/login";

				}
			case 3:
				a.setaId(id);
				a.setaPwd(pw);
				Admin loginAdmin = mService.loginAdmin(a);

				if (loginAdmin != null) {
					System.out.println("type2" + type2);
					model.addAttribute("loginAdmin", loginAdmin);
					model.addAttribute("type2", type2);
					System.out.println(loginAdmin);
					return "admin/admin";
				} else {
					response.setContentType("text/html; charset=UTF-8");

					PrintWriter out = response.getWriter();
					out.println("<script>alert('로그인 정보를 확인해주세요.'); history.go(-1);</script>");
					out.flush();
					return "member/login";
				}
			default:
				response.setContentType("text/html; charset=UTF-8");

				PrintWriter out = response.getWriter();
				out.println("<script>alert('로그인 정보를 확인해주세요.'); history.go(-1);</script>");
				out.flush();
				return "member/login";
			}

		}
	}

	// 로그아웃
	@RequestMapping("logout.do")
	public String logout(SessionStatus status) {

		// 세션의 상태를 확정 지어주는 메소드 호출이 필요하다.
		status.setComplete();
		return "redirect:main.do";
	}

	// 로그아웃
	@RequestMapping("ad_logout.do")
	public String ad_logout(SessionStatus status) {

		// 세션의 상태를 확정 지어주는 메소드 호출이 필요하다.
		status.setComplete();
		return "member/login";
	}

	// 마이페이지
	@RequestMapping("mypage.do")
	public String myInfoView(Student s) {
		return "member/mypage";
	}

	@RequestMapping("prof_mypage.do")
	public String prof_myInfoView(Professor p, Model model) {

		return "member/prof_mypage";
	}

	/**
	 * 마이페이지 정보수정
	 * 
	 * @param s
	 * @param model
	 * @param addr1
	 * @param addr2
	 * @param pwd
	 * @param email
	 * @param sNo
	 * @param phone
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "updateMyPage.do", method = RequestMethod.POST)
	public String updateMyPage(Student s, Model model, @RequestParam("address") String addr1, @RequestParam("address_detail") String addr2, @RequestParam("check_pw") String pwd,
			@RequestParam("email") String email, @RequestParam("sNo") String sNo, @RequestParam("phone") String phone, HttpSession session) {
		if (!addr1.equals("")) {
			s.setsAddress(addr1 + "," + addr2);
			s.setsEmail(email);
			s.setsPhone(phone);
			s.setsNo(sNo);
		}
		// 암호화
		BCryptPasswordEncoder bcpt = new BCryptPasswordEncoder();
		s.setsPwd(pwd);
		String encodingPwd = bcpt.encode(s.getsPwd());
		System.out.println(encodingPwd);
		System.out.println(s.getsAddress());
		System.out.println(s.getsEmail());
		System.out.println(s.getsPhone());
		System.out.println(s.getsNo());
		// 다시 셋터 사용
		s.setsPwd(encodingPwd);
		int result = mService.updateMember(s);
		if (result > 0) {
			session.invalidate();

			return "member/login";
		} else {
			model.addAttribute("msg", "회원정보수정 실패");
			return "common/errorPage";
		}
	}

	@RequestMapping(value = "myImgUpload.do", method = RequestMethod.POST)
	@ResponseBody
	public String myImgUpload(Model m, Student s, HttpServletRequest request, @RequestParam(name = "file", required = false) MultipartFile file,
			@RequestParam(name = "sNo", required = false) String sNo) {
		System.out.println("이미지업로드");
		System.out.println(sNo);
		System.out.println(file);
		if (!file.getOriginalFilename().equals(" ")) {
			// 서버에 업로드 해야한다.
			String renameRefFileName = saveFile(file, request);
			if (renameRefFileName != null) { // 파일이 잘 저장된 경우
				s.setsImage(file.getOriginalFilename()); // 파일명만 DB에 저장
				s.setsImage(renameRefFileName);
			}
		}
		int result = mService.myImgUpload(s);
		System.out.println("Result 체크 : " + result);
		if (result > 0) {
			return "success";
		} else {
			return "fail";
		}
	}

	public String saveFile(MultipartFile file, HttpServletRequest request) {
		// 파일이 저장될 경로를 설정하기
		// 웹 서버의 ContextPath 불러와서 폴더의 경로를 가져온다
		// webapp 하위의 resources
		String root = request.getSession().getServletContext().getRealPath("resources");
		System.out.println("root : " + root);
		// 파일 경로
		// \를 문자로 인식시키기 위해서는 "\\"를 사용한다.
		String savePath = root + "\\img" + "\\memberImg";
		File folder = new File(savePath);
		if (!folder.exists()) {
			folder.mkdirs(); // 폴더가 없다면 생성한다.
		}
		String fileName = file.getOriginalFilename();
		String renamePath = folder + "\\" + fileName;// 실제 저장될 파일 경로 + 파일명
		try {
			file.transferTo(new File(renamePath)); // 전달 받은 file이 rename명으로 이때 파일이 저장된다.
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		}
		return fileName;
	}

	// ******************************************************
	/**
	 * 인증번호(난수생성) 후 메일 발송
	 * 
	 * @param s
	 * @param p
	 * @param email
	 * @param mv
	 * @param id
	 * @param e_mail
	 * @param type
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("pwEmail.do")
	public ModelAndView sendEmailAction(Student s, Professor p, Email email, ModelAndView mv, @RequestParam(value = "id") String id, @RequestParam(value = "e_mail") String e_mail,
			@RequestParam(value = "type") int type, HttpServletResponse response) throws Exception {
		// 난수 생성(인증번호)
		// 메일에 포함될 난수 값임
		String newPwd = "";
		String st[] = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z" };
		Random r = new Random();
		for (int i = 1; i <= 6; i++) {
			newPwd += st[r.nextInt(26)];
		}
		// 학생
		// -------------------------------------------------------------------------------------------
		if (type == 1) {
			s.setsNo(id);
			s.setsEmail(e_mail);
			s.setType(type);
			// 아이디와 이메일 둘 다 충족한 값 가져오기
			Student sendEmailS = mService.sendEmailS(s);
			// 메일 안내 내용에 사용될 유저 이름
			String userName = s.getsName();

			// 입력ID와 DB 저장된 ID 일치 && 입력Email과 DB 저장된 Email 일치 충족 시
			if (sendEmailS.getsNo().equals(id) && sendEmailS.getsEmail().equals(e_mail)) {
				email.setContent("비밀번호 찾기 인증번호 입니다." + System.getProperty("line.separator") + System.getProperty("line.separator") + "인증번호는 " + newPwd + " 입니다." + System.getProperty("line.separator")
						+ System.getProperty("line.separator") + " 인증번호를 올바르게 입력해주시길 바랍니다." + System.getProperty("line.separator") + System.getProperty("line.separator")
						+ "인증번호를 입력하시면 비밀번호 변경 화면으로 이동됩니다.");
				email.setReceiver(e_mail); // 받는사람
				email.setSubject("안녕하세요" + userName + "님. KH 사이버 대학교 행정팀 입니다."); // 이메일 제목

				emailSender.SendEmail(email); // email에 담은 값들을 전송 클래스로 이동

				mv.addObject("type", type);
				mv.addObject("id", id);
				mv.addObject("e_mail", e_mail);
				mv.addObject("newPwd", newPwd);
				mv.setViewName("member/pwNumCheck"); // 인증번호 확인 화면으로 전송
				return mv;
			} else {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('아이디와 이메일이 일치하지 않습니다.'); history.go(-1);</script>");
				out.flush();
				mv.setViewName("member/pwChange");
				return mv;
			}
			// 교수
			// ------------------------------------------------------------------------------
		} else {
			p.setpNo(id);
			p.setpEmail(e_mail);
			p.setType(type);
			Professor sendEmailP = mService.sendEmailP(p);

			if (sendEmailP.getpNo().equals(id)) {
				email.setContent("인증번호는 " + newPwd + " 입니다.");
				email.setReceiver(e_mail);
				email.setSubject(id + "님 비밀번호 찾기 메일입니다.");

				emailSender.SendEmail(email);

				mv.addObject("type", type);
				mv.addObject("id", id);
				mv.addObject("e_mail", e_mail);
				mv.addObject("newPwd", newPwd);
				mv.setViewName("member/pwNumCheck");
				return mv;
			} else {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('아이디와 이메일이 일치하지 않습니다.'); history.go(-1);</script>");
				out.flush();
				return null;
			}
		}
	}

	/**
	 * 발송된 난수와 입력값이 일치할 때 비밀번호 변경창으로 이동
	 * 
	 * @param insertPassCode
	 * @param type
	 * @param id
	 * @param passCode
	 * @param e_mail
	 * @param response_equals
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "pwNumCheck.do", method = RequestMethod.POST)
	public ModelAndView pass_injeung(@RequestParam(value = "insertPassCode") String insertPassCode, @RequestParam(value = "type") int type, @RequestParam(value = "id") String id,
			@RequestParam(value = "passCode") String passCode, @RequestParam(value = "e_mail") String e_mail, HttpServletResponse response_equals) throws IOException {

		ModelAndView mv = new ModelAndView();

		if (insertPassCode.equals(passCode)) {
			mv.addObject("e_mail", e_mail);
			mv.addObject("id", id);
			mv.addObject("type", type);
			mv.setViewName("member/pwChange");
			//인증번호 일치 시 비밀번호 변경화면으로 이동
			response_equals.setContentType("text/html; charset=UTF-8");
			PrintWriter out_equals = response_equals.getWriter();
			out_equals.println("<script>alert('인증번호가 일치하였습니다. 비밀번호 변경창으로 이동합니다.');</script>");
			out_equals.flush();
			return mv;

		} else {
			ModelAndView mv2 = new ModelAndView();
			mv2.setViewName("member/pwNumCheck");
			response_equals.setContentType("text/html; charset=UTF-8");
			PrintWriter out_equals = response_equals.getWriter();
			out_equals.println("<script>alert('인증번호가 일치하지않습니다. 인증번호를 다시 입력해주세요.'); history.go(-1);</script>");
			out_equals.flush();
			return mv2;
		}
	}

	/**
	 * 변경할 비밀번호 값 받고 비밀번호 암호화 및 업데이트
	 * 
	 * @param mv
	 * @param s
	 * @param p
	 * @param type
	 * @param id
	 * @param email
	 * @param pwd
	 * @param request
	 * @param pass
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "pwChange.do", method = RequestMethod.POST)
	public ModelAndView pwChange(ModelAndView mv, Student s, Professor p, @RequestParam(value = "type") int type, @RequestParam(value = "id") String id, @RequestParam(value = "e_mail") String email,
			@RequestParam(value = "password") String pwd, HttpServletRequest request, HttpServletResponse pass) throws Exception {
		BCryptPasswordEncoder bcpt = new BCryptPasswordEncoder();
		// 학생 비밀번호 업데이트 
		if (type == 1) {
			s.setsNo(id);
			s.setsPwd(pwd);
			s.setsEmail(email);
			s.setType(type);
			// 암호화
			String encodingPwd = bcpt.encode(s.getsPwd());
			// 다시 셋터 사용
			s.setsPwd(encodingPwd);
			int result = mService.pwChangeS(s);
			if (result > 0) {
				System.out.println("result : " + result);
				mv.setViewName("member/login");
			} else {
				mv.setViewName("member/pWChange");
			}
			return mv;
			// 교수 비밀번호 업데이트 
		} else {
			p.setpNo(id);
			p.setpPwd(pwd);
			p.setpEmail(email);
			p.setType(type);
			// 암호화
			String encodingPwd = bcpt.encode(p.getpPwd());
			// 다시 셋터 사용
			p.setpPwd(encodingPwd);
			int result = mService.pwChangeP(p);
			if (result > 0) {
				mv.setViewName("member/login");
			} else {
				mv.setViewName("member/pWChange");
			}
			return mv;
		}
	}
}
