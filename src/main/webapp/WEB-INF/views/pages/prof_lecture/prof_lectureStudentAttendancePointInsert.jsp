<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="com.kh.univ.member.model.vo.Professor"%>

<%
	Professor loginProf = (Professor) session.getAttribute("loginProf");
String pNo = null;
pNo = loginProf.getpNo();
%>
<%
	Calendar Now = Calendar.getInstance();
int year = Now.get(Calendar.YEAR);
int month = Calendar.getInstance().get(Calendar.MONTH) + 1;
String semester = "1";
if (month >= 7) {
	semester = "2";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHCU | 출석점수 채점</title>
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

<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

</head>
<body onresize="parent.resizeTo(900,500)" onload="parent.resizeTo(700,100)">
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
								<strong style="color: white;">출석점수</strong>
							</h1>
						</div>
					</div>
				</div>
			</section>
			<div class="container py-2">
				<div class="row">
					<div class="col">
						<!-- onsubmit="return checkForm();" -->
						<form id="attPointInsert-form" name="attPointInsert-form" class="mb-4" >
							<div>
								<input type="hidden" name="semesterNo" value="<%=semester%>">
								<input type="hidden" name="year" value="<%=year%>">
								<input type="hidden" name="pNo" value="<%=pNo%>">
								<table class="table table-striped table-bordered" width="100%">
									<thead>
										<tr>
											<th>이름</th>
											<th>강의명</th>
											<th>중간고사점수</th>
											<th>기말고사점수</th>
											<th>과제점수</th>
											<th>출석점수</th>
											<th>총점</th>
										</tr>
									</thead>
									<tfoot>
								<c:forEach var="lc" items="${lc}" end="0">
											<tr>
												<td>${lc.sName}
												<input type="hidden" name="sNo" value="${sp.sNo}"/> </td>
												<td>${lc.className}
												<input type="hidden" name="classNo" value="${sp.classNo}"/> </td>
												<td>${sp.midTestPoints}
												<input type="hidden" name="midTestPoints" value="${sp.midTestPoints}"/> </td>
												<td>${sp.finalTestPoints}
												<input type="hidden" name="finalTestPoints" value="${sp.finalTestPoints}"/></td>
												<td>${sp.reportPoints}
												<input type="hidden" name="reportPoints" value="${sp.reportPoints}"/></td>
												<td>${sp.attendancePoints}</td>
												<td>${sp.totalPoints}</td>
												
												<fmt:parseNumber var="sumPoints" value="${(sp.midTestPoints+sp.finalTestPoints+sp.reportPoints)}" integerOnly="true"></fmt:parseNumber>

											</tr>
										</c:forEach>
									</tfoot>
								</table>
								<table>
									<thead>
										<tr>
											<th colspan="2" style="text-align: center">출석점수 만점 :&nbsp;&nbsp;&nbsp; ${lp.attendancePoints}점</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>
												<div class="form-group row align-items-center">
													<input type="text" 
													class="col-12 text-left text-sm-right mb-0" 
													id="attendancePoints" name="attendancePoints" 
													placeholder="0 ~ ${lp.attendancePoints}점 내에서 점수를 부여" 
													style="margin-left: 140px; margin-right: -50px"/>
													<div class="col-sm-9"></div>
												
												</div>
												
												<input type="hidden" id="sumPoints" value="${sumPoints}"/>
												<input type="hidden" id="totalPoints" name="totalPoints" value=""/>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							
						</form>
						<div style="float:right;">
								<button style="float:right; margin-left:20px" type="button" class="btn btn-light"onClick='window.close()'>취소</button>
								<button style="float:right; margin-left:20px" type="submit" onclick="checkForm(); return false;" class="btn btn-primary">확인</button>
							</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<script>
	function checkForm() {
		var s = $("#sumPoints").val();
		var sumPoints =Number(s);
		
		var maxPoint = ${lp.attendancePoints};
		var ap = $("#attendancePoints").val();
		var inputNo = Number(ap);
		
		var totalPoint = inputNo + sumPoints
		$('#totalPoints').val(totalPoint);
		
		parseInt(maxPoint);
		if (maxPoint < inputNo) {
			alert("배점 점수보다 더 높은 점수를 줄 수 없습니다.")
			return false;
		}
		if (inputNo == "") {
			alert("점수를 입력해주세요.")
			return false;
		}
		var formData = new FormData($('#attPointInsert-form')[0]);
		console.log(formData);
		$.ajax({
			type : "POST",
			url : 'attendancePointUpdate.do', 
			data : formData,
			contentType : false,
			processData : false,
			success : function(data) {

				alert("채점을 완료되었습니다.")
				window.opener.location.reload();
				self.close();

			},
			error : function(request, status, error) {
				alert("code:" + request.status + "\n" + "message:"
						+ request.responseText + "\n" + "error:" + error);
			}
		});

	};
</script>
</html>