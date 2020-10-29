<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>

<div class="content-wrapper" style="margin-left: 0px;">
	<!-- Content Header (Page header) -->
	<section class="content-header" style="margin-bottom: -10px;">
		<div class="container-fluid">
			<div class="row mb-2"></div>
		</div>
	</section>
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-2">

					<!-- Main Sidebar Container -->
					<aside class="main-sidebar sidebar-dark-primary elevation-4"
						style="height: 1052px;">
						<!-- Brand Logo -->
						<a href="index3.html" class="brand-link"> <img
							src="/woosong/dist/img/AdminLTELogo.png" alt="AdminLTE Logo"
							class="brand-image img-circle elevation-3" style="opacity: .8">
							<span class="brand-text font-weight-light">상담센터</span>
						</a>

						<!-- Sidebar -->
						<div class="sidebar">
							<!-- Sidebar user panel (optional) -->
							<div class="user-panel mt-3 pb-3 mb-3 d-flex">
								<div class="image">
									<img src="/woosong/dist/img/user2-160x160.jpg"
										class="img-circle elevation-2" alt="User Image">
								</div>
								<div class="info">
									<a href="#" class="d-block">조원영</a>
								</div>
							</div>

							<!-- Sidebar Menu -->
							<nav class="mt-2">
								<ul class="nav nav-pills nav-sidebar flex-column"
									data-widget="treeview" role="menu" data-accordion="false">
									<li class="nav-header"></li>
									<li class="nav-item"><a href="FAQ.jsp" class="nav-link"> <i
											class="nav-icon far fa-calendar-alt"></i>
											<p>FAQ</p>
									</a></li>
									<!-- 강의/성적 -->
									<li class="nav-item has-treeview"><a href="Q&A.jsp"
										class="nav-link"> <i class="nav-icon fas fa-book"></i>
											<p>Q&A</p></a></li>
									<!-- 내질문 -->
									<li class="nav-item has-treeview"><a href="myQ&A.jsp"
										class="nav-link"> <i class="nav-icon fas fa-book"></i> 내질문
									</a></li>

									<li class="nav-item has-treeview"><a href="EmpCounselling.jsp"
										class="nav-link"> <i class="nav-icon fas fa-book"></i>
											취업상담
									</a></li>
								</ul>
							</nav>
						</div>
					</aside>
				</div>
				<div class="col-md-10">
					<div class="card card-outline card-tabs">
						<div class="card-header ui-sortable-handle" style="cursor: move;">
							<h3 class="card-title">
								<i class="ion ion-clipboard mr-1"></i>취업상담센터
							</h3>
						</div>
						<div class="card-body">
							<div class="active tab-pane" id="activity1">
								<div class="post">
									<div class="row">
										<div class="col-md-3">
											<div class="card card-default">
												<div class="card-header">
													<h3 class="card-title">
														<i class="fas fa-bullhorn"></i> ALEX해외취업상담센터
													</h3>
												</div>
												<div class="card-body">
													<p class="image">
														<img src="/woosong/dist/img/alex.jpg" title=""
															alt="Alex해외취업상담센터" border="0"
															style="width: 240px; height: 145px; border: 0px solid rgb(0, 0, 0);"><br>
													</p>
													<dl>
														<dd>
															<strong class="point">일산캠퍼스</strong>
															<p class="mb15">
																일산 성호빌딩 40층<br> 일산 ALEX 해외취업상담센터<br>http://overseas.alex.ac.kr<br>
																010-3837-7980&nbsp;&nbsp;&nbsp;&nbsp; <a
																	href="mailto:alexfromcanada@job.ac.kr">alexfromcanada@job.ac.kr
																</a>
															</p>
															<a class="detailview_btn3" href="#" target="_blank "><span>ALEX해외취업상담센터
																	바로가기</span></a>
														</dd>
													</dl>
												</div>
											</div>
										</div>
										<div class="col-md-3">
											<div class="card card-default">
												<div class="card-header">
													<h3 class="card-title">
														<i class="fas fa-bullhorn"></i> 김진태전여친경력개발센터
													</h3>
												</div>
												<!-- /.card-header -->
												<div class="card-body">
													<p class="image">
														<img src="/woosong/dist/img/kihunyoon.jpg" title=""
															alt="윤기훈경력개발센터  센터장 사진" border="0"
															style="width: 240px; height: 145px; border: 0px solid rgb(0, 0, 0);"><br>
													</p>
													<dl>
														<dd>
															<strong class="point">영종캠퍼스</strong>
															<p class="mb15">
																4.18기념관 1층<br> 서울 김진태전여친경력개발센터<br>http://job.youngjong.ac.kr<br>
																010-9007-8543&nbsp;&nbsp;&nbsp;&nbsp; <a href="#">career@yoonkihun.ac.kr</a>
															</p>
															<a class="detailview_btn3" href="#" target="_blank "><span>답십리
																	김진태전여친경력개발센터 바로가기</span></a>
														</dd>
													</dl>
												</div>
											</div>
										</div>
										<div class="col-md-3">
											<div class="card card-default">
												<div class="card-header">
													<h3 class="card-title">
														<i class="fas fa-bullhorn"></i> 휘바학술정보원
													</h3>
												</div>
												<!-- /.card-header -->
												<div class="card-body">
													<p class="image">
														<img src="/woosong/dist/img/magognaru.jpg" title=""
															alt="송휘경경력개발발전센터터전 위치" border="0"
															style="width: 240px; height: 145px; border: 0px solid rgb(0, 0, 0);"><br>
													</p>
													<dl>
														<dd>
															<strong class="point">서울캠퍼스</strong>
															<p class="mb15">
																마곡나루 휘경빌딩 20층<br> 마곡나루 휘바학술정보원<br>http://career.hwyba.ac.kr<br>
																010-5107-3601&nbsp;&nbsp;&nbsp;&nbsp; <a href="#">academic_info@hwyba.ac.kr</a>
															</p>
															<a class="detailview_btn3" href="#" target="_blank ">
																<span>휘바학술정보원 바로가기</span>
															</a>
														</dd>
													</dl>
												</div>
											</div>
										</div>
										<div class="col-md-3">
											<div class="card card-default">
												<div class="card-header">
													<h3 class="card-title">
														<i class="fas fa-bullhorn"></i> 김진태취업상담센터
													</h3>
												</div>
												<!-- /.card-header -->
												<div class="card-body">
													<p class="image">
														<img src="/woosong/dist/img/jintaekim.png" title=""
															alt="김진태경력개발센터  상담사진" border="0"
															style="width: 240px; height: 145px; border: 0px solid rgb(0, 0, 0);"><br>
													</p>
													<dl>
														<dd>
															<strong class="point">서울캠퍼스</strong>
															<p class="mb15">
																답십리 김볶빌딩 8층<br> 서울 김진태취업상담센터 <br>
																http://friedkimchintae.ac.kr<br>
																010-9101-4044&nbsp;&nbsp;&nbsp;&nbsp; <a
																	href="mailto:friedkimchintae@job.ac.kr">friedkimchintae@job.ac.kr</a>
															</p>
															<a class="detailview_btn3" href="#" target="_blank "><span>김진태취업상담센터
																	바로가기</span></a>
														</dd>
													</dl>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
<script src="/woosong/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="/woosong/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- jQuery UI -->
<script src="/woosong/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- AdminLTE App -->
<script src="/woosong/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/woosong/dist/js/demo.js"></script>
<!-- fullCalendar 2.2.5 -->
<script src="/woosong/plugins/moment/moment.min.js"></script>
<!-- Page specific script -->

<%@ include file="../common/footer.jsp"%>