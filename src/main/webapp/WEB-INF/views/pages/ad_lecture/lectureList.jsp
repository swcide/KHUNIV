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
									<li class="nav-item"><a href="#" class="nav-link"> <i
											class="far fa-dot-circle nav-icon"></i>
											<p>수강과목</p>
									</a></li>



									<ul class="nav nav-treeview">
										<li class="nav-item has-treeview"><a href="#"
											class="nav-link"> <i class="nav-icon fas fa-edit"></i>
												<p>
													Grown ups <i class="right fas fa-angle-left"></i>
												</p>
										</a></li>
									</ul>

									<li class="nav-item has-treeview"><a href="#"
										class="nav-link"> <i class="nav-icon fas fa-table"></i>
											<p>
												과제및시험 <i class="right fas fa-angle-left"></i>
											</p>
									</a>

										<ul class="nav nav-treeview">
											<li class="nav-item"><a href="assignment.jsp"
												class="nav-link"> <i class="far fa-dot-circle nav-icon"></i>
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
											<li class="nav-item"><a href="specialLecture.jsp"
												class="nav-link"> <i class="far fa-dot-circle nav-icon"></i>
													<p>특강신청</p>
											</a></li>
										</ul>
										<ul class="nav nav-treeview">
											<li class="nav-item"><a href="specialLectureDetail.jsp"
												class="nav-link"> <i class="far fa-dot-circle nav-icon"></i>
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

				<!-- lecture starts -->
				<div class="col-md-9">
					<!-- 오른쪽 전체 div -->
					<div class="card">
						<!-- 위쪽 강의동 버튼 및 강의안내 div -->
						<div class="card-header p-2">
							<!-- 강의동 버튼라인 div -->
							<ul class="nav nav-pills">
								<li class="nav-item"><a class="nav-link active"
									href="#activity" data-toggle="tab">온라인강의</a></li>
							</ul>
						</div>
						<!-- /.card-header -->
						<div class="card-body">
							<!-- 강의안내칸 div -->
							<div class="tab-content">
								<!-- 학기 과목명 테이블 div -->
								<div class="active tab-pane" id="activity">
									<!-- Post -->
									<div class="post">
										<div class="user-block">

											<span class="username" style="margin-left: 0px;"> <a
												href="#">Need for Speed IV</a> <a href="#"
												class="float-right btn-tool"> <i class="fas fa-times"></i></a>
											</span> <span class="description" style="margin-left: 0px;">
												수강기간: 2020-09-21 ~ 2020=09-28 </span>
										</div>

										<div
											style="width: 236px; height: 156px; margin-right: 30px; margin-bottom: 30px; float: left;">
											<img src="../../dist/img/lecture_sample01.jpg"
												alt="lecture Image">
										</div>
										<div
											style="width: 300px; height: 156px; margin-bottom: 30px; float: left;">

											학과: 교양학과 <br> 과목명: Need for Speed IV <br> 담당교수: 김지숙
											<br> 학점: 3 <br> <br>

											<button type="submit" class="btn btn-primary">강의보기</button>

										</div>


										<!-- /.user-block -->





									</div>
									<div class="post">
										<div class="user-block">

											<span class="username" style="margin-left: 0px;"> <a
												href="#"> Monsters DVD</a> <a href="#"
												class="float-right btn-tool"><i class="fas fa-times"></i></a>
											</span> <span class="description" style="margin-left: 0px;">
												수강기간: 2020-09-21 ~ 2020=09-28 </span>
										</div>

										<div
											style="width: 236px; height: 156px; margin-right: 30px; margin-bottom: 30px; float: left;">
											<img src="../../dist/img/lecture_sample02.jpg"
												alt="lecture Image">
										</div>
										<div
											style="width: 300px; height: 156px; margin-bottom: 30px; float: left;">
											학과: 컴퓨터공학과 <br> 과목명: Monsters DVD <br> 담당교수: 김휘경 <br>
											학점: 3 <br> <br>

											<button type="submit" class="btn btn-primary">강의보기</button>

										</div>
										<!-- /.user-block -->





									</div>
									<!-- /.post -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
<%@ include file="../common/footer.jsp"%>

