<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHCU | 증명서 발급</title>
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
<body onresize="parent.resizeTo(900,1100)" onload="parent.resizeTo(600,100)">
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
								<strong style="color: white;">증명서 발급</strong>
							</h1>
						</div>
					</div>
				</div>
			</section>
<div id="pdf_wrap">
			<div class="container py-2">
				<div class="row">
					<div class="col">
						<h1 align="center" style="font-weight: bolder">졸업 증명서</h1>
						<div class="row">
							<div class="col-md-12">
								<div style="background-image: url(resources/img/big-logo.png); background-size: contain; background-repeat: no-repeat; background-position: 50% 0;">

									<div class="row" style="background-color: rgba(255, 255, 255, 0.9);">
										<div class="col-md-6">
											<table class="table">
												<tbody align="right">
													<tr>
														<th style="border-top: none;">성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;명 :</th>
													<tr>
													<tr>
														<th style="border-top: none;">생년월일 :</th>
													<tr>
													<tr>
														<th style="border-top: none;">학&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;과 :</th>
													<tr>
													<tr>
														<th style="border-top: none;">입학일자 :</th>
													<tr>
													<tr>
														<th style="border-top: none;">졸업일자 :</th>
													<tr>
													<tr>
														<th style="border-top: none;">학위번호 :</th>
													<tr>
													<tr>
														<th style="border-top: none;">학위명 :</th>
													<tr>
												</tbody>
											</table>
										</div>

										<div class="col-md-6">
											<table class="table">
												<tbody align="right">
													<tr>
														<td align="left" style="border-top: none;">${g.sName }</td>
													<tr>
													<tr>
														<td align="left" style="border-top: none;">${g.year }年${g.month }月${g.day }日</td>
													<tr>
													<tr>
														<td align="left" style="border-top: none;">${g.deptName }</td>
													<tr>
													<tr>
														<td align="left" style="border-top: none;">${g.enYear }年${g.enMonth }月${g.enDay }日</td>
													<tr>
													<tr>
														<td align="left" style="border-top: none;">${g.gYear }年${g.gMonth }月${g.gDay }日</td>
													<tr>
													<tr>
														<td align="left" style="border-top: none;">${g.grdNo }</td>
													<tr>
													<tr>
														<td align="left" style="border-top: none;">${g.degree }</td>
													<tr>
												</tbody>
											</table>
										</div>
									</div>

									<div class="row" style="background-color: rgba(255, 255, 255, 0.9);">
										<div class="col-md-12" align="center" style="margin-top: 60px;">
											<h2>
												<label> 위 사실을 증명함.</label>
											</h2>
											<h4>
												<label>20${g.sysYear }年 ${g.sysMonth }月 ${g.sysDay }日</label>
											</h4>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12" align="center" style="margin-top: 40px;background-image: url(resources/img/seal.png);background-size: contain;background-repeat: no-repeat;background-position: 70%;">
										<h2 style="font-weight: bolder;margin-bottom: 9px;margin-top: 18px;">
											<label> KH 사이버 대학교 총장</label>
										</h2>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
								<button id="create_pdf" class="btn btn-primary btn-lg mb-2 float-right"  style="margin-right: 100px;">다운로드</button>
		</div>
	</div>
	<script>
	$(document).ready(function() {
		$('#create_pdf').click(function() { // pdf저장 button id
		    html2canvas($('#pdf_wrap')[0]).then(function(canvas) { //저장 영역 div id
		    // 캔버스를 이미지로 변환
		    var imgData = canvas.toDataURL('image/png');
		    var imgWidth = 190; // 이미지 가로 길이(mm) / A4 기준 210mm
		    var pageHeight = imgWidth * 1.414;  // 출력 페이지 세로 길이 계산 A4 기준
		    var imgHeight = canvas.height * imgWidth / canvas.width;
		    var heightLeft = imgHeight;
		    var margin = 10; // 출력 페이지 여백설정
		    var doc = new jsPDF('p', 'mm');
		    var position = 0;
		    // 첫 페이지 출력
		    doc.addImage(imgData, 'PNG', margin, position, imgWidth, imgHeight);
		    heightLeft -= pageHeight;
		    // 파일 저장
		    doc.save('file-name.pdf');
		});
		});
	});
	</script>
</body>
</html>