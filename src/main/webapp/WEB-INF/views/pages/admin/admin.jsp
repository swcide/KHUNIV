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
		<%@include file="adminSideBar.jsp" %>
		<!-- header -->
		<div id="main">
			<%@ include file="adminHeader.jsp" %>
			<!--  contents -->
			<div class="main-content container-fluid">
				<div class="page-title">
					<h3>관리자 전용 화면입니다.</h3>
					<p class="text-subtitle text-muted">모든 기능은 필요에 의해 이용하여 주시길 바랍니다.</p>
				</div>
				<section class="section">
					<div class="row mb-4">
						<div class="col-md-8">
							<div class="card" style="height: 94%;">
								<div class="card-header d-flex justify-content-between align-items-center">
									<h4 class="card-title">게시판 관리 현황</h4>
								</div>
								<div class="card-body px-0 pb-0">
									<div class="table-responsive">
										<table class='table mb-0' id="table1">
											<thead>
												<tr>
													<th>이름</th>
													<th>신고 내용</th>
													<th>연락처</th>
													<th>신고 게시판</th>
													<th>처리 상태</th>
												</tr>
											</thead>
											<tbody>
												</tr>
												<tr>
													<td>Dale</td>
													<td>fringilla.euismod.enim@quam.ca</td>
													<td>0500 527693</td>
													<td>New Quay</td>
													<td>
														<span class="badge bg-success">Active</span>
													</td>
												</tr>
												<tr>
													<td>Nathaniel</td>
													<td>mi.Duis@diam.edu</td>
													<td>(012165) 76278</td>
													<td>Grumo Appula</td>
													<td>
														<span class="badge bg-danger">Inactive</span>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">

							<div class="card widget-todo" style="height: 62%;">
								<div class="card-header border-bottom d-flex justify-content-between align-items-center">
									<h4 class="card-title d-flex">
										<i class='bx bx-check font-medium-5 pl-25 pr-75'></i>학적관리 현황
									</h4>
									<p>* 직전학기 기준</p>
								</div>
								<div class="card-body px-0 py-1">
									<table class='table table-borderless'>
										<tr>
											<td class='col-3'>재학</td>
											<td class='col-6'>
												<div class="progress progress-secondary">
													<div class="progress-bar" role="progressbar" style="width: 65%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
												</div>
											</td>
											<td class='col-3 text-center'>65%</td>
										</tr>
										<tr>
											<td class='col-3'>휴학</td>
											<td class='col-6'>
												<div class="progress progress-info">
													<div class="progress-bar" role="progressbar" style="width: 60%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
												</div>
											</td>
											<td class='col-3 text-center'>20%</td>
										</tr>
										<tr>
											<td class='col-3'>복학</td>
											<td class='col-6'>
												<div class="progress progress-success">
													<div class="progress-bar" role="progressbar" style="width: 35%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
												</div>
											</td>
											<td class='col-3 text-center'>40%</td>
										</tr>
										<tr>
											<td class='col-3'>자퇴</td>
											<td class='col-6'>
												<div class="progress progress-danger">
													<div class="progress-bar" role="progressbar" style="width: 50%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
												</div>
											</td>
											<td class='col-3 text-center'>10%</td>
										</tr>
										<tr>
											<td class='col-4'>등록금 납부</td>
											<td class='col-6'>
												<div class="progress progress-primary">
													<div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
												</div>
											</td>
											<td class='col-3 text-center'>80%</td>
										</tr>
									</table>
								</div>
							</div>
							<div class="card">
								<div class="card-header d-flex justify-content-between align-items-center" style="margin-top: -4%;">
									<h4>바로가기</h4>
								</div>
								<div class="btn-group mb-2 float-center" role="group" aria-label="Basic example" style="margin: 0 6px 0 6px;">
									<button type="button" class="btn btn-primary" style="border: 1px solid;">학생 관리</button>
									<button type="button" class="btn btn-primary" style="border: 1px solid;">홈페이지</button>

								</div>
								<div class="btn-group mb-4" role="group" aria-label="Basic example" style="margin: 0 6px 0 6px;">
									<button type="button" class="btn btn-primary" style="border: 1px solid;">학생 등록</button>
									<button type="button" class="btn btn-primary" style="border: 1px solid;">교수 등록</button>
									<button type="button" class="btn btn-primary" style="border: 1px solid;">강의 등록</button>
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
