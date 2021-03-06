<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>KHCU | ADMIN</title>

<link rel="stylesheet" href="resources/assets/css/bootstrap.css">
<link rel="stylesheet" href="resources/assets/vendors/chartjs/Chart.min.css">
<link rel="stylesheet" href="resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="resources/assets/css/app.css">
<link rel="shortcut icon" href="resources/assets/images/favicon.svg" type="image/x-icon">

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script src="http://malsup.github.com/jquery.form.js"></script>
</head>
<body>
	<div id="app">
		<!-- side bar -->
		<%@include file="adminSideBar.jsp"%>
		<!-- header -->
		<div id="main">
			<%@ include file="adminHeader.jsp"%>
			<!--  contents -->
			<div class="main-content container-fluid">
				<div class="page-title">
					<h3>학생 등록</h3>
					<p class="text-subtitle text-muted">모든 기능은 필요에 의해 이용하여 주시길 바랍니다.</p>
				</div>
				<section class="section">
					<div class="row mb-4">
						<div class="col-md-8">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">직접 등록하기</h4>
								</div>
								<div class="card-content">
									<div class="card-body">
										<p>등록 후 반드시 개인정보 수정을 통하여 정보등록 및 비밀번호 변경을 해주셔야 합니다.</p>
										<form class="form form-vertical">
											<div class="form-body">
												<div class="row">
													<div class="col-12">
														<div class="form-group">
															<label for="first-name-vertical">이름</label>
															<input type="text" id="first-name-vertical" class="form-control" name="fname" placeholder="이름">
														</div>
													</div>
													<div class="col-3">
														<div class="form-group">
															<label for="email-id-vertical">입학년도</label>
															<select class="form-select" id="basicSelect">
																<option>---------------------</option>
																<option>2020</option>
																<option>2019</option>
																<option>2018</option>
																<option>2017</option>
																<option>2016</option>
																<option>2015</option>
															</select>
														</div>
													</div>
													<div class="col-3">
														<div class="form-group">
															<label for="email-id-vertical">소속학과</label>
															<select class="form-select" id="basicSelect">
																<option>---------------------</option>
																<option>01</option>
																<option>02</option>
																<option>03</option>
																<option>04</option>
																<option>05</option>
																<option>06</option>
																<option>07</option>
																<option>08</option>
																<option>09</option>
																<option>10</option>
																<option>11</option>
																<option>12</option>
																<option>13</option>
															</select>
														</div>
													</div>
													<div class="col-2">
														<div class="form-group">
															<button type="button" class="btn btn-outline-light" data-toggle="modal" data-target="#small" style="margin: 21px 0 0 0;">학과번호</button>
														</div>
													</div>
													<div class="col-4">
														<div class="form-group">
															<label for="email-id-vertical">학번</label>
															<select class="form-select" id="basicSelect">
																<option>---------------------</option>
																<option>001</option>
																<option>002</option>
																<option>003</option>
																<option>004</option>
																<option>005</option>
																<option>006</option>
																<option>007</option>
																<option>008</option>
																<option>009</option>
																<option>010</option>
																<option>011</option>
																<option>012</option>
																<option>013</option>
															</select>
														</div>
													</div>
													<div class="col-6">
														<div class="form-group">
															<label for="email-id-vertical">주민등록번호</label>
															<input type="text" id="email-id-vertical" class="form-control" name="email-id" placeholder="앞자리">
														</div>
													</div>
													<div class="col-6">
														<div class="form-group">
															<label for="email-id-vertical"></label>
															<input type="password" id="email-id-vertical" class="form-control" name="email-id" placeholder="뒷자리">
														</div>
													</div>
													<div class="col-12">
														<div class="form-group">
															<label for="email-id-vertical">학과</label>
															<input type="text" id="email-id-vertical" class="form-control" name="email-id" placeholder="소속학과">
														</div>
													</div>
													<div class="col-12">
														<div class="form-group">
															<label for="email-id-vertical">이메일</label>
															<input type="email" id="email-id-vertical" class="form-control" name="email-id" placeholder="이메일">
														</div>
													</div>
													<div class="col-4">
														<div class="form-group">
															<label for="contact-info-vertical">연락처</label>
															<select class="form-select" id="basicSelect">
																<option>010</option>
																<option>011</option>
																<option>017</option>
															</select>
														</div>
													</div>
													<div class="col-4">
														<div class="form-group">
															<label for="contact-info-vertical"></label>
															<input type="text" id="contact-info-vertical" class="form-control" name="contact" placeholder="중간번호">
														</div>
													</div>
													<div class="col-4">
														<div class="form-group">
															<label for="contact-info-vertical"></label>
															<input type="text" id="contact-info-vertical" class="form-control" name="contact" placeholder="뒷번호">
														</div>
													</div>
													<div class="col-12 d-flex justify-content-end">
														<button type="reset" class="btn btn-light-secondary mr-1 mb-1">초기화</button>
														<button type="submit" class="btn btn-primary mr-1 mb-1">등록</button>
													</div>
													<!-- 학과번호 보기 모달 -->
													<div class="mr-1 mb-1 d-inline-block">
														<div class="modal fade text-left" id="small" tabindex="-1" aria-labelledby="myModalLabel19" style="display: none;" aria-hidden="true">
															<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-sm" role="document">
																<div class="modal-content">
																	<div class="modal-header">
																		<h4 class="modal-title" id="myModalLabel19">학과 번호</h4>
																		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x">
																				<line x1="18" y1="6" x2="6" y2="18"></line>
																				<line x1="6" y1="6" x2="18" y2="18"></line></svg>
																		</button>
																	</div>
																	<div class="modal-body">
																		<table style="text-align: center; margin: 0 auto;">
																			<thead>
																				<tr>
																					<th style="border: 1px solid lightgray;">학과번호</th>
																					<th style="border: 1px solid lightgray;">학과명</th>
																				</tr>
																			</thead>
																			<tbody>
																				<tr>
																					<td style="border: 1px solid lightgray;">01</td>
																					<td style="border: 1px solid lightgray;">국어국문학과</td>
																				</tr>
																				<tr>
																					<td style="border: 1px solid lightgray;">02</td>
																					<td style="border: 1px solid lightgray;">김진태학과</td>
																				</tr>
																				<tr>
																					<td style="border: 1px solid lightgray;">03</td>
																					<td style="border: 1px solid lightgray;">호주캥거루학과</td>
																				</tr>
																			</tbody>
																		</table>
																	</div>
																	<div class="modal-footer">
																		<button type="button" class="btn btn-light-secondary btn-sm" data-dismiss="modal">
																			<i class="bx bx-x d-block d-sm-none"></i>
																			<span class="d-sm-block d-none">Close</span>
																		</button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card" style="height: 25%;">
								<div class="card-header d-flex justify-content-between align-items-center">
									<h4 class="card-title">엑셀로 등록하기</h4>
								</div>
								<div class="card-body px-0 pb-0">
									<div class="table-responsive">
										<form id="excelUploadForm" name="excelUploadForm" enctype="multipart/form-data" method="post">
											<div>
												<c:set var="excel " value="${efu }" />
												<c:if test="${!empty efu }">
													<span class="text-uppercase mb-0 text-left  text-2 float-left col-md-12"> 현재 업로드한 파일 : <a href="${contextPath }/resources/excelUploadFile/${efu  }">${efu  }</a>
													</span>
												</c:if>
												<input class="text-uppercase mb-2 text-center  float-left col-md-12" style="padding: 0px 20px 0 20px; color: #5A8DEE;" id="excelFile" name="excelFile" type="file">
												<a id="addExcelImpoartBtn" class="btn btn-primary mr-1 mb-1" onclick="check()" style="padding: 1px 3px 1px 3px; margin: 0px 0px 0px 20px;"> 엑셀파일 업로드 </a>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<script src="http://malsup.github.io/jquery.form.js"></script>
	<script type="text/javaScript" language="javascript" defer="defer">
		/*************excel upload*************/
		
		
		function checkFileType(filePath) {
			var fileFormat = filePath.split(".");

			if (fileFormat.indexOf("xls") > -1
					|| fileFormat.indexOf("xlsx") > -1) {
				return true;
			} else {
				return false;
			}
		}

		function check() {

			var file = $("#excelFile").val();

			if (file == "" || file == null) {
				alert("파일을 선택해주세요.");

				return false;
			} else if (!checkFileType(file)) {
				alert("엑셀 파일만 업로드 가능합니다.");

				return false;
			}

			if (confirm("업로드 하시겠습니까?")) {

				var options = {
					url :'excelUploadAjax.do',
					success : function(data) {
						console.log(data);
						alert("모든 데이터가 업로드 되었습니다.");

					},
					type : "POST"
				};

				$("#excelUploadForm").ajaxSubmit(options);
				return false;

			}
		}

		
	</script>

	<script src="resources/assets/js/feather-icons/feather.min.js"></script>
	<script src="resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script src="resources/assets/js/app.js"></script>

	<script src="resources/assets/vendors/chartjs/Chart.min.js"></script>
	<script src="resources/assets/vendors/apexcharts/apexcharts.min.js"></script>
	<script src="resources/assets/js/pages/dashboard.js"></script>

	<script src="resources/assets/js/main.js"></script>

</body>
</html>
