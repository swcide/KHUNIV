<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../common/profHeader.jsp"%>
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
						<a href="index3.html" class="brand-link"> <img src="../dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8"> <span class="brand-text font-weight-light">교수 목록</span>
						</a>

						<!-- Sidebar -->
						<div class="sidebar">
							<!-- Sidebar user panel (optional) -->
							<div class="user-panel mt-3 pb-3 mb-3 d-flex">
								<div class="image">
									<img src="../dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
								</div>
								<div class="info">
									<a href="#" class="d-block">이성호</a>
								</div>
							</div>

							<!-- Sidebar Menu -->
							<nav class="mt-2">
								<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
									<li class="nav-header"></li>
									<li class="nav-item"><a href="prof-notice.jsp" class="nav-link"> <i class="fas fa-bullhorn"></i>
											<p>교수 및 교직원 공지</p>
									</a></li>
									<!-- 강의/성적 -->
									<li class="nav-item has-treeview"><a href="prof-lecture.jsp" class="nav-link"> <i class="nav-icon fas fa-book"></i>
											<p>강의관리</p>
									</a></li>
									<li class="nav-item has-treeview"><a href="prof-lecture.jsp" class="nav-link"> <i class="nav-icon fas fa-book"></i>
											<p>학과 강의 관리</p>
									</a></li>
									<li class="nav-item has-treeview"><a href="prof-lecture.jsp" class="nav-link"> <i class="nav-icon fas fa-book"></i>
											<p>학과 관리</p>
									</a></li>
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
								<li class="nav-item"><a class="nav-link active" href="#activity1" data-toggle="tab">학부생 관리</a></li>
								<li class="nav-item"><a class="nav-link" href="#activity2" data-toggle="tab">학과 강의 승인</a></li>
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
														<th>No</th>
															<th>학번</th>
															<th>이수학기</th>
															<th>이름</th>
															<th>분류</th>
															<th>신청서</th>
															<th>비고</th>
														</tr>
													</thead>
													<tbody style="text-align: center;">
														<tr>
														<td>1</td>
															<td>201203798</td>
															<td>6학기</td>
															<td>윤기훈</td>
															<td>일반휴학</td>
															<td class="project-actions text-center"><a class="btn btn-primary btn-sm" href="#" data-toggle="modal" data-target="#modal-student-paper"> <i class="fas fa-folder"> </i> 신청서 보기
																</a>
																</td>
															<td>
																<div class="custom-control custom-switch">
																	<input type="checkbox" class="custom-control-input" id="customSwitch1" style="width: 5%;"> <label class="custom-control-label" for="customSwitch1"></label>
																</div>
															</td>
														</tr>
													</tbody>
												</table>
												<div align="left">
													<label class="text-danger">※승인 철회는 관리자에게 문의해주시길 바랍니다.</label>
												</div>
												<div align="right">
													<button class="btn btn-outline-primary btn-flat" style="margin-top: -75px;">승인하기</button>
												</div>
											</div>
											<!-- /.col -->
										</div>
										<!-- /.row -->
									</div>
								</div>
								<div class="modal fade" id="modal-student-paper">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title">신청서 보기</h4>
																			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																		</div>
																		<div class="modal-body">휴학,졸업유예,자퇴 신청서 등 보기 아마 db 데이터 활용 혹은 pdf API활용</div>
																		<div class="modal-footer justify-content-between">
																			<button type="button" class="btn btn-default" data-dismiss="modal">나가기</button>
																			<button type="button" class="btn btn-primary">다운로드하기</button>
																		</div>
																	</div>
																	<!-- /.modal-content -->
																</div>
																<!-- /.modal-dialog -->
															</div>
								<!-- ------------------------------------------------------------------학과 강의 승인-------------------------------------------------------------------------------- -->
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
														<th>No</th>
															<th>교수번호</th>
															<th>강의학기</th>
															<th>강의명</th>
															<th>강의종류</th>
															<th>담당교수</th>
															<th>강의계획서</th>
															<th>비고</th>
														</tr>
													</thead>
													<tbody style="text-align: center;">
														<tr>
														<td>1</td>
															<td>2020110203</td>
															<td>2학기</td>
															<td>서핑타러가기</td>
															<td>교양</td>
															<td>이성호</td>
															<td class="project-actions text-center"><a class="btn btn-primary btn-sm" href="#" data-toggle="modal" data-target="#modal-class-detail"> <i class="fas fa-folder"> </i> 강의계획서 보기
																</a></td>
															<td>
																<div class="custom-control custom-switch">
																	<input type="checkbox" class="custom-control-input" id="customSwitch1" style="width: 5%;"> <label class="custom-control-label" for="customSwitch1"></label>
																</div>
															</td>
														</tr>
													</tbody>
												</table>
												<div align="left">
													<label class="text-danger">※승인 철회는 관리자에게 문의해주시길 바랍니다.</label>
												</div>
												<div align="right">
													<button class="btn btn-outline-primary btn-flat" style="margin-top: -75px;">승인하기</button>
												</div>
												<div class="modal fade" id="modal-class-detail">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title">강의계획서 보기</h4>
																			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																		</div>
																		<div class="modal-body">강의계획서 보기 아마 db 데이터 활용 혹은 pdf API활용</div>
																		<div class="modal-footer justify-content-between">
																			<button type="button" class="btn btn-default" data-dismiss="modal">나가기</button>
																			<button type="button" class="btn btn-primary">다운로드하기</button>
																		</div>
																	</div>
																	<!-- /.modal-content -->
																</div>
																<!-- /.modal-dialog -->
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
<!-- ----------------------------------- 씨발 알럿왜 안먹어 ㅡㅡ 개 좆같네 ----------------------------------------------------- -->
<script>
	$(function() {
		const Toast = Swal.mixin({
			toast : true,
			position : 'top-end',
			showConfirmButton : false,
			timer : 3000
		});

		$('#download')
				.click(
						function() {
							Toast
									.fire({
										icon : 'success',
										title : 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
									})
						});
	});
</script>



















<%@ include file="../common/footer.jsp"%>