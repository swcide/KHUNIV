<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
					<h3>교수 등록</h3>
					<p class="text-subtitle text-muted">모든 기능은 필요에 의해 이용하여 주시길 바랍니다.</p>
				</div>
				<section class="section">
					<div class="row mb-4">
						<div class="col-md-8">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">교수 등록하기</h4>
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
													<div class="col-12">
														<div class="form-group">
															<label for="email-id-vertical">교번</label>
															<input type="text" id="email-id-vertical" class="form-control" name="email-id" placeholder="교번 ex)P123 - 대문자 P ">
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
															<input type="text" id="email-id-vertical" class="form-control" name="email-id" placeholder="담당학과">
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
										<div class="form-file">
											<input type="file" class="form-file-input" id="customFile">
											<label class="form-file-label" for="customFile" style="margin: 0px 10px 17px 10px;"> <span class="form-file-text">교수정보 엑셀파일을 첨부해주세요.</span> <span class="form-file-button btn-primary ">
													<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-upload">
														<path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"></path>
														<polyline points="17 8 12 3 7 8"></polyline>
														<line x1="12" y1="3" x2="12" y2="15"></line></svg>
												</span>
											</label>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<script src="resources/assets/js/feather-icons/feather.min.js"></script>
	<script src="resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script src="resources/assets/js/app.js"></script>

	<script src="resources/assets/vendors/chartjs/Chart.min.js"></script>
	<script src="resources/assets/vendors/apexcharts/apexcharts.min.js"></script>
	<script src="resources/assets/js/pages/dashboard.js"></script>

	<script src="resources/assets/js/main.js"></script>
</body>
</html>
