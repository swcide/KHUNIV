<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHCU | 성적조회</title>
<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

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
<link rel="stylesheet" href="resources/css/skins/default.css">
<link rel="stylesheet" href="resources/css/skins/skin-it-services.css">

<!-- Theme Custom CSS -->
<link rel="stylesheet" href="resources/css/custom.css">

<!-- Head Libs -->
<script src="resources/vendor/modernizr/modernizr.min.js"></script>
</head>
<body onresize="parent.resizeTo(900,800)" onload="parent.resizeTo(700,100)">
	<div class="body">
		<div role="main" class="main">
			<section class="page-header page-header-modern bg-color-light-scale-3 page-header-sm section-overlay-dot" style="margin: 0; background-image: url(resources/img/custom-header-bg.jpg);">
				<!-- style="background-image: url(resources/img/en-mini-logo.png);" -->
				<div class="col-12">
					<div class="row">
						<div class="col-md-5 align-self-center p-static order-2 text-center">
							<img alt="Porto Website Template" src="resources/img/khculogo4.png" class="float-left" height="40">
						</div>
						<div class="col-md-7 align-self-center p-static order-2 text-center">
							<h1 class="text-dark text-uppercase float-left">
								<strong style="color: white;">성적조회</strong>
							</h1>
						</div>
					</div>
				</div>
			</section>

			<div class="container py-2">
				<div class="row">
					<div class="col">
						<c:forEach var="st" items="${sepTop }">
							<table class="table table-hover">
								<tbody>
									<tr>
										<th>학과</th>
										<td style="text-align: center;">${st.deptName }</td>
										<th>열람일</th>
										<td style="text-align: center;">${st.sysdate }</td>
									</tr>
									<tr>
										<th style="width: 118px;">성명</th>
										<td style="width: 252px; text-align: center;">${st.sName }</td>
										<th style="width: 118px;">학번</th>
										<td style="text-align: center;">${st.sNo }</td>
									</tr>
								</tbody>
							</table>
							<table class="table table-hover">
								<thead>
									<tr>
										<th>년도 및 학기</th>
										<th style="text-align: center;">신청학점</th>
										<th style="text-align: center;">취득학점</th>
										<th style="text-align: center;">평점평균</th>
										<th style="text-align: center;">백점환산점수</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th>${st.semYear }/${st.semNo }</th>
										<td style="text-align: center;">${st.credit *3}</td>
										<td style="text-align: center;">${st.count *3}</td>
										<td style="text-align: center;">
											<fmt:formatNumber value="${st.avgPoint/4 }" pattern=".0" />
										</td>
										<td style="text-align: center;">
											<fmt:formatNumber value="${st.point }" pattern=".00" />
										</td>
									</tr>
								</tbody>
							</table>
						</c:forEach>
						<table class="table table-hover">
							<thead>
								<tr>
									<th>년도 및 학기</th>
									<th style="text-align: center;">과목명</th>
									<th style="text-align: center;">이수구분</th>
									<th style="text-align: center;">학점</th>
									<th style="text-align: center;">취득학점</th>
									<th style="text-align: center;">평점평균</th>
									<th style="text-align: center;">담당교수</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="sep" items="${sep }">
									<tr>
										<th>${sep.semYear }/${sep.semNo }</th>
										<th style="text-align: center;">${sep.cName }</th>
										<td style="text-align: center;">${sep.cType }</td>
										<td style="text-align: center;">3</td>
										<!-- 학점 abc로 산출 -->
										<c:if test="${sep.point ge 95 }">
											<td style="text-align: center;">A+</td>
										</c:if>
										<c:if test="${ sep.point le 94 && sep.point ge 90  }">
											<td style="text-align: center;">A</td>
										</c:if>
										<c:if test="${ sep.point le 89 && sep.point ge 85  }">
											<td style="text-align: center;">B+</td>
										</c:if>
										<c:if test="${ sep.point le 84 && sep.point ge 80  }">
											<td style="text-align: center;">B</td>
										</c:if>
										<c:if test="${ sep.point le 79 && sep.point ge 75  }">
											<td style="text-align: center;">C+</td>
										</c:if>
										<c:if test="${ sep.point le 74 && sep.point ge 70  }">
											<td style="text-align: center;">C</td>
										</c:if>
										<c:if test="${ sep.point le 69 && sep.point ge 65  }">
											<td style="text-align: center;">D+</td>
										</c:if>
										<c:if test="${ sep.point le 64 && sep.point ge 60  }">
											<td style="text-align: center;">D</td>
										</c:if>
										<c:if test="${ sep.point le 60 }">
											<td style="text-align: center;">F</td>
										</c:if>

										<td style="text-align: center;">
											<fmt:formatNumber value="${sep.avgPoint }" pattern="0.0" />
										</td>
										<td style="text-align: center;">${sep.profName}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>