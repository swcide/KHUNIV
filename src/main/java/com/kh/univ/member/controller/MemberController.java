package com.kh.univ.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import com.kh.univ.member.model.service.MemberService;
import com.kh.univ.member.model.vo.Admin;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;

@SessionAttributes("loginUser")
@Controller
public class MemberController {

  @Autowired
  private MemberService mService;
  private Logger logger = LoggerFactory.getLogger(MemberController.class);

  // 암호화 처리
  /*
   * @Autowired private BCryptPasswordEncoder bcryptPasswordEncoder;
   */

<<<<<<< HEAD
  /*
   * 3. session에 저장할 때 @SessionAttributes 사용
   * 
   * Model에 Attribute가 추가될 때 자동으로 키 값을 찾아 세션에 등록하는 기능을 제공하는 어노테이션
   */
  @RequestMapping(value = "login.do")
  public String memberLogin(Student s, Professor p, Admin a, Model model,
      @RequestParam(value = "type1") int type1, @RequestParam(value = "type2") int type2) {
    System.out.println(type1 + ": " + type2);
    System.out.println("Student : " + s);
    if (type1 == 1) {
      switch (type2) {
        case 1:
          Student loginUser = mService.loginMember(s);
          System.out.println("loginUser : " + loginUser);
          model.addAttribute("loginUser", loginUser);
          return "redirect:main.do";
        case 2:
          Professor loginProf = mService.loginProf(p);
          model.addAttribute("loginProf", loginProf);
          return "redirect:main.do";
        default:
          Admin loginAdmin = mService.loginAdmin(a);
          model.addAttribute("loginAdmin", loginAdmin);
          return "redirect:main.do";
      }
    } else {
      switch (type2) {
        case 1:
          Student loginUser = mService.loginMember(s);
          System.out.println("loginUser : " + loginUser);
          model.addAttribute("loginUser", loginUser);
          return "redirect:ad_main.do";
        case 2:
          Professor loginProf = mService.loginProf(p);
          model.addAttribute("loginProf", loginProf);
          return "redirect:prof_main.do";
        default:
          Admin loginAdmin = mService.loginAdmin(a);
          model.addAttribute("loginAdmin", loginAdmin);
          return "redirect:admin.do";
      }
    }
  }
=======
	/*
	 * 3. session에 저장할 때 @SessionAttributes 사용
	 * 
	 * Model에 Attribute가 추가될 때 자동으로 키 값을 찾아 세션에 등록하는 기능을 제공하는 어노테이션
	 */
	@RequestMapping(value="login.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String memberLogin(Student s, Professor p, Admin a, Model model, HttpSession session, @RequestParam("type1") String type1, @RequestParam("type2") String type2)
		{
			System.out.println(type1 + ": " + "type1");
			System.out.println(type2 + ": " + "type2");
			
			if (type1 == "1") {
				switch (type2) {
					case "1":
						Student loginUser = mService.loginMember(s);
						model.addAttribute("loginUser", loginUser);
						return "redirect:main.do";
					case "2":
						Professor loginProf = mService.loginProf(p);
						model.addAttribute("loginProf", loginProf);
						return "redirect:main.do";
					default:
						Admin loginAdmin = mService.loginAdmin(a);
						model.addAttribute("loginAdmin", loginAdmin);
						return "redirect:main.do";
				}
			} else {
				switch (type2) {
					case "1":
						Student loginUser = mService.loginMember(s);
						model.addAttribute("loginUser", loginUser);
						return "redirect:ad_main.do";
					case "2":
						Professor loginProf = mService.loginProf(p);
						model.addAttribute("loginProf", loginProf);
						return "redirect:prof_main.do";
					default:
						Admin loginAdmin = mService.loginAdmin(a);
						model.addAttribute("loginAdmin", loginAdmin);
						return "redirect:admin.do";
				}
			}
		
		}
>>>>>>> branch 'master' of https://github.com/KHunivesity/khuniv.git

  // 로그아웃
  @RequestMapping("logout.do")
  public String logout(SessionStatus status) {

    // 세션의 상태를 확정 지어주는 메소드 호출이 필요하다.
    status.setComplete();
    return "redirect:home.do";
  }

<<<<<<< HEAD
  // 마이페이지
  @RequestMapping("mypage.do")
  public String myInfoView() {
    return "member/mypage";
  }
=======
	// 마이페이지
	@RequestMapping("mypage.do")
	public String myInfoView()
		{
			return "member/mypage";
		}
	//테스트용
	@RequestMapping("admin.do")
	public String myInfoView2()
		{
			return "member/mypage";
		}
>>>>>>> branch 'master' of https://github.com/KHunivesity/khuniv.git

}
