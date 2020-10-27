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
					<div class="content-wrapper">
						<div>
						
							<div class="card card-primary card-outline">
								<div class="card-header">
									<div class="user-block">
										<img class="img-circle"
											src="/woosong/dist/img/user1-128x128.jpg" alt="User Image">
										<span class="username"><a href="#">식단표 공지에 대한 건의</a></span> <span
											class="description">조원영 - 2020-09-23 13:21</span>
									</div>
								</div>
								<!-- /.card-header -->
								<div class="card-body">

									<div class="form-group">
										<div id="compose-textarea" class="form-control"
											style="height: 300px">식단표 공지가 제 시간에 올라 오지 않습니다. 왜 그런
											건가요? 빠른 답변 부탁드립니다.</div>
									</div>
								</div>
								<div class="card-footer card-comments">
									<!-- /.card-comment -->
									<div class="card-comment">
										<!-- User image -->
										<img class="img-circle img-sm"
											src="/woosong/dist/img/user5-128x128.jpg" alt="User Image">

										<div class="comment-text">
											<span class="username"> 최덕자 <span
												class="badge bg-primary">답변완료</span>
											</span>
											<!-- /.username -->
											확인 결과 시스템에 오류가 있었습니다. 현재 수정 완료하였습니다. 감사합니다.
										</div>
									</div>
								</div>
								<div class="card-footer">
									<div class="float-right">
										<button onclick="location= 'Q&A.jsp'"
											class="btn btn-primary float-right">목록으로 돌아가기</button>
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