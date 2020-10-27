package com.kh.univ.member.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.kh.univ.member.model.service.MemberService;
import com.kh.univ.member.model.vo.Member;

@SessionAttributes("loginUser")
@Controller
public class MemberController {

	@Autowired
	private MemberService mService;
	private Logger logger = LoggerFactory.getLogger(MemberController.class);

	// 암호화 처리
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;

	// 로그인
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String memberLogin(Member m, Model model, HttpSession session) {
		logger.info("로그인확인");

		// 프로젝트 배포 시에 성능 저하를 막기위해 logger의 레벨이 DEBUG여부를 확인하는 조건문 제시
		if (logger.isDebugEnabled()) {
			logger.debug("로그인확인 - debug");
		}
		Member loginUser = mService.loginMember(m);

		// 매치를(matches) 사용함으로써 회원가입 시 암호화된 비밀번호(m.getPwd())를 복호화 & 로그인 시 입력하는
		// 비밀번호(loginUser.getPwd())와 복호화된 비밀번호의 값이 동일한 경우 if문
		if (loginUser != null && bcryptPasswordEncoder.matches(m.getPwd(), loginUser.getPwd())) {
			model.addAttribute("loginUser", loginUser);
			return "redirect:home.do";
			// 동일하지 않은 경우 else문
		} else {
			model.addAttribute("msg", "로그인 실패");
			return "common/errorPage";
		}
	}

	// 로그아웃
	@RequestMapping("logout.do")
	public String logout(SessionStatus status) {

		// 세션의 상태를 확정 지어주는 메소드 호출이 필요하다.
		status.setComplete();
		return "redirect:home.do";
	}

	// 마이페이지
	@RequestMapping("myInfo.do")
	public String myInfoView() {
		return "member/myPage";
	}

	// 회원정보 수정
	@RequestMapping("mupdate.do")
	public String memberUpdate(Member m, Model model, @RequestParam("post") String post,
			@RequestParam("address1") String addr1, @RequestParam("address2") String addr2) {
		if (!post.equals("")) {
			m.setAddress(post + "," + addr1 + "," + addr2);
		}
		int result = mService.updateMember(m);

		if (result > 0) {
			model.addAttribute("loginUser", m);
			return "redirect:home.do";
		} else {
			model.addAttribute("msg", "회원정보수정 실패");
			return "common/errorPage";
		}

	}
}
