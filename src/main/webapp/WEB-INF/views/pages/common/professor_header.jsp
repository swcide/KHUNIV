<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<!-- SummerNote -->
<link rel="stylesheet" href="resources/plugins/summernote/summernote-bs4.css">

<!-- Skin CSS -->
<link rel="stylesheet" href="resources/css/skins/ad_default.css">
<link rel="stylesheet" href="resources/css/skins/skin-it-services.css">


<link rel="stylesheet" href="resources/css/components/bs-datatable2.css" type="text/css" />
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
										<a href="prof_main.do"> <img alt="Porto" width="180px" height="50px" data-sticky-width="150" data-sticky-height="40" src="resources/img/white-kr-logo.png">
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
													<div class="col-md-6 float-left">
														<label><strong><a href="prof_mypage.do" style="color: #008995">${loginProf.pName }</a> </strong></label>
													</div>
													<div class="col-md-6 float-right">
														<label align="right"><strong><a href="ad_logout.do" style="color: #008995">????????????</a></strong></label>
													</div>
												</div>
												<strong class="text-uppercase text-2"> <label><strong>????????? ????????????????????? ????????? ???????????????.</strong></label>
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
											<li class="dropdown"><a class="dropdown-item dropdown-toggle" href="#"> ????????? </a>
												<ul class="dropdown-menu">
													<li><a class="dropdown-item" href="prof_lecturelist.do"> ??? ????????? ?????? ?????? </a></li>
													<li class="dropdown-submenu"><a class="dropdown-item" href="#">?????? ??????</a>
														<ul class="dropdown-menu">

															<li><a class="dropdown-item" href="prof_lectureList2.do">??? ?????? ??????</a></li>
															<li><a class="dropdown-item" href="prof_lecturePlanList.do">??? ??????????????? ??????</a></li>
														</ul></li>
												</ul></li>
											<li class="dropdown"><a class="dropdown-item dropdown-toggle" href="#"> ????????? ?????? </a>
												<ul class="dropdown-menu">
													<li><a class="dropdown-item" href="prof_testList.do">??????</a></li>
													<li><a class="dropdown-item" href="hlist.do">??????</a></li>

												</ul>
											</li>
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