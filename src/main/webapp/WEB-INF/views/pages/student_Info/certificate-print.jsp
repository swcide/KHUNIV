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
					<div class="card">
						<div class="card-header p-2">

							<ul class="nav nav-pills">
								<li class="nav-item"><a class="nav-link active" href="#activity" data-toggle="tab">재학증명서</a></li>
								<li class="nav-item"><a class="nav-link" href="#timeline" data-toggle="tab">졸업증명서</a></li>
							</ul>
						</div>
						<!-- /.card-header -->
						<div class="card-body">
							<div class="tab-content">
								<div class="active tab-pane" id="activity">
									<!-- Post -->
									<div class="content-wrapper" style="margin-left: 0px;">
										<!-- Content Header (Page header) -->
										<section class="content-header">
											<div class="container-fluid">
												<div class="row mb-2"></div>
											</div>
											<!-- /.container-fluid -->
										</section>

										<section class="content">
											<div class="container-fluid">
												<div class="row">
													<div class="col-3"></div>
													<div class="col-6">
														<!-- Main content -->
														<div class="invoice p-3 mb-3">
															<!-- title row -->
															<div class="row">
																<div class="col-1">
																	<h6>
																		<!-- <i class="fas fa-globe"></i>  -->
																		제1호<small class="float-right"></small>
																	</h6>
																</div>
																<div class="col-10">
																	<h1 align="center">
																		<strong>재 학 증 명 서 </strong>
																	</h1>
																</div>
																<div class="col-1">
																	<h1 align="center"></h1>
																</div>
																<!-- /.col -->
															</div>
															<!-- info row -->
															<div class="row invoice-info">
																<div class="col-sm-6 invoice-col" align="left"></div>

																<!-- /.col -->
															</div>
															<!-- /.row -->

															<!-- Table row -->
															<div class="row">
																<div class="col-1 table-responsive"></div>
																<div class="col-10 table-responsive" align="left">
																	<br> <br> <br>
																	<br> <br>
																	<ul>
																		<li style="list-style-type: none;"><h4>
																				<strong>성명 : 윤기훈</strong>
																			</h4>
																			<br></li>
																		<li style="list-style-type: none;"><h4>
																				<strong>학번 : 201203798</strong>
																			</h4>
																			<br></li>
																		<li style="list-style-type: none;"><h4>
																				<strong>학과 : 컴퓨터공학과</strong>
																			</h4>
																			<br></li>
																	</ul>
																	<br> <br>
																	<div align="center">
																		<h4>
																			위 학생은 2020 년 09월 25일 현재 <br>
																			<br>우송시사이버대학교 컴퓨터공학과 <br>
																			<br>재학중임을 증명합니다.
																		</h4>
																	</div>
																	<br> <br> <br>
																	<div align="center">
																		<h4>2020년 09월 25일</h4>
																	</div>
																	<br> <br> <br>
																	<div align="center">
																		<h1>우송시사이버대학교 총장</h1>
																	</div>
																</div>
																<div class="col-1 table-responsive"></div>
																<br> <br>
																<table class="col-12">
																	<thead>
																		<tr align="center">
																			<th style="border: solid 1px black;">용도</th>
																			<th style="border: solid 1px black;">담당자</th>
																			<th style="border: solid 1px black;">연락처</th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr align="center">
																			<th style="border: solid 1px black;">기관제출용</th>
																			<th style="border: solid 1px black;">이성호</th>
																			<th style="border: solid 1px black;">02)123-1234</th>
																		</tr>
																	</tbody>
																</table>
																<!-- /.col -->
															</div>
															<!-- /.row -->


															<!-- this row will not appear when printing -->
														</div>
														<!-- /.invoice -->
													</div>
													<div class="col-3"></div>
													<!-- /.col -->
												</div>
												<!-- /.row -->
											</div>
											<!-- /.container-fluid -->
										</section>
										<!-- /.content -->
									</div>
									<!-- /.post -->

									<!-- Post -->
								</div>
								<!-- /.tab-pane -->
								<div class="tab-pane" id="timeline">
									<!-- The timeline -->
									<div class="content-wrapper" style="margin-left: 0px;">
										<!-- Content Header (Page header) -->
										<section class="content-header">
											<div class="container-fluid"></div>
											<!-- /.container-fluid -->
										</section>

										<section class="content">
										<div class="container-fluid">
											<div class="row">
												<div class="col-3"></div>
												<div class="col-6">
													<!-- Main content -->
													<div class="invoice p-3 mb-3">
														<!-- title row -->
														<div class="row">
															<div class="col-1">
																<h6>
																	<!-- <i class="fas fa-globe"></i>  -->
																	제1호<small class="float-right"></small>
																</h6>
															</div>
															<div class="col-10">
																<h1 align="center">
																	<strong>졸 업 증 명 서 </strong>
																</h1>
															</div>
															<div class="col-1">
																<h1 align="center"></h1>
															</div>
															<!-- /.col -->
														</div>
														<!-- info row -->
														<div class="row invoice-info">
															<div class="col-sm-6 invoice-col" align="left"></div>

															<!-- /.col -->
														</div>
														<!-- /.row -->

														<!-- Table row -->
														<div class="row">
															<div class="col-1 table-responsive"></div>
															<div class="col-10 table-responsive" align="left">
																<br> <br> <br> <br> <br>
																<ul>
																	<li style="list-style-type: none;"><h4>
																			<strong>성명 : 김진태</strong>
																		</h4> <br></li>
																	<li style="list-style-type: none;"><h4>
																			<strong>학번 : 2010011223</strong>
																		</h4> <br></li>
																	<li style="list-style-type: none;"><h4>
																			<strong>학과 : 컴퓨터공학과</strong>
																		</h4> <br></li>
																</ul>
																<br> <br>
																<div align="center">
																	<h4>
																		위 학생은 2020 년 02월 25일 부로 <br> <br>우송시사이버대학교 컴퓨터공학과 <br> <br>졸업함을 증명합니다.
																	</h4>
																</div>
																<br> <br> <br>
																<div align="center">
																	<h4>2020년 09월 25일</h4>
																</div>
																<br> <br> <br>
																<div align="center">
																	<h1>우송시사이버대학교 총장</h1>
																</div>
															</div>
															<div class="col-1 table-responsive"></div>
															<br> <br>
															<table class="col-12">
																<thead>
																	<tr align="center">
																		<th style="border: solid 1px black;">용도</th>
																		<th style="border: solid 1px black;">담당자</th>
																		<th style="border: solid 1px black;">연락처</th>
																	</tr>
																</thead>
																<tbody>
																	<tr align="center">
																		<th style="border: solid 1px black;">기관제출용</th>
																		<th style="border: solid 1px black;">이성호</th>
																		<th style="border: solid 1px black;">02)123-1234</th>
																	</tr>
																</tbody>
															</table>
															<!-- /.col -->
														</div>
														<!-- /.row -->
													</div>
													<!-- /.invoice -->
												</div>
												<div class="col-3"></div>
												<!-- /.col -->
											</div>
											<!-- /.row -->
										</div>
										<!-- /.container-fluid -->
	</section>
	<!-- /.content -->
</div>
</div>
<!-- /.tab-pane -->

<!-- /.tab-pane -->
</div>
<!-- /.tab-content -->
</div>
<!-- /.card-body -->
</div>
<!-- /.nav-tabs-custom -->
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
