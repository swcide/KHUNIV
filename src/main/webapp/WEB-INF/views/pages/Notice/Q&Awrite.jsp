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
						style="height: 777px;">
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
					<div class="card card-primary card-outline card-tabs">
						<div class="card-header p-2">
							<label><i class="fas fa-bullhorn"></i><strong
								style="font-size: 20px;">&nbsp; Q&A 작성하기</strong></label>
						</div>
						<div class="card-body">
							<div class="form-group">
								<input class="form-control" placeholder="제목">
							</div>
							<div class="form-group">
								<textarea id="compose-textarea" class="form-control"
									style="height: 300px">                     
                    					</textarea>
							</div>
						</div>
						<div class="card-footer">
							<div class="float-right">
								<input type="submit" value="작성완료"
									class="btn btn-success float-right">
							</div>
							<a class="btn btn-danger btn-sm" href="Q&A.jsp"> <i
								class="fas fa-trash"> </i> 취소
							</a>
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