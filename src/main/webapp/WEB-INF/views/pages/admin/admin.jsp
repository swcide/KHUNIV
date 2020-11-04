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
		<div id="sidebar" class='active'>
			<div class="sidebar-wrapper active">
				<div class="sidebar-header">
					<img src="assets/images/logo.svg" alt="" srcset="">
				</div>
				<div class="sidebar-menu">
					<ul class="menu">
						<li class="sidebar-item  has-sub"><a href="#" class='sidebar-link'> <i data-feather="triangle" width="20"></i> <span>학생</span>
						</a>
							<ul class="submenu ">
								<li><a href="component-alert.html">학적관리현황</a></li>
								<li><a href="component-badge.html">등록금납부현황</a></li>
								<li><a href="component-badge.html">신입생 등록</a></li>
							</ul></li>

						<li class="sidebar-item  has-sub"><a href="#" class='sidebar-link'> <i data-feather="briefcase" width="20"></i> <span>게시판</span>
						</a>
							<ul class="submenu ">
								<li><a href="component-extra-avatar.html">공지 현황</a></li>
								<li><a href="component-extra-avatar.html">계열별 게시판 현황</a></li>
								<li><a href="component-extra-divider.html">취업정보 게시판 현황</a></li>
								<li><a href="component-extra-divider.html">금칙어 관리</a></li>
							</ul></li>

						<li class="sidebar-item  has-sub"><a href="#" class='sidebar-link'> <i data-feather="briefcase" width="20"></i> <span>학과</span>
						</a>
							<ul class="submenu ">
								<li><a href="component-extra-avatar.html">교양학과</a></li>
								<li><a href="component-extra-divider.html">일반학과</a></li>
							</ul></li>

						<li class="sidebar-item  has-sub"><a href="#" class='sidebar-link'> <i data-feather="file-text" width="20"></i> <span>교수</span>
						</a>
							<ul class="submenu ">
								<li><a href="form-element-input.html">Input</a></li>
								<li><a href="form-element-input-group.html">Input Group</a></li>
								<li><a href="form-element-select.html">Select</a></li>
								<li><a href="form-element-radio.html">Radio</a></li>
								<li><a href="form-element-checkbox.html">Checkbox</a></li>
								<li><a href="form-element-textarea.html">Textarea</a></li>
							</ul></li>
					</ul>
				</div>
				<button class="sidebar-toggler btn x">
					<i data-feather="x"></i>
				</button>
			</div>
		</div>
		<div id="main">
			<nav class="navbar navbar-header navbar-expand navbar-light">
				<a class="sidebar-toggler" href="#"><span class="navbar-toggler-icon"></span></a>
				<button class="btn navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav d-flex align-items-center navbar-light ml-auto">
						<li class="dropdown nav-icon"><a href="#" data-toggle="dropdown" class="nav-link  dropdown-toggle nav-link-lg nav-link-user">
								<div class="d-lg-inline-block">
									<i data-feather="bell"></i>
								</div>
						</a>
							<div class="dropdown-menu dropdown-menu-right dropdown-menu-large">
								<h6 class='py-2 px-4'>Notifications</h6>
								<ul class="list-group rounded-none">
									<li class="list-group-item border-0 align-items-start">
										<div class="avatar bg-success mr-3">
											<span class="avatar-content"><i data-feather="shopping-cart"></i></span>
										</div>
										<div>
											<h6 class='text-bold'>New Order</h6>
											<p class='text-xs'>An order made by Ahmad Saugi for product Samsung Galaxy S69</p>
										</div>
									</li>
								</ul>
							</div></li>
						<li class="dropdown nav-icon mr-2"><a href="#" data-toggle="dropdown" class="nav-link  dropdown-toggle nav-link-lg nav-link-user">
								<div class="d-lg-inline-block">
									<i data-feather="mail"></i>
								</div>
						</a>
							<div class="dropdown-menu dropdown-menu-right">
								<a class="dropdown-item" href="#"><i data-feather="user"></i> Account</a> <a class="dropdown-item active" href="#"><i data-feather="mail"></i> Messages</a> <a class="dropdown-item" href="#"><i data-feather="settings"></i> Settings</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#"><i data-feather="log-out"></i> Logout</a>
							</div></li>
						<li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
								<div class="avatar mr-1">
									<img src="assets/images/avatar/avatar-s-1.png" alt="" srcset="">
								</div>
								<div class="d-none d-md-block d-lg-inline-block">Hi, Saugi</div>
						</a>
							<div class="dropdown-menu dropdown-menu-right">
								<a class="dropdown-item" href="#"><i data-feather="user"></i> Account</a> <a class="dropdown-item active" href="#"><i data-feather="mail"></i> Messages</a> <a class="dropdown-item" href="#"><i data-feather="settings"></i> Settings</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#"><i data-feather="log-out"></i> Logout</a>
							</div></li>
					</ul>
				</div>
			</nav>

			<div class="main-content container-fluid">
				<div class="page-title">
					<h3>Dashboard</h3>
					<p class="text-subtitle text-muted">A good dashboard to display your statistics</p>
				</div>
				<section class="section">
					<div class="row mb-4">
						<div class="col-md-8">
							<div class="card">
								<div class="card-header">
									<h3 class='card-heading p-1 pl-3'>사이트 접속 현황</h3>
								</div>
								<div class="card-body">
									<div class="row">
										<div class="col-md-4 col-12">
											<div class="pl-3">
												<h1 class='mt-5'>today 1502</h1>
												<p class='text-xs'>
													<span class="text-green"><i data-feather="bar-chart" width="15"></i> +19%</span> than last day
												</p>
												<div class="legends">
													<div class="legend d-flex flex-row align-items-center">
														<div class='w-3 h-3 rounded-full bg-info mr-2'></div>
														<span class='text-xs'>Last Month</span>
													</div>
													<div class="legend d-flex flex-row align-items-center">
														<div class='w-3 h-3 rounded-full bg-blue mr-2'></div>
														<span class='text-xs'>Current Month</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-8 col-12">
											<canvas id="bar"></canvas>
										</div>
									</div>
								</div>
							</div>
							<div class="card">
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
												<tr>
													<td>Graiden</td>
													<td>vehicula.aliquet@semconsequat.co.uk</td>
													<td>076 4820 8838</td>
													<td>Offenburg</td>
													<td>
														<span class="badge bg-success">Active</span>
													</td>
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
												<tr>
													<td>Darius</td>
													<td>velit@nec.com</td>
													<td>0309 690 7871</td>
													<td>Ways</td>
													<td>
														<span class="badge bg-success">Active</span>
													</td>
												</tr>
												<tr>
													<td>Ganteng</td>
													<td>velit@nec.com</td>
													<td>0309 690 7871</td>
													<td>Ways</td>
													<td>
														<span class="badge bg-success">Active</span>
													</td>
												</tr>
												<tr>
													<td>Oleg</td>
													<td>rhoncus.id@Aliquamauctorvelit.net</td>
													<td>0500 441046</td>
													<td>Rossignol</td>
													<td>
														<span class="badge bg-success">Active</span>
													</td>
												</tr>
												<tr>
													<td>Kermit</td>
													<td>diam.Sed.diam@anteVivamusnon.org</td>
													<td>(01653) 27844</td>
													<td>Patna</td>
													<td>
														<span class="badge bg-success">Active</span>
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
								<div class="card-header">
									<h4 class="card-title">Q & A 게시판 현황</h4>
								</div>
								<div class="card-content">
									<div class="card-body">
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th>이름</th>
														<th style="text-align: center;">질문내용</th>
														<th style="text-align: center;">처리 상태</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td class="text-bold-500">Michael Right</td>
														<td style="text-align: center;">$15/hr</td>
														<td class="text-bold-500" style="text-align: center;">
															<span class="badge bg-primary">Primary</span>
														</td>
													</tr>
													<tr>
														<td class="text-bold-500">Morgan Vanblum</td>
														<td style="text-align: center;">$13/hr</td>
														<td class="text-bold-500" style="text-align: center;">
															<a class="badge bg-danger">Danger</a>
														</td>
													</tr>
													<tr>
														<td class="text-bold-500">Tiffani Blogz</td>
														<td style="text-align: center;">$15/hr</td>
														<td class="text-bold-500" style="text-align: center;">
															<span class="badge bg-primary">Primary</span>
														</td>
													</tr>
													<tr>
														<td class="text-bold-500">Ashley Boul</td>
														<td style="text-align: center;">$15/hr</td>
														<td class="text-bold-500" style="text-align: center;">
															<span class="badge bg-primary">Primary</span>
														</td>
													</tr>
													<tr>
														<td class="text-bold-500">Mikkey Mice</td>
														<td style="text-align: center;">$15/hr</td>
														<td class="text-bold-500" style="text-align: center;">
															<a class="badge bg-danger">Danger</a>
														</td>
													</tr>
												</tbody>
											</table>
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
