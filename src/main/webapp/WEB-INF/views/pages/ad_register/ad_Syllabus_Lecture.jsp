<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHCU | 강의계획서</title>
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
<link rel="stylesheet" href="resources/css/skins/ad_default.css">

<!-- Theme Custom CSS -->
<link rel="stylesheet" href="resources/css/custom.css">

<!-- Head Libs -->
<script src="resources/vendor/modernizr/modernizr.min.js"></script>

<!-- pdf -->
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
<script type="text/javascript" src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>


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
								<strong style="color: white;">강의계획서</strong>
							</h1>
						</div>

					</div>
				</div>
			</section>

			<div id="pdf_wrap">
				<div class="container py-2">
					<div class="row">
						<div class="col">
							<table class="table table-hover">

								<tbody>
									<tr>
										<th style="width: 118px;">교과목명(국문)</th>
										<td colspan="3" style="text-align: center;">${lp.className }</td>

									</tr>

									<tr>
										<th style="width: 118px;">과목번호</th>
										<td style="width: 252px; text-align: center;">${lp.classNo}</td>
										<th style="width: 118px;">이수구분</th>
										<td style="text-align: center;">${lp.classType}</td>
									</tr>
									<tr>
										<th>학점</th>
										<td style="text-align: center;">${lp.credit}</td>
										<th>연구실</th>
										<td style="text-align: center;">${lp.profLab}</td>
									</tr>
									<tr>
										<th>교수</th>
										<td style="text-align: center;">${lp.profName}</td>
										<th>E-mail</th>
										<td style="text-align: center;">${lp.profEmail}</td>
									</tr>
								</tbody>
							</table>
						</div>
						<table class="table table-hover">
							<thead>
								<tr>
									<th colspan="6">교과목개요</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td colspan="6">${lp.classSummary}</td>
								</tr>
							</tbody>
							<thead>
								<tr>
									<th colspan="6">강의목표</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td colspan="6">${lp.classGoal}</td>
								</tr>
							</tbody>
							<thead>
								<tr>
									<th colspan="6">강의방법</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td colspan="6">${lp.lecMethod}</td>
								</tr>
							</tbody>
							<thead>
								<tr>
									<th colspan="6">평가방법</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td colspan="6">${lp.evalMethod}</td>
								</tr>
							</tbody>
							<thead>
								<tr>
									<th colspan="6">과제물</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td colspan="6">${lp.assignment}</td>
								</tr>
							</tbody>
							<thead>
								<tr>
									<th colspan="6">실험 및 실습계획</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td colspan="6">${lp.lecExperiment}</td>
								</tr>
							</tbody>
							<thead>
								<tr>
									<th colspan="6">관련강의</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td colspan="6">${lp.relatedLec}</td>
								</tr>
							</tbody>
							<thead>
								<tr>
									<th colspan="6">교재</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td colspan="6">${lp.lecTextbook}</td>
								</tr>
							</tbody>
							<thead>
								<tr>
									<th colspan="6">과목 배점</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th>시험 :</th>
									<td>${lp.examPoints}%</td>
									<th>과제 :</th>
									<td>${lp.assignmentPoints}%</td>
									<th>출석 :</th>
									<td>${lp.attendancePoints}%</td>
								</tr>
							</tbody>
						</table>
						<br>
						<table class="table table-hover">
							<thead>
								<tr>
									<th style="width: 75px;">주차</th>
									<th style="text-align: center; width: 190px;">단원명</th>
									<th style="text-align: center; width: 200px;">설명</th>
									<th style="text-align: center;">참고자료</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="l" items="${lpw}">
									<tr>
										<th>제 ${l.lecNo }주</th>
										<td style="text-align: center;">${l.lecName }</td>
										<td style="text-align: center; height: 150px">${l.lecExplanation}</td>
										<td style="text-align: center;">${l.lecReference }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<button id="create_pdf" class="btn btn-primary btn-lg mb-2 float-right" style="margin-right: 40px;">다운로드</button>
		</div>
	</div>

	<script>
		$(document).ready(
				function() {
					$('#create_pdf').click(
							function() { // pdf저장 button id
								html2canvas($('#pdf_wrap')[0]).then(
										function(canvas) { //저장 영역 div id
											// 캔버스를 이미지로 변환
											var imgData = canvas
													.toDataURL('image/png');
											var imgWidth = 190; // 이미지 가로 길이(mm) / A4 기준 210mm
											//var pageHeight = imgWidth * 1.414; // 출력 페이지 세로 길이 계산 A4 기준  
											var pageHeight = imgWidth * 3; // 출력 페이지 세로 길이 계산 A4 기준  
											var imgHeight = canvas.height
													* imgWidth / canvas.width;
											var heightLeft = imgHeight;
											var margin = 10; // 출력 페이지 여백설정
											var doc = new jsPDF('p', 'mm');
											var position = 0;
											// 첫 페이지 출력
											doc.addImage(imgData, 'PNG',
													margin, position, imgWidth,
													imgHeight);
											heightLeft -= pageHeight;
											// 파일 저장
											doc.save('강의계획서.pdf');

										});
							});
				});
	</script>
</body>
</html>