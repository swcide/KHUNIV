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
					<h3>게시판 신고현황</h3>
					<p class="text-subtitle text-muted">모든 기능은 필요에 의해 이용하여 주시길 바랍니다.</p>
				</div>
				<section class="section">
					<div class="row mb-4">
						<div class="col-md-8">
							<div class="card" style="height: 93%;">
								<div class="card-header d-flex justify-content-between align-items-center">
									<h4 class="card-title">게시판 신고 현황</h4>
								</div>
								<div class="card-body px-0 pb-0">
									<div class="table-responsive">
										<table class='table mb-0' id="table1">
											<thead>
												<tr>
													<th>신고자</th>
													<th>제목</th>
													<th>신고 내용</th>
													<th>연락처</th>
													<th>신고 게시판</th>
													<th>처리 상태</th>
												</tr>
											</thead>
											<tbody>
												</tr>
												<tr>
													<td>김진태</td>
													<td>어딘가.. hotGay가 있어요</td>
													<td>뒤통수가 뜨겁고 ........................</td>
													<td>010-5882-5882</td>
													<td>학생게시판</td>
													<td>
														<span class="badge bg-success">Active</span>
													</td>
												</tr>
												<tr>
													<td>조원영</td>
													<td>저는 사실</td>
													<td>ga......a......a..y..........</td>
													<td>010-2222-1111</td>
													<td>학생게시판</td>
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

							<div class="card widget-todo">
								<div class="card-header border-bottom d-flex justify-content-between align-items-center">
									<h4 class="card-title d-flex">
										<i class='bx bx-check font-medium-5 pl-25 pr-75'></i>금칙어 관리
									</h4>
								</div>
								<div class="input-group mb-3" style="padding: 10px 10px 17px 10px;">
									<button class="btn btn-primary" type="button" id="button-addon1">등록</button>
									<input type="text" class="form-control" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1">
								</div>
								<div class="card-body px-0 py-1" style="margin: 10px 10px 17px 10px;">
									<div class="input-group mb-3">
										<div class="input-group-text">
											<input class="form-check-input" type="checkbox" value="" aria-label="Checkbox for following text input">
										</div>
										<input type="text" class="form-control" aria-label="Text input with checkbox">
									</div>

									<input type="button" class="btn btn-outline-danger float-right" name="" value="삭제">
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
