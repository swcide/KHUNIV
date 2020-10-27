<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper" style="margin-left: 0px;">
	<!-- Content Header (Page header) -->
	<section class="content-header" style="margin-bottom: -10px;">
		<div class="container-fluid">
			<div class="row mb-2"></div>
		</div>
		<!-- /.container-fluid -->
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-2">

					<!-- Main Sidebar Container -->
					<aside class="main-sidebar sidebar-dark-primary elevation-4"
						style="height: 777px;">
						<!-- Brand Logo -->
						<a href="lectureHall.jsp" class="brand-link"> <img
							src="../../dist/img/AdminLTELogo.png" alt="AdminLTE Logo"
							class="brand-image img-circle elevation-3" style="opacity: .8">
							<span class="brand-text font-weight-light">강의동</span>
						</a>

						<!-- Sidebar -->
						<div class="sidebar">
							<!-- Sidebar user panel (optional) -->
							<div class="user-panel mt-3 pb-3 mb-3 d-flex">
								<div class="image">
									<img src="../../dist/img/user2-160x160.jpg"
										class="img-circle elevation-2" alt="User Image">
								</div>
								<div class="info">
									<a href="#" class="d-block">윤기훈</a>
								</div>
							</div>

							<!-- Sidebar Menu -->
							<nav class="mt-2">
								<ul class="nav nav-pills nav-sidebar flex-column"
									data-widget="treeview" role="menu" data-accordion="false">
									<li class="nav-header"></li>
									<li class="nav-item"><a href="#" class="nav-link">
															<i class="far fa-dot-circle nav-icon"></i>
															<p>수강과목</p>
													</a></li>
								
										
										
										<ul class="nav nav-treeview">
											<li class="nav-item has-treeview"><a href="#"
												class="nav-link"> <i class="nav-icon fas fa-edit"></i>
													<p>Grown ups
														 <i class="right fas fa-angle-left"></i>
													</p>
											</a>
												 </li>
										</ul>
																			 
									<li class="nav-item has-treeview"><a href="#"
										class="nav-link"> <i class="nav-icon fas fa-table"></i>
											<p>
												과제및시험 <i class="right fas fa-angle-left"></i>
											</p>
									</a>
										
												<ul class="nav nav-treeview">
													<li class="nav-item"><a href="assignment.jsp" class="nav-link">
															<i class="far fa-dot-circle nav-icon"></i>
															<p>과제제출</p>
													</a></li>
												</ul>
												<ul class="nav nav-treeview">
													<li class="nav-item"><a href="exam.jsp" class="nav-link">
															<i class="far fa-dot-circle nav-icon"></i>
															<p>시험응시</p>
													</a></li>
												</ul></li>
									<li class="nav-item has-treeview"><a href="#"
										class="nav-link"> <i class="nav-icon fas fa-table"></i>
											<p>
												특강 <i class="right fas fa-angle-left"></i>
											</p>
									</a>
										
												<ul class="nav nav-treeview">
													<li class="nav-item"><a href="specialLecture.jsp" class="nav-link">
															<i class="far fa-dot-circle nav-icon"></i>
															<p>특강신청</p>
													</a></li>
												</ul>
												<ul class="nav nav-treeview">
													<li class="nav-item"><a href="specialLectureDetail.jsp" class="nav-link">
															<i class="far fa-dot-circle nav-icon"></i>
															<p>특강듣기</p>
													</a></li>
												</ul></li>
										</ul>
										</li>
									<!-- /학적관리 -->
								</ul>
							</nav>
							<!-- /.sidebar-menu -->
						</div>
						<!-- /.sidebar -->
					</aside>
				</div>
				<!-- /.col -->
				
				<!-- sidebar ends -->

				<div class="col-md-10">

					<div class="card">

						<div class="card-header p-2">
							<ul class="nav nav-pills">

								<li class="nav-item"><a class="nav-link active" href="#activity1" data-toggle="tab">온라인 강의</a></li>
								<li class="nav-item"><a class="nav-link" href="#activity2" data-toggle="tab">과제</a></li>
								<li class="nav-item"><a class="nav-link" href="#activity3" data-toggle="tab">시험</a></li>
								

							</ul>
						</div>
						<!-- /.card-header -->
						<div class="card-body">
							<div class="tab-content">

								<div class="active tab-pane" id="activity1">

									
										<!-- Table row -->
										<div class="row">
											<div class="col-4 table-responsive">
												<div>
													<div class="timeline-item">
														<span class="time"><i class="fas fa-clock"></i>2020-09-28 ~ 2020-10-3</span>

														<h3 class="timeline-header">
															<a href="#">NEED FOR SPEED 1주차</a>
														</h3>

														<div class="timeline-body">
															<div class="embed-responsive embed-responsive-16by9">
																<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/pF4mgiJly0c" frameborder="0" allowfullscreen=""></iframe>
															</div>
														</div>
													</div>
												</div>
											</div>
											
											<!-- /.col -->
											<P>일정한 주제를 채택하여 각 학생이 짧게 발표할 수 있도록 영어로 대화할 때 사용되는 언어기능, 전략 등에 대해 공부한다.<br>
												 토론방, 조별 활동 등을 통해 학생들 간의 역할 분담 등의 방법을 이용하여 영어로 대화하는 방법을 지도한다. </P>
										</div>

										<!-- /.row -->
									</div>
									<div align="center" style= "padding-bottom: 20px;">
										<button  type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-default">목록으로</button>
									</div>
								
								</div>
								<!-- /.tab-pane -->
<%@ include file="../common/footer.jsp"%>

								
						















