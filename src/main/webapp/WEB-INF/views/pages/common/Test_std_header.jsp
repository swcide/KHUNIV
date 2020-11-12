<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시험페이지</title>

<link href="https://fonts.googleapis.com/css?family=Lato:300,400,400i,700|Poppins:300,400,500,600,700|PT+Serif:400,400i&display=swap" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="resources/css/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="resources/css/style.css" type="text/css" />
	<link rel="stylesheet" href="resources/css/swiper.css" type="text/css" />
	<link rel="stylesheet" href="resources/css/dark.css" type="text/css" />
	<link rel="stylesheet" href="resources/css/font-icons.css" type="text/css" />
	<link rel="stylesheet" href="resources/css/animate.css" type="text/css" />
    <link rel="stylesheet" href="resources/css/magnific-popup.css" type="text/css" />
    <link rel="stylesheet" href="resources/css/theme.css">

	<link rel="stylesheet" href="resources/css/custom.css" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	
	<style>

    #logo img{
        height: 50px;
        
    }
    .menu-link{
        font-size:20px
    }
    .sub-menu-container >.menu-item > .menu-link > div{
        font-size:15px
    }
    .tabs-bb .navi{
    border-bottom: 2px solid #1ABC9C;
    height: 44px;
    line-height: 44px;
    }
    .table tbody tr td{
        vertical-align: middle;
    }
</style>
</head>
<body class="stretched side-header">
	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

		<!-- Header
		============================================= -->
		<header id="header">
			<div id="header-wrap">
				<div class="container" style="padding-left: 15px;">
					<div class="header-row justify-content-between">

						<!-- Logo
						============================================= -->
						<div id="logo" >
							<a class="standard-logo"><img src="resources/img/en-mini-logo.png"" style="height: 75px;"></a>
						</div><!-- #logo end -->

						<div id="primary-menu-trigger">
							<svg class="svg-trigger" viewBox="0 0 100 100"><path d="m 30,33 h 40 c 3.722839,0 7.5,3.126468 7.5,8.578427 0,5.451959 -2.727029,8.421573 -7.5,8.421573 h -20"></path><path d="m 30,50 h 40"></path><path d="m 70,67 h -40 c 0,0 -7.5,-0.802118 -7.5,-8.365747 0,-7.563629 7.5,-8.634253 7.5,-8.634253 h 20"></path></svg>
						</div>
                        
						<div class="header-misc d-none d-sm-block">
                            <div class="line" style="margin:0; border-top:solid 2px #dee2e6"></div>
							<div class="d-flex my-lg-3">
                                
								<p class="text-1"style="margin:0;"> <a href="#">강의동으로 돌아가기</a></p>
							</div>
						</div>

						<!-- Primary Navigation
						============================================= -->
						<nav class="primary-menu on-click" style="margin-bottom: 200px;">

							<ul class="menu-container">
                                <li class="menu-item"><a class="menu-link" href="tList.do"><div>강의 목록</div></a> </li>
                                <li class="menu-item"><a class="menu-link" href="tGrade.do"><div>시험 성적 조회</div></a> </li>
                                
								<li class="menu-item"><a class="menu-link" href="#"><div> 정기 시험</div></a>
									<ul class="sub-menu-container">
										<li class="menu-item"><a class="menu-link" href="tMidterm.do"><div>중간고사</div></a></li>
                                        <li class="menu-item"><a class="menu-link" href="tFinal.do"><div>기말고사</div></a></li>	                                        								
									</ul>
                                </li>
                                <li class="menu-item"> <a class="menu-link" href="#"><div> 수시 시험</div></a>								
                                    <ul class="sub-menu-container">
                                        <li class="menu-item"><a class="menu-link" href="tQuiz.do"><div>퀴즈</div></a></li>
                                        <li class="menu-item"><a class="menu-link" href="tHomework.do"><div>과제 제출</div></a></li>
                                  </ul>
                                </li>
                                <li class="menu-item"><a class="menu-link" href="#"><div>시험 관련 신청</div></a>
									<ul class="sub-menu-container">
										<li class="menu-item"><a class="menu-link" href="tObjection.do"><div></i>성적 이의 신청</div></a></li>
									</ul>
								</li>
							</ul>

						</nav><!-- #primary-menu end -->

					</div>
				</div>
			</div>
			<div class="header-wrap-clone"></div>
		</header><!-- #header end -->

</body>
</html>