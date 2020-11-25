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
					<h3>공지사항</h3>
					<p class="text-subtitle text-muted">모든 기능은 필요에 의해 이용하여 주시길 바랍니다.</p>
				</div>
				<section class="section">
					<div class="row mb-4">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">일반 공지</h4>
								</div>
								<div class="card-content">
									<!-- table hover -->
									<div class="table-responsive">
										<table class="table table-hover mb-0" style="text-align: center">
											<thead>
												<tr>
													<th style="text-align: left">#</th>
													<th>제목</th>
													<th>작성자</th>
													<th>작성일</th>
													<th>조회수</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td class="text-bold-500" style="text-align: left">Michael Right</td>
													<td>$15/hr</td>
													<td>$15/hr</td>
													<td>$15/hr</td>
													<td class="text-bold-500">UI/UX</td>
												</tr>
												<tr>
													<td class="text-bold-500" style="text-align: left">Michael Right</td>
													<td>$15/hr</td>
													<td class="text-bold-500">UI/UX</td>
													<td class="text-bold-500">UI/UX</td>
													<td class="text-bold-500">UI/UX</td>
												</tr>
											</tbody>
										</table>
										<a href="#" class="btn icon icon-left btn-primary float-right" style="margin: 10px 73px  10px 10px;"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit">
												<path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path>
												<path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg> 공지 작성</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row mb-4">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">학사 공지</h4>
								</div>
								<div class="card-content">
									<!-- table hover -->
									<div class="table-responsive">
										<table class="table table-hover mb-0" style="text-align: center">
											<thead>
												<tr>
													<th style="text-align: left">#</th>
													<th>제목</th>
													<th>작성자</th>
													<th>작성일</th>
													<th>조회수</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td class="text-bold-500" style="text-align: left">Michael Right</td>
													<td>$15/hr</td>
													<td>$15/hr</td>
													<td>$15/hr</td>
													<td class="text-bold-500">UI/UX</td>
												</tr>
												<tr>
													<td class="text-bold-500" style="text-align: left">Michael Right</td>
													<td>$15/hr</td>
													<td>$15/hr</td>
													<td>$15/hr</td>
													<td class="text-bold-500">UI/UX</td>
												</tr>
											</tbody>
										</table>
										<a href="#" class="btn icon icon-left btn-primary float-right" style="margin: 10px 73px  10px 10px;"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit">
												<path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path>
												<path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg> 공지 작성</a>
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
