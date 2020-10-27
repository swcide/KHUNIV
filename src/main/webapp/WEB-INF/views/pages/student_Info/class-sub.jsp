<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>

<link rel="stylesheet" href="../../plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="../../plugins/datatables-responsive/css/responsive.bootstrap4.min.css">


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


				<div class="col-md-5">

					<div class="card">

						<div class="card-header p-2">
							<ul class="nav nav-pills">
								<li class="nav-item"><a class="btn disabled" href="" data-toggle="tab"><strong>수강 신청</strong></a></li>
								<li class="nav-item"><a class="nav-link active" href="#activity1" data-toggle="tab">전공</a></li>
								<li class="nav-item"><a class="nav-link" href="#activity2" data-toggle="tab">교양</a></li>

							</ul>
						</div>
						<!-- /.card-header -->
						<div class="card-body">
							<div class="tab-content">

								<div class="active tab-pane" id="activity1">
									<!-- Post -->
									<div class="post">
										<!-- Table row -->
										<div class="row">
											<div class="col-12 table-responsive">
												<form class="navbar-form">
													<button type="submit" class="btn btn-outline-primary btn-flat" style="float: right; margin-bottom: 5px;">검색</button>
													<input type="text" class="form-control rounded-0" style="width: 15%; float: right; margin-bottom: 5px;">
												</form>

												<table id="example1" class="table table-bordered table-striped">
													<thead style="text-align: center;">
														<tr>
															<th>Rendering engine</th>
															<th>Browser</th>
															<th>Platform(s)</th>
															<th>Engine version</th>
															<th>CheckBox</th>
														</tr>
													</thead>
													<tbody style="text-align: center;">
														<tr>
															<td>이거슨전공페이지여</td>
															<td>Internet Explorer 4.0</td>
															<td>Win 95+</td>
															<td>4</td>
															<td>
																<div class="custom-control custom-switch">
																<button class="btn btn-outline-primary btn-flat" style="margin-top: -12px;">선택</button>
<!-- 																	<input type="checkbox" class="custom-control-input" id="customSwitch1" style="width: 5%;"> <label class="custom-control-label" for="customSwitch1"></label> -->
																</div>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
											<!-- /.col -->
										</div>
										<!-- /.row -->
									</div>


								</div>
								<!-- /.tab-pane -->

								<div class="tab-pane" id="activity2">
									<!-- Post -->
									<div class="post">
										<!-- Table row -->
										<div class="row">
											<div class="col-12 table-responsive">
												<form class="navbar-form">
													<button type="submit" class="btn btn-outline-primary btn-flat" style="float: right; margin-bottom: 5px;">검색</button>
													<input type="text" class="form-control rounded-0" style="width: 15%; float: right; margin-bottom: 5px;">
												</form>

												<table id="example1" class="table table-bordered table-striped">
													<thead style="text-align: center;">
														<tr>
															<th>Rendering engine</th>
															<th>Browser</th>
															<th>Platform(s)</th>
															<th>Engine version</th>
															<th>CheckBox</th>
														</tr>
													</thead>
													<tbody style="text-align: center;">
														<tr>
															<td>이거슨교양페이지여</td>
															<td>Internet Explorer 4.0</td>
															<td>Win 95+</td>
															<td>4</td>
															<td>
																<div class="custom-control custom-switch">
																<button class="btn btn-outline-primary btn-flat" style="margin:0 auto;">선택</button>
<!-- 																	<input type="checkbox" class="custom-control-input" id="customSwitch2" style="width: 5%;"> <label class="custom-control-label" for="customSwitch2"></label> -->
																</div>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
											<!-- /.col -->
										</div>
										<!-- /.row -->
									</div>
								</div>
							</div>
							<!-- /.tab-pane -->
						</div>
						<!-- /.tab-content -->
					</div>
					<!-- /.card-body -->
					<!-- /.nav-tabs-custom -->
				</div>
				<div class="col-md-5">

					<div class="card">

						<div class="card-header p-2">
							<ul class="nav nav-pills">
								<li class="nav-item"><a class="btn disabled" href="" data-toggle="tab"><strong>신청 목록</strong></a></li>
							</ul>
						</div>
						<!-- /.card-header -->
						<div class="card-body">
							<div class="tab-content">

								<div class="active tab-pane" id="activity1">
									<!-- Post -->
									<div class="post">
										<!-- Table row -->
										<div class="row">
											<div class="col-12 table-responsive">
												<form class="navbar-form">
													<button type="submit" class="btn btn-outline-primary btn-flat" style="float: right; margin-bottom: 5px;">검색</button>
													<input type="text" class="form-control rounded-0" style="width: 15%; float: right; margin-bottom: 5px;">
												</form>

												<table id="example1" class="table table-bordered table-striped">
													<thead style="text-align: center;">
														<tr>
															<th>Rendering engine</th>
															<th>Browser</th>
															<th>Platform(s)</th>
															<th>Engine version</th>
															<th>CheckBox</th>
														</tr>
													</thead>
													<tbody style="text-align: center;">
														<tr>
															<td>이거슨전공페이지여</td>
															<td>Internet Explorer 4.0</td>
															<td>Win 95+</td>
															<td>4</td>
															<td>
																<div class="custom-control custom-switch">
																	<input type="checkbox" class="custom-control-input" id="customSwitch1" style="width: 5%;"> <label class="custom-control-label" for="customSwitch1"></label>
																</div>
															</td>
														</tr>
													</tbody>
												</table>
												<div align="right">
													<button class="btn btn-outline-primary btn-flat" style="margin-top: -12px;">신청하기</button>
												</div>
											</div>
											<!-- /.col -->
										</div>
										<!-- /.row -->
									</div>


								</div>
								<!-- /.tab-pane -->

								<div class="tab-pane" id="activity2">
									<!-- Post -->
									<div class="post">
										<!-- Table row -->
										<div class="row">
											<div class="col-12 table-responsive">
												<form class="navbar-form">
													<button type="submit" class="btn btn-outline-primary btn-flat" style="float: right; margin-bottom: 5px;">검색</button>
													<input type="text" class="form-control rounded-0" style="width: 15%; float: right; margin-bottom: 5px;">
												</form>

												<table id="example1" class="table table-bordered table-striped">
													<thead style="text-align: center;">
														<tr>
															<th>Rendering engine</th>
															<th>Browser</th>
															<th>Platform(s)</th>
															<th>Engine version</th>
															<th>CheckBox</th>
														</tr>
													</thead>
													<tbody style="text-align: center;">
														<tr>
															<td>이거슨교양페이지여</td>
															<td>Internet Explorer 4.0</td>
															<td>Win 95+</td>
															<td>4</td>
															<td>
																<div class="custom-control custom-switch">
																	<input type="checkbox" class="custom-control-input" id="customSwitch2" style="width: 5%;"> <label class="custom-control-label" for="customSwitch2"></label>
																</div>
															</td>
														</tr>
													</tbody>
												</table>
												<div align="right">
													<button class="btn btn-outline-primary btn-flat" style="margin-top: -12px;">신청하기</button>
												</div>
											</div>
											<!-- /.col -->
										</div>
										<!-- /.row -->
									</div>
								</div>
								<div class="tab-pane" id="activity3">
									<!-- Post -->
									<div class="post">
										<!-- Table row -->
										<div class="row">
											<div class="col-12 table-responsive">
												<form class="navbar-form">
													<button type="submit" class="btn btn-outline-primary btn-flat" style="float: right; margin-bottom: 5px;">검색</button>
													<input type="text" class="form-control rounded-0" style="width: 15%; float: right; margin-bottom: 5px;">
												</form>

												<table id="example1" class="table table-bordered table-striped">
													<thead style="text-align: center;">
														<tr>
															<th>Rendering engine</th>
															<th>Browser</th>
															<th>Platform(s)</th>
															<th>Engine version</th>
															<th>CheckBox</th>
														</tr>
													</thead>
													<tbody style="text-align: center;">
														<tr>
															<td>수강신청현황페이지여</td>
															<td>Internet Explorer 4.0</td>
															<td>Win 95+</td>
															<td>4</td>
															<td>
																<div class="custom-control custom-switch">
																	<input type="checkbox" class="custom-control-input" id="customSwitch3" style="width: 5%;"> <label class="custom-control-label" for="customSwitch3"></label>
																</div>
															</td>
														</tr>
													</tbody>
												</table>
												<div align="right">
													<button class="btn btn-outline-danger btn-flat" style="margin-top: -12px;">삭제하기</button>
												</div>
											</div>
											<!-- /.col -->
										</div>
										<!-- /.row -->
									</div>
								</div>
							</div>
							<!-- /.tab-pane -->
						</div>
						<!-- /.tab-content -->
					</div>
					<!-- /.card-body -->
					<!-- /.nav-tabs-custom -->
				</div>
			</div>
		</div>
		<!-- /.col -->
</div>
<!-- /.row -->
<!-- /.container-fluid -->
<!-- /.content -->



<script>
	$(function() {
		$("#example1").DataTable({
			"responsive" : true,
			"autoWidth" : false,
		});
		$('#example2').DataTable({
			"paging" : true,
			"lengthChange" : false,
			"searching" : false,
			"ordering" : true,
			"info" : true,
			"autoWidth" : false,
			"responsive" : true,
		});
	});
</script>
<%@ include file="../common/footer.jsp"%>
