<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>KH Cyber University</title>

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
<link rel="stylesheet" href="resources/css/demos/demo-it-services.css">

<!-- Skin CSS -->
<link rel="stylesheet" href="resources/css/skins/ad_default.css">
<link rel="stylesheet" href="resources/css/skins/skin-it-services.css">

<!-- Theme Custom CSS -->
<link rel="stylesheet" href="resources/css/custom.css">

<!-- Head Libs -->
<script src="resources/vendor/modernizr/modernizr.min.js"></script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>



<style>
.table-hover tbody tr:hover {
	color: rgba(0, 137, 149, 0.9);
	background-color: rgba(0, 137, 149, 0.1)
}
</style>

</head>
<body>
	<div class="body">
		<header id="header" class="header-effect-shrink" data-plugin-options="{'stickyEnabled': true, 'stickyEffect': 'shrink', 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyChangeLogo': true, 'stickyStartAt': 120, 'stickyHeaderContainerHeight': 70}">
			<div class="header-body border-top-0">
				<div class="header-top header-top-simple-border-bottom">
					<div class="container h-100">
						<div class="header-row h-100">
							<div class="header-column justify-content-start">
								<div class="header-row">
									<div class="header-logo mt-0 mb-0">
										<a href="ad_main.do"> <img alt="Porto" width="180px" height="50px" data-sticky-width="150" data-sticky-height="40" src="resources/img/white-kr-logo.png">
										</a>
									</div>
								</div>
							</div>
							<div class="header-column justify-content-end d-none d-lg-inline-flex">
								<div class="header-row">
									<ul class="header-extra-info d-flex align-items-center pt-3 pb-3">
										<li class="d-none d-sm-inline-flex ml-0">
											<div class="header-extra-info-icon">
												<i class="icon-user icons text-color-primary"></i>
											</div>
											<div class="header-extra-info-text">
												<div class="row">
													<div class="col-md-6">
														<c:if test="${!empty sessionScope.loginUser }">
															<a href="mypage.do"><label><strong style="color: #008995">${loginUser.sName }</strong></label></a>
															<input type="hidden" name="sNo" value="${loginUser.sNo }">
														</c:if>
													</div>
													<div class="col-md-6" style="text-align: right">
														<!-- 														<a href="mypage.do"><label><strong>내 정보</strong></label></a>
 -->
														<a href="ad_logout.do"><label><strong>로그아웃</strong></label></a>
													</div>
												</div>
												<strong class="text-uppercase text-2"> <label><strong>학사행정사이트 방문을 환영합니다</strong></label>
												</strong>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="header-container container">
					<div class="header-column">
						<div class="header-row">
							<div class="header-nav header-nav-links justify-content-center">
								<div class="header-nav-main header-nav-main-square header-nav-main-effect-2 header-nav-main-sub-effect-1">
									<nav class="collapse header-mobile-border-top">
										<ul class="nav nav-pills" id="mainNav">
											<li class="dropdown"><a class="dropdown-item dropdown-toggle" href="#"> 강의동 </a>
												<ul class="dropdown-menu">
													<li><a class="dropdown-item" href="lecturelist.do"> 내 강의 목록 </a></li>
													<li class="dropdown-submenu"><a class="dropdown-item" href="#">수업 관리</a>
														<ul class="dropdown-menu">
															<li><a class="dropdown-item" href="#">학습 현황</a></li>
															<li><a class="dropdown-item" href="attendance.do">출석 현황</a></li>
															<li><a class="dropdown-item" href="grade.do">성적 현황</a></li>
														</ul></li>
													<li><a class="dropdown-item" href="speciallecture.do"> 특강 목록 </a></li>
												</ul></li>
											<li class="dropdown"><a class="dropdown-item dropdown-toggle" href="#"> 시험 </a></li>
											<li class="dropdown"><a class="dropdown-item dropdown-toggle" href="#"> 학적 관리 </a>
												<ul class="dropdown-menu">
													<li class="dropdown-submenu"><a class="dropdown-item" href="#">강의</a>
														<ul class="dropdown-menu">
															<li><a class="dropdown-item" href="ad_lect_list.do">강의 개설 정보</a></li>
															<li><a class="dropdown-item" href="ad_lect_appl.do">수강신청</a></li>
															<li><a class="dropdown-item" href="ad_audit_lect_appl.do">청강신청</a></li>
															<li><a class="dropdown-item" href="ad_appl_stat.do">신청현황</a></li>
														</ul></li>
													<li><a class="dropdown-item" href="ad_point_search_list.do">성적조회</a></li>
													<li class="dropdown-submenu"><a class="dropdown-item" href="#">휴학</a>
														<ul class="dropdown-menu">
															<li><a class="dropdown-item" onClick="window.open(this.href='ad_leave_absence.do', '', 'resizable=yes, width=900, height=800 left=700px top=100px'); return false;">휴학신청 바로가기</a></li>
															<li><a class="dropdown-item" href="ad_leave_absence_check.do">휴학신청 확인</a></li>
														</ul></li>
													<li class="dropdown-submenu"><a class="dropdown-item" href="#">복학</a>
														<ul class="dropdown-menu">
															<li><a class="dropdown-item" onClick="window.open(this.href='ad_return_absence.do', '', 'resizable=yes, width=900, height=800 left=700px top=100px'); return false;">복학신청 바로가기</a></li>
															<li><a class="dropdown-item" href="ad_return_absence_check.do">복학신청 확인</a></li>
														</ul></li>
													<li class="dropdown-submenu"><a class="dropdown-item" href="#">졸업유예</a>
														<ul class="dropdown-menu">
															<li><a class="dropdown-item" onClick="window.open(this.href='ad_deferment_graduation.do', '', 'resizable=yes, width=900, height=800 left=700px top=100px'); return false;">졸업유예신청 바로가기</a></li>
															<li><a class="dropdown-item" href="ad_deferment_graduation_check.do">졸업유예신청 확인</a></li>
														</ul></li>
													<li class="dropdown-submenu"><a class="dropdown-item" href="#">자퇴</a>
														<ul class="dropdown-menu">
															<li><a class="dropdown-item" onClick="window.open(this.href='ad_drop_absence.do', '', 'resizable=yes, width=900, height=800 left=700px top=100px'); return false;">자퇴신청 바로가기</a></li>
															<li><a class="dropdown-item" href="ad_drop_absence_check.do">자퇴신청 확인</a></li>
														</ul></li>
													<li class="dropdown-submenu"><a class="dropdown-item" href="ad_tuition_bill.do">등록금</a>
														<ul class="dropdown-menu">
															<li><a class="dropdown-item" href="ad_tuition_bill.do">등록금 납부</a></li>
															<li><a class="dropdown-item" href="ad_tuition_payment_check.do">등록금 납부 확인</a></li>
														</ul></li>
													<li class="dropdown-submenu"><a class="dropdown-item" href="ad_certificate_list.do">증명서 발급</a>
														<ul class="dropdown-menu">
															<li><a class="dropdown-item" href="ad_certificate_list.do">재학 증명서 발급</a></li>
															<li><a class="dropdown-item" href="ad_certificate_list.do">졸업 증명서 발급</a></li>
														</ul></li>
												</ul></li>

											<li class="dropdown"><a class="dropdown-item dropdown-toggle" href="el.do"> E-LIBRARY </a>
												<ul class="dropdown-menu">
													<li><a class="dropdown-item" href="el.do">도서 목록</a></li>
													<li><a class="dropdown-item" href="el.do">도서 대여 현황</a></li>
												</ul></li>
											<li class="dropdown"><a class="dropdown-item dropdown-toggle" href="#"> Shop </a>
												<ul class="dropdown-menu">
													<li class="dropdown-submenu"><a class="dropdown-item" href="#">Single Product</a>
														<ul class="dropdown-menu">
															<li><a class="dropdown-item" href="shop-product-full-width.html">Full Width</a></li>
															<li><a class="dropdown-item" href="shop-product-sidebar-left.html">Left Sidebar</a></li>
															<li><a class="dropdown-item" href="shop-product-sidebar-right.html">Right Sidebar</a></li>
															<li><a class="dropdown-item" href="shop-product-sidebar-left-and-right.html">Left and Right Sidebar</a></li>
														</ul></li>
													<li><a class="dropdown-item" href="shop-4-columns.html">4 Columns</a></li>
													<li class="dropdown-submenu"><a class="dropdown-item" href="#">3 Columns</a>
														<ul class="dropdown-menu">
															<li><a class="dropdown-item" href="shop-3-columns-full-width.html">Full Width</a></li>
															<li><a class="dropdown-item" href="shop-3-columns-sidebar-left.html">Left Sidebar</a></li>
															<li><a class="dropdown-item" href="shop-3-columns-sidebar-right.html">Right Sidebar </a></li>
														</ul></li>
													<li class="dropdown-submenu"><a class="dropdown-item" href="#">2 Columns</a>
														<ul class="dropdown-menu">
															<li><a class="dropdown-item" href="shop-2-columns-full-width.html">Full Width</a></li>
															<li><a class="dropdown-item" href="shop-2-columns-sidebar-left.html">Left Sidebar</a></li>
															<li><a class="dropdown-item" href="shop-2-columns-sidebar-right.html">Right Sidebar </a></li>
															<li><a class="dropdown-item" href="shop-2-columns-sidebar-left-and-right.html">Left and Right Sidebar</a></li>
														</ul></li>
													<li class="dropdown-submenu"><a class="dropdown-item" href="#">1 Column</a>
														<ul class="dropdown-menu">
															<li><a class="dropdown-item" href="shop-1-column-full-width.html">Full Width</a></li>
															<li><a class="dropdown-item" href="shop-1-column-sidebar-left.html">Left Sidebar</a></li>
															<li><a class="dropdown-item" href="shop-1-column-sidebar-right.html">Right Sidebar </a></li>
															<li><a class="dropdown-item" href="shop-1-column-sidebar-left-and-right.html">Left and Right Sidebar</a></li>
														</ul></li>
													<li><a class="dropdown-item" href="shop-cart.html">Cart</a></li>
													<li><a class="dropdown-item" href="shop-login.html">Login</a></li>
													<li><a class="dropdown-item" href="shop-checkout.html">Checkout</a></li>
													<li><a class="dropdown-item" href="shop-order-complete.html">Order Complete</a></li>
												</ul></li>
										</ul>
									</nav>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
	</div>
</body>
</html>