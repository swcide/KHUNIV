<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
								<strong style="color: white;">강의계획서</strong>
							</h1>
						</div>
					</div>
				</div>
			</section>

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
									<th>선수과목</th>
									<td style="text-align: center;">-</td>
								</tr>
								<tr>
									<th>교수</th>
									<td style="text-align: center;">${lp.profName}</td>
									<th>연구실</th>
									<td style="text-align: center;">${lp.profLab}</td>
								</tr>
								<tr>
									<th>연락처</th>
									<td style="text-align: center;">-</td>
									<th>E-mail</th>
									<td style="text-align: center;">${lp.profEmail}</td>
								</tr>
							</tbody>
						</table>

						<form action="prof_Syllabus_LectureUpdate.do" name="formSylla" onsubmit="return validate();" id="" method="post">
							<input name="classNo" type="hidden" value="${lp.classNo}">
							<table class="table table-hover">
								<thead>
									<tr>
										<th>교과목개요</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<input name="classSummary" size=90 placeholder="${lp.classSummary}">
										</td>
									</tr>
								</tbody>
								<thead>
									<tr>
										<th>강의목표</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<input name="classGoal" size=90 placeholder="${lp.classGoal}">
										</td>
									</tr>
								</tbody>
								<thead>
									<tr>
										<th>강의방법</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<input name="lecMethod" size=90 placeholder="${lp.lecMethod}">
										</td>
									</tr>
								</tbody>
								<thead>
									<tr>
										<th>평가방법</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<input name="evalMethod" size=90 placeholder="${lp.evalMethod}">
										</td>
									</tr>
								</tbody>
								<thead>
									<tr>
										<th>과제물</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<input name="assignment" size=90 placeholder="${lp.assignment}">
										</td>
									</tr>
								</tbody>
								<thead>
									<tr>
										<th>실험 및 실습계획</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<input name="lecExperiment" size=90 placeholder="${lp.lecExperiment}">
										</td>
									</tr>
								</tbody>
								<thead>
									<tr>
										<th>관련강의</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<input name="relatedLec" size=90 placeholder="${lp.relatedLec}">
										</td>
									</tr>
								</tbody>
								<thead>
									<tr>
										<th>교재</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<input name="lecTextbook" size=90 placeholder="${lp.lecTextbook}">
										</td>
									</tr>
								</tbody>
							</table>

							<button type="submit" class="btn btn-dark" style="float: right; margin-bottom: 20px;">
								<i class="fas fa-pencil-alt"></i> 제출하기
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
	function validate() {
		if (formSylla.classSummary.value == "") {
			shake()
			formSylla.classSummary.focus();
			return false;
		}else if (formSylla.classGoal.value == "") {
			shake()
			formSylla.classGoal.focus();
			return false;
		}else if (formSylla.lecMethod.value == "") {
			shake()
			formSylla.lecMethod.focus();
			return false;
		}else if (formSylla.evalMethod.value == "") {
			shake()
			formSylla.evalMethod.focus();
			return false;
		}else if (formSylla.assignment.value == "") {
			shake()
			formSylla.assignment.focus();
			return false;
		}else if (formSylla.lecExperiment.value == "") {
			shake()
			formSylla.lecExperiment.focus();
			return false;
		}else if (formSylla.relatedLec.value == "") {
			shake()
			formSylla.relatedLec.focus();
			return false;
		}else if (formSylla.lecTextbook.value == "") {
			shake()
			formSylla.lecTextbook.focus();
			return false;
		}else{
			window.open('', '_self').close();
			alert("완료 되었습니다.")
		}
	}
	/* 퀵메뉴 창닫기 기능 */
function shake(){
	for(i=10; i>0; i--){
		window.moveBy(0,i);
		window.moveBy(i,0);
		window.moveBy(0,-i);
		window.moveBy(-i,0);
	}
	alert("빈칸을 채워주세요");
	}
	
</script>
</html>