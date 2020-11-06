<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>KHCU | KH Cyber University</title>

<meta name="keywords" content="HTML5 Template" />
<meta name="description" content="Porto - Responsive HTML5 Template">
<meta name="author" content="okler.net">

<!-- Favicon -->
<link rel="shortcut icon" href="resources/img/favicon.ico" type="image/x-icon" />
<link rel="apple-touch-icon" href="resources/img/apple-touch-icon.png">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, shrink-to-fit=no">

<!-- Web Fonts  -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CShadows+Into+Light&display=swap" rel="stylesheet" type="text/css">

<!-- Vendor CSS -->
<link rel="stylesheet" href="resources/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/vendor/fontawesome-free/css/all.min.css">
<link rel="stylesheet" href="resources/vendor/animate/animate.compat.css">
<link rel="stylesheet" href="resources/vendor/simple-line-icons/css/simple-line-icons.min.css">
<link rel="stylesheet" href="resources/vendor/owl.carousel/assets/owl.carousel.min.css">
<link rel="stylesheet" href="resources/vendor/owl.carousel/assets/owl.theme.default.min.css">
<link rel="stylesheet" href="resources/vendor/magnific-popup/magnific-popup.min.css">

<!-- Theme CSS -->
<link rel="stylesheet" href="resources/css/theme.css">
<link rel="stylesheet" href="resources/css/theme-elements.css">
<link rel="stylesheet" href="resources/css/theme-blog.css">
<link rel="stylesheet" href="resources/css/theme-shop.css">

<!-- Current Page CSS -->
<link rel="stylesheet" href="resources/vendor/rs-plugin/css/settings.css">
<link rel="stylesheet" href="resources/vendor/rs-plugin/css/layers.css">
<link rel="stylesheet" href="resources/vendor/rs-plugin/css/navigation.css">
<link rel="stylesheet" href="resources/vendor/circle-flip-slideshow/css/component.css">

<!-- Demo CSS -->
<link rel="stylesheet" href="resources/css/demos/demo-resume.css">

<!-- Skin CSS -->
<link rel="stylesheet" href="resources/css/skins/default.css">
<link rel="stylesheet" href="resources/css/skins/skin-resume-blue.css">
<!-- Theme Custom CSS -->
<link rel="stylesheet" href="resources/css/custom.css">

<!-- SummerNote -->
<link rel="stylesheet" href="resources/plugins/summernote/summernote-bs4.css">

<!-- Head Libs -->
<script src="resources/vendor/modernizr/modernizr.min.js"></script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<style>
.table-hover tbody tr:hover {
	color: rgba(0, 83, 171, 0.9);
	background-color: rgba(0, 83, 171, 0.1)
}
</style>

</head>
<body>

	<div class="body">
		<header id="header" class="header-effect-shrink" data-plugin-options="{'stickyEnabled': true, 'stickyEffect': 'shrink', 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyChangeLogo': true, 'stickyStartAt': 30, 'stickyHeaderContainerHeight': 70}">
			<div class="header-body">
				<div class="header-container container">
					<div class="header-row">
						<div class="header-column">
							<div class="header-row">
								<div class="header-logo">
									<a href="main.do"> <img alt="Porto" width="140" height="40" data-sticky-width="140" data-sticky-height="40" src="resources/img/white-kr-logo.png">
									</a>
								</div>
							</div>
						</div>
						<div class="header-column justify-content-end">
							<div class="header-row">
								<div class="header-nav header-nav-line header-nav-top-line header-nav-top-line-with-border order-2 order-lg-1">
									<div class="header-nav-main header-nav-main-square header-nav-main-effect-2 header-nav-main-sub-effect-1">
										<nav class="collapse">
											<ul class="nav nav-pills" id="mainNav">
												<li class="dropdown"><a class="dropdown-item dropdown-toggle" href="#">학교 소개</a>
													<ul class="dropdown-menu">
														<li><a class="dropdown-item" href="univ_ego.do">건학 정신</a></li>
														<li><a class="dropdown-item" href="univ_rull.do">교칙 안내</a></li>
													</ul></li>
												<li class="dropdown"><a class="dropdown-item dropdown-toggle" href="#"> 학사 안내 </a>
													<ul class="dropdown-menu">
														<li><a class="dropdown-item" href="signup.do">수강 신청 안내</a></li>
														<li class="dropdown-submenu"><a class="dropdown-item" href="#">학적 관리</a>
															<ul class="dropdown-menu">
																<li><a class="dropdown-item" href="absence.do">휴학 안내</a></li>
																<li><a class="dropdown-item" href="return.do">복학 안내</a></li>
																<li><a class="dropdown-item" href="dropout.do">자퇴 안내</a></li>
																<li><a class="dropdown-item" href="postpone.do">졸업 유예 안내</a></li>
																<li><a class="dropdown-item" href="scholarship.do">장학금 안내</a></li>
																<li><a class="dropdown-item" href="tuition.do">등록금 납부 안내</a></li>
															</ul></li>
													</ul></li>
												<li class="dropdown"><a class="dropdown-item dropdown-toggle" href="#"> 대학 생활 </a>
													<ul class="dropdown-menu">
														<li class="dropdown-submenu"><a class="dropdown-item" href="emp.do">취업지원센터</a>
															<ul class="dropdown-menu">
																<li><a class="dropdown-item" href="emp.do">취업지원센터 바로가기</a></li>
															</ul></li>

														<li class="dropdown-submenu"><a class="dropdown-item" href="#">열린 광장</a>
															<ul class="dropdown-menu">
																<li class="dropdown-submenu"><a class="dropdown-item" href="dept_board.do">계열별 게시판</a>
																	<ul class="dropdown-menu">
																		<li><a class="dropdown-item" href="human.do">인문 사회 계열</a></li>
																		<li><a class="dropdown-item" href="natural.do">자연 과학 계열</a></li>
																		<li><a class="dropdown-item" href="engi.do">공학 계열</a></li>
																		<li><a class="dropdown-item" href="arts.do">예체능 계열</a></li>
																	</ul></li>
																<li class="dropdown-submenu"><a class="dropdown-item" href="#">취업정보 게시판</a>
																	<ul class="dropdown-menu">
																		<li><a class="dropdown-item" href="job.do">구인 공고</a></li>
																		<li><a class="dropdown-item" href="stu_sto.do">학생 이모저모</a></li>
																	</ul></li>
															</ul></li>
													</ul></li>
												<li class="dropdown"><a class="dropdown-item dropdown-toggle" href="#"> 상담 안내 </a>
													<ul class="dropdown-menu">
														<li class="dropdown-submenu"><a class="dropdown-item" href="#">상담센터</a>
															<ul class="dropdown-menu">
																<li><a class="dropdown-item" href="FAQ.do">FAQ</a></li>
																<li><a class="dropdown-item" href="QnA.do">Q&A</a></li>
																<li><a class="dropdown-item" href="myQnA.do">내 질문 내역</a></li>
															</ul></li>
													</ul></li>
												<li class="dropdown"><a class="dropdown-item dropdown-toggle" href="#"> 공지사항 </a>
													<ul class="dropdown-menu">
														<li><a class="dropdown-item" href="dept_notice.do">학사 공지</a></li>
														<li><a class="dropdown-item" href="gener_notice.do">일반 공지</a></li>
													</ul></li>
											</ul>
										</nav>
									</div>
									<button class="btn header-btn-collapse-nav" data-toggle="collapse" data-target=".header-nav-main nav">
										<i class="fas fa-bars"></i>
									</button>
								</div>
								<c:if test="${empty sessionScope }">
									<div class="header-nav-features header-nav-features-no-border header-nav-features-lg-show-border order-1 order-lg-2">
										<div class="header-nav-feature header-nav-features-user d-inline-flex mx-2 pr-2 signin" id="headerAccount">
											<a href="login.do" class="header-nav-features-toggle"> <i class="far fa-user"></i> 로그인
											</a>
											<div class="header-nav-features-dropdown header-nav-features-dropdown-mobile-fixed header-nav-features-dropdown-force-right" id="headerTopUserDropdown">
												<div class="signin-form">
													<h5 class="text-uppercase mb-4 font-weight-bold text-3">로그인</h5>
													<form action="login.do" id="fm" method="post">
														<div class="form-group">
															<label class="mb-1 text-2 opacity-8">학번* </label>
															<input id="id" type="text" name="id" class="form-control form-control-lg">
															<input type="hidden" id="hd1" name="type1">
															<input type="hidden" id="hd2" name="type2">
														</div>
														<div class="form-group">
															<label class="mb-1 text-2 opacity-8">비밀번호*</label>
															<input id="pw" type="password" name="pw" class="form-control form-control-lg">
														</div>
														<div class="form-row pb-2">
															<div class="form-group form-check col-lg-6 pl-1">
																<div class="custom-control custom-checkbox">
																	<input type="checkbox" class="custom-control-input" id="rememberMeCheck">
																	<label class="custom-control-label text-2" for="rememberMeCheck">비밀번호 저장하기</label>
																</div>
															</div>
															<div class="form-group col-lg-6 text-right">
																<a class="text-uppercase text-1 font-weight-bold text-color-dark" id="headerRecover" href="#">비밀번호를 잊으셨나요?</a>
															</div>
														</div>
														<div class="actions">
															<div class="form-row">
																<div class="col d-flex justify-content-end">
																	<button id="btnLogin" class="btn btn-primary" type="submit">로그인</button>
																</div>
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
								</c:if>
								<c:if test="${!empty sessionScope.loginUser }">
									<div class="header-nav-features header-nav-features-no-border header-nav-features-lg-show-border order-1 order-lg-2" style="position: none;">
										<div class="header-nav-feature header-nav-features-user header-nav-features-user-logged d-inline-flex mx-2 pr-2" id="headerAccount">
											<a href="#" class="header-nav-features-toggle"> <i class="far fa-user"></i> <c:out value="${loginUser.sName}" />
											</a>
											<div class="header-nav-features-dropdown header-nav-features-dropdown-mobile-fixed header-nav-features-dropdown-force-right" id="headerTopUserDropdown">
												<div class="row">
													<div class="col-8">
														<p class="mb-0 pb-0 text-2 line-height-1 pt-1">안녕하세요,</p>
														<p>
															<strong class="text-color-dark text-4"><c:out value="${loginUser.sName} 님" /></strong>
														</p>
													</div>
													<div class="col-4">
														<div class="d-flex justify-content-end">
															<img class="rounded-circle" width="40" height="40" alt="" src="img/avatars/avatar.jpg">
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col">
														<ul class="nav nav-list-simple flex-column text-3">
															<%-- 															<c:url var="mypage" value="mypage.do" /> --%>
															<%-- 															<c:url var="logout" value="logout.do" /> --%>
															
															<li class="nav-item"><a class="nav-link border-bottom-0" href="logout.do">로그아웃</a></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:if>
								<c:if test="${!empty sessionScope.loginAdmin }">
									<div class="header-nav-features header-nav-features-no-border header-nav-features-lg-show-border order-1 order-lg-2" style="position: none;">
										<div class="header-nav-feature header-nav-features-user header-nav-features-user-logged d-inline-flex mx-2 pr-2" id="headerAccount">
											<a href="#" class="header-nav-features-toggle"> <i class="far fa-user"></i> <c:out value="${loginAdmin.aId}" />
											</a>
											<div class="header-nav-features-dropdown header-nav-features-dropdown-mobile-fixed header-nav-features-dropdown-force-right" id="headerTopUserDropdown">
												<div class="row">
													<div class="col-8">
														<p class="mb-0 pb-0 text-2 line-height-1 pt-1">안녕하세요,</p>
														<p>
															<strong class="text-color-dark text-4"><c:out value="${loginAdmin.aId} 님" /></strong>
														</p>
													</div>
													<div class="col-4">
														<div class="d-flex justify-content-end">
															<img class="rounded-circle" width="40" height="40" alt="" src="img/avatars/avatar.jpg">
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col">
														<ul class="nav nav-list-simple flex-column text-3">
															<%-- 															<c:url var="mypage" value="mypage.do" /> --%>
															<%-- 															<c:url var="logout" value="logout.do" /> --%>
															<li class="nav-item"><a class="nav-link border-bottom-0" href="logout.do">로그아웃</a></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:if>
								<c:if test="${!empty sessionScope.loginProf }">
									<div class="header-nav-features header-nav-features-no-border header-nav-features-lg-show-border order-1 order-lg-2" style="position: none;">
										<div class="header-nav-feature header-nav-features-user header-nav-features-user-logged d-inline-flex mx-2 pr-2" id="headerAccount">
											<a href="#" class="header-nav-features-toggle"> <i class="far fa-user"></i> <c:out value="${loginProf.pName}" />
											</a>
											<div class="header-nav-features-dropdown header-nav-features-dropdown-mobile-fixed header-nav-features-dropdown-force-right" id="headerTopUserDropdown">
												<div class="row">
													<div class="col-8">
														<p class="mb-0 pb-0 text-2 line-height-1 pt-1">안녕하세요,</p>
														<p>
															<strong class="text-color-dark text-4"><c:out value="${loginProf.pName} 님" /></strong>
														</p>
													</div>
													<div class="col-4">
														<div class="d-flex justify-content-end">
															<img class="rounded-circle" width="40" height="40" alt="" src="img/avatars/avatar.jpg">
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col">
														<ul class="nav nav-list-simple flex-column text-3">
															<li class="nav-item"><a class="nav-link border-bottom-0" href="logout.do">로그아웃</a></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:if>
								<c:url var="ad_login" value="ad_login.do" />
								<button class="header-nav-features header-nav-features-no-border header-nav-features-lg-show-border order-1 order-lg-2 btn btn-outline btn-primary  btn-with-arrow" onclick="location.href='${ad_login}'">
									등교하기 <span> <i class="fas fa-chevron-right"></i>
									</span>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
	</div>
	<script>
		$(function() {
			$("#btnLogin").click(function() {
				if ($("#id").val().indexOf("a") > -1) {
					//관리자
					alert("admin");
					$("#hd1").val("1");
					$("#hd2").val("3");
					$("#fm").attr("action", "login.do").submit();
				} else if ($("#id").val().indexOf("P") > -1) {
					//교수
					alert("prof");
					$("#hd1").val("1");
					$("#hd2").val("2");
					$("#fm").attr("action", "login.do").submit();
				} else{
					//학생
					alert("std");
					$("#hd1").val("1");
					$("#hd2").val("1");
					$("#fm").attr("action", "login.do").submit();
				} 
			});
		});
	</script>
	<!-- Google Analytics: Change UA-XXXXX-X to be your site's ID. Go to http://www.google.com/analytics/ for more information.
		<script>
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

			ga('create', 'UA-12345678-1', 'auto');
			ga('send', 'pageview');
		</script>
		 -->

</body>
</html>