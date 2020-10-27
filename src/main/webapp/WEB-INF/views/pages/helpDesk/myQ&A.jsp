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
									<li class="nav-item"><a href="FAQ.jsp" class="nav-link">
											<i class="nav-icon far fa-calendar-alt"></i>
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

									<li class="nav-item has-treeview"><a
										href="EmpCounselling.jsp" class="nav-link"> <i
											class="nav-icon fas fa-book"></i> 취업상담
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
								<i class="ion ion-clipboard mr-1"></i> 내 질문
							</h3>
							<div class="card-tools">
								<div class="input-group input-group-sm" style="width: 150px;">
									<input type="text" name="table_search"
										class="form-control float-right" placeholder="Search">

									<div class="input-group-append">
										<button type="submit" class="btn btn-default">
											<i class="fas fa-search"></i>
										</button>
									</div>
								</div>
							</div>

						</div>

						<!-- /.card-header -->
						<div class="card-body">
							<div class="active tab-pane" id="activity1">
								<!-- Post -->
								<div class="post">
									<!-- Table row -->
									<div class="row">
										<div class="col-12 table-responsive">
											<table class="table table-striped">
												<thead>
													<tr>
														<th>번호</th>
														<th>답변</th>
														<th>제목</th>
														<th>작성자</th>
														<th>날짜</th>
													</tr>
												</thead>
												<tbody>

													<tr>
														<td>4</td>
														<td><span class="badge bg-warning">답변대기</span></td>
														<td><a href="Q&Aread.jsp">식단표 공지에 대한 건의</a></td>
														<td>조원영</td>
														<td>2020-09-23</td>
													</tr>
													<tr>
														<td>3</td>
														<td><span class="badge bg-primary">답변완료</span></td>
														<td><a href="Q&Aread.jsp">[비밀글] 안녕하세요 윤기훈 총장님께
																질문있습니다.</a></td>
														<td>조원영</td>
														<td>2020-09-12</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="card-tools" align="center">
							<ul class="pagination pagination-sm" style="display: inline-flex">
								<li class="page-item"><a href="#" class="page-link">«</a></li>
								<li class="page-item"><a href="#activity1"
									class="page-link">1</a></li>
								<li class="page-item"><a href="#" class="page-link">»</a></li>
							</ul>
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