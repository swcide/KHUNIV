<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
					<aside class="main-sidebar sidebar-dark-primary elevation-4" style="height: 777px;">
						<!-- Brand Logo -->
						<a href="index3.html" class="brand-link"> <img src="../../dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8"> <span class="brand-text font-weight-light">학사정보</span>
						</a>

						<!-- Sidebar -->
						<div class="sidebar">
							<!-- Sidebar user panel (optional) -->
							<div class="user-panel mt-3 pb-3 mb-3 d-flex">
								<div class="image">
									<img src="../../dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
								</div>
								<div class="info">
									<a href="#" class="d-block">윤기훈</a>
								</div>
							</div>

							<!-- Sidebar Menu -->
							<nav class="mt-2">
								<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
									<li class="nav-header"></li>
									<li class="nav-item"><a href="#" class="nav-link"> <i class="nav-icon far fa-calendar-alt"></i>
											<p>학사일정</p>
									</a></li>
									<!-- 강의/성적 -->
									<li class="nav-item has-treeview"><a href="#" class="nav-link"> <i class="nav-icon fas fa-book"></i>
											<p>
												강의/성적 <i class="right fas fa-angle-left"></i>
											</p>
									</a>
										<ul class="nav nav-treeview">
											<li class="nav-item has-treeview"><a href="#" class="nav-link"> <i class="nav-icon fas fa-edit"></i>
													<p>
														수강신청 <i class="right fas fa-angle-left"></i>
													</p>
											</a>
												<ul class="nav nav-treeview">
													<li class="nav-item"><a href="class-notice.jsp" class="nav-link"> <i class="far fa-dot-circle nav-icon"></i>
															<p>수강신청안내</p>
													</a></li>
													<li class="nav-item"><a href="class-list.jsp" class="nav-link"> <i class="far fa-dot-circle nav-icon"></i>
															<p>강좌개설정보</p>
													</a></li>
													<li class="nav-item"><a href="class-sub.jsp" class="nav-link"> <i class="far fa-dot-circle nav-icon"></i>
															<p>수강신청</p>
													</a></li>
													<li class="nav-item"><a href="class-audit.jsp" class="nav-link"> <i class="far fa-dot-circle nav-icon"></i>
															<p>청강신청</p>
													</a></li>
													
													<li class="nav-item"><a href="score-search.jsp" class="nav-link"> <i class="far fa-dot-circle nav-icon"></i>
															<p>성적조회</p>
													</a></li>
												</ul></li>
										</ul>
										<ul class="nav nav-treeview">
											<li class="nav-item has-treeview"><a href="class-grdDelay.jsp" class="nav-link"> <i class="nav-icon fas fa-edit"></i>
													<p>졸업유예</p>
											</a></li>
										</ul>
										<ul class="nav nav-treeview">
											<li class="nav-item has-treeview"><a href="bachelor-qualifyExam.jsp" class="nav-link"> <i class="nav-icon fas fa-edit"></i>
													<p>학위취득 자격시험</p>
											</a></li>
										</ul> <!-- /강의/성적 --> <!-- 학적관리 -->
									<li class="nav-item has-treeview"><a href="#" class="nav-link"> <i class="nav-icon fas fa-table"></i>
											<p>
												학적관리 <i class="right fas fa-angle-left"></i>
											</p>
									</a>
										<ul class="nav nav-treeview">
											<li class="nav-item has-treeview"><a href="class-abcense.jsp" class="nav-link"> <i class="nav-icon fas fa-copy"></i>
													<p>휴학</p>
											</a></li>
										</ul>
										<ul class="nav nav-treeview">
											<li class="nav-item has-treeview"><a href="class-retire.jsp" class="nav-link"> <i class="nav-icon fas fa-copy"></i>
													<p>자퇴</p>
											</a></li>
										</ul>
										<ul class="nav nav-treeview">
											<li class="nav-item has-treeview"><a href="class-return.jsp" class="nav-link"> <i class="nav-icon fas fa-copy"></i>
													<p>복학</p>
											</a></li>
										</ul>
										
										<ul class="nav nav-treeview">
											<li class="nav-item has-treeview"><a href="class-tuition.jsp" class="nav-link"> <i class="nav-icon fas fa-copy"></i>
													<p>등록금납부</p>
											</a></li>
										</ul>
										<ul class="nav nav-treeview">
											<li class="nav-item has-treeview"><a href="class-scholarship.jsp" class="nav-link"> <i class="nav-icon fas fa-copy"></i>
													<p>
														장학금
													</p>
											</a>
										</ul>
										<ul class="nav nav-treeview">
											<li class="nav-item has-treeview"><a href="certificate-print.jsp" class="nav-link"> <i class="nav-icon fas fa-copy"></i>
													<p>증명서발급</p>
											</a></li>
										</ul></li>
									<!-- /학적관리 -->
								</ul>
							</nav>
							<!-- /.sidebar-menu -->
						</div>
						<!-- /.sidebar -->
					</aside>
				</div>
				<!-- /.col -->
				<div class="col-md-10">
					<div class="card card-primary card-outline">
						<div class="card-header">
							<h3 class="card-title">
								<i class="fas fa-edit"></i> 장학금
							</h3>
						</div>
						<div class="card-body">
							<div class="row">
								<div class="col-5 col-sm-3">
									<div class="nav flex-column nav-tabs h-100" id="vert-tabs-tab" role="tablist" aria-orientation="vertical">
										<a class="nav-link active" id="vert-tabs-home-tab" data-toggle="pill" href="#vert-tabs-home" role="tab" aria-controls="vert-tabs-home" aria-selected="true">장학금 안내</a> 
									</div>
								</div>
								<div class="col-7 col-sm-9">
									<div class="tab-content" id="vert-tabs-tabContent">
										<!-- 자퇴 -->
										<div class="tab-pane text-left fade show active" id="vert-tabs-home" role="tabpanel" aria-labelledby="vert-tabs-home-tab">
											<label style="color: #007bff; font-size: 30px;">장학금 안내</label><br>
											<p>
												본교에서는 가계가 빈곤하고 품행이 방정하며 학업성적이 우수하여 장래가 촉망되는 학생들에게
												장학금을 지급하거나 학자금을 융자 지원하는 <br><strong style="color: #007bff;">한국장학재단과의 협력 관계</strong>로써 장학금 수혜를 도와주고,
												학업에 전념토록 하여 장차 국가발전에 이바지할 인재를 양성하고자 장학금 및 학자금 제도를 <br>안내하고 있습니다.
											</p>
											<ul>
												<li style="list-style-type: none;"><a href="https://www.kosaf.go.kr/">한국 장학재단 바로가기</a></li>
											</ul>
											<br>
											</ul>
											<!-- 자퇴 -->
											
										</div>
										
										
										
										<!--  자퇴 신청 -->
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /.card -->
				</div>
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
</div>
<!-- /.container-fluid -->
</section>
<!-- /.content -->
</div>
<%@ include file="../common/footer.jsp"%>
