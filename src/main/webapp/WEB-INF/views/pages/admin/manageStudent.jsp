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
			<%@ include file="adminHeader.jsp" %>
			<!--  contents -->
			<div class="main-content container-fluid">
				<div class="page-title">
					<h3>학적관리</h3>
					<p class="text-subtitle text-muted">모든 기능은 필요에 의해 이용하여 주시길 바랍니다.</p>
				</div>
				<section class="section">
					<div class="row mb-4">
						<div class="col-md-6">
							<div class="card" style="height: 93%;">
								<div class="card-header d-flex justify-content-between align-items-center">
									<h4 class="card-title">휴학 신청 현황</h4>
								</div>
								<div class="card-body px-0 pb-0">
									<div class="table-responsive">
										<table class='table mb-0' id="table1" style="text-align:center">
											<thead>
												<tr>
													<th>이름</th>
													<th>학과</th>
													<th>파일첨부</th>
													<th>승인가능</th>
													<th>비고</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>윤기훈</td>
													<td>취업할수있을과</td>
													<td>O</td>
													<td>O</td>
													<td>
														<input type="button" class="btn btn-primary" value="승인" onclick="">
														<!-- 온클릭펑션 서브밋 알럿으로 여부 판단 -->
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="card" style="height: 93%;">
								<div class="card-header d-flex justify-content-between align-items-center">
									<h4 class="card-title">복학 신청 현황</h4>
								</div>
								<div class="card-body px-0 pb-0">
									<div class="table-responsive">
										<table class='table mb-0' id="table1" style="text-align:center">
											<thead>
												<tr>
													<th>이름</th>
													<th>학과</th>
													<th>파일첨부</th>
													<th>승인가능</th>
													<th>비고</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>윤기훈</td>
													<td>취업할수있을과</td>
													<td>O</td>
													<td>O</td>
													<td>
														<input type="button" class="btn btn-primary" value="승인" onclick="">
														<!-- 온클릭펑션 서브밋 알럿으로 여부 판단 -->
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row mb-4">
						<div class="col-md-6">
							<div class="card" style="height: 93%;">
								<div class="card-header d-flex justify-content-between align-items-center">
									<h4 class="card-title">졸업유예 신청 현황</h4>
								</div>
								<div class="card-body px-0 pb-0">
									<div class="table-responsive">
										<table class='table mb-0' id="table1" style="text-align:center">
											<thead>
												<tr>
													<th>이름</th>
													<th>학과</th>
													<th>파일첨부</th>
													<th>승인가능</th>
													<th>비고</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>윤기훈</td>
													<td>취업할수있을과</td>
													<td>O</td>
													<td>O</td>
													<td>
														<input type="button" class="btn btn-primary" value="승인" onclick="">
														<!-- 온클릭펑션 서브밋 알럿으로 여부 판단 -->
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="card" style="height: 93%;">
								<div class="card-header d-flex justify-content-between align-items-center">
									<h4 class="card-title">자퇴 신청 현황</h4>
								</div>
								<div class="card-body px-0 pb-0">
									<div class="table-responsive">
										<table class='table mb-0' id="table1" style="text-align:center">
											<thead>
												<tr>
													<th>이름</th>
													<th>학과</th>
													<th>파일첨부</th>
													<th>승인가능</th>
													<th>비고</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>윤기훈</td>
													<td>취업할수있을과</td>
													<td>O</td>
													<td>O</td>
													<td>
														<input type="button" class="btn btn-primary" value="승인" onclick="">
														<!-- 온클릭펑션 서브밋 알럿으로 여부 판단 -->
													</td>
												</tr>
											</tbody>
										</table>
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
