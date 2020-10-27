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


				<div class="col-md-9">
					<!-- 오른쪽 전체 div -->
					<div class="card">


						<!-- /.card-header -->
						<div class="card-body">




							<!-- /.tab-pane -->
							<!-- exam strats -->
							<div class="tab-pane" id="exam">
								<!-- Post -->
								<div class="post">
									<!-- Table row -->
									<div class="row">
										<div class="col-12 table-responsive">
											<table class="table table-striped">
												<thead style="text-align: center;">
													<tr>
														<th>시험 일자</th>
														<th>과목 명</th>
														<th>시험 점수</th>
														<th>시험 결과</th>
														<th>시험 보러가기</th>
													</tr>
												</thead>
												<tbody style="text-align: center;">
													<tr>
														<td>20/09/24</td>
														<td>JAVA</td>
														<td>-</td>
														<td>미응시</td>
														<td><button type="button" class="btn btn-primary"
																data-toggle="modal" data-target="#modal-default2">시험
																보러가기</button> <!--  등록/변경 모달 -->
															<div class="modal fade" id="modal-default2">
																<div class="modal-dialog modal-lg">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title">JAVA</h4>
																			<button type="button" class="close"
																				data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																		</div>
																		<div class="modal-body">
																			<table class="table table-striped">
																				<thead style="text-align: center;">
																					<tr>
																						<th>1. 자바의 정의를 서술하시오.</th>
																					</tr>
																				</thead>
																				<tbody>
																					<tr>
																						<td><input type="text" class="form-control"
																							placeholder="ex) 큰일났네 ㅎ.."></td>
																					</tr>
																				</tbody>
																			</table>
																			<!-- checkbox -->
																			<form role="form">
																				<div class="custom-control custom-checkbox"
																					align="center">
																					<input class="custom-control-input" type="checkbox"
																						id="customCheckbox2" value="option1"> <label
																						for="customCheckbox2" class="custom-control-label">시험
																						종료 후 수정은 <strong style="color: #007bff;">불가</strong>함을
																						인지하였습니다.
																					</label>
																				</div>
																			</form>
																		</div>
																		<div class="modal-footer justify-content-between">
																			<button type="button" class="btn btn-default"
																				data-dismiss="modal">나가기</button>
																			<button type="button" class="btn btn-primary">제출하기</button>
																		</div>
																	</div>
																	<!-- /.modal-content -->
																</div>
																<!-- /.modal-dialog -->
															</div></td>
													</tr>
													<tr>
														<td>20/09/24</td>
														<td>SQL</td>
														<td>65</td>
														<td>합격</td>
														<td>
															<button type="button" class="btn btn-primary disabled"
																data-toggle="modal" data-target="#modal-default3">시험
																보러가기</button> <!--  등록/변경 모달 -->
															<div class="modal fade" id="modal-default3">
																<div class="modal-dialog modal-lg">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title">SQL</h4>
																			<button type="button" class="close"
																				data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																		</div>
																		<div class="modal-body">
																			<table class="table table-striped">
																				<thead style="text-align: center;">
																					<tr>
																						<th>1. SQL의 정의를 서술하시오.</th>
																					</tr>
																				</thead>
																				<tbody>
																					<tr>
																						<td><input type="text" class="form-control"
																							placeholder="ex) 큰일났네 ㅎ.."></td>
																					</tr>
																				</tbody>
																			</table>
																			<!-- checkbox -->
																			<form role="form">
																				<div class="custom-control custom-checkbox"
																					align="center">
																					<input class="custom-control-input" type="checkbox"
																						id="customCheckbox3" value="option1"> <label
																						for="customCheckbox3" class="custom-control-label">시험
																						종료 후 수정은 <strong style="color: #007bff;">불가</strong>함을
																						인지하였습니다.
																					</label>
																				</div>
																			</form>
																		</div>
																		<div class="modal-footer justify-content-between">
																			<button type="button" class="btn btn-default"
																				data-dismiss="modal">나가기</button>
																			<button type="button" class="btn btn-primary">제출하기</button>
																		</div>
																	</div>
																	<!-- /.modal-content -->
																</div>
																<!-- /.modal-dialog -->
															</div>
														</td>
													</tr>
													<tr>
														<td>20/09/24</td>
														<td>MyBatis</td>
														<td>10</td>
														<td>불합격</td>
														<td>
															<button type="button" class="btn btn-primary disabled"
																data-toggle="modal" data-target="#modal-default4">시험
																보러가기</button> <!--  등록/변경 모달 -->
															<div class="modal fade" id="modal-default4">
																<div class="modal-dialog modal-lg">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title">MyBatis</h4>
																			<button type="button" class="close"
																				data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																		</div>
																		<div class="modal-body">
																			<table class="table table-striped">
																				<thead style="text-align: center;">
																					<tr>
																						<th>1. 마이바티스의 정의를 서술하시오.</th>
																					</tr>
																				</thead>
																				<tbody>
																					<tr>
																						<td><input type="text" class="form-control"
																							placeholder="ex) 큰일났네 ㅎ.."></td>
																					</tr>
																				</tbody>
																			</table>
																			<!-- checkbox -->
																			<form role="form">
																				<div class="custom-control custom-checkbox"
																					align="center">
																					<input class="custom-control-input" type="checkbox"
																						id="customCheckbox4" value="option1"> <label
																						for="customCheckbox4" class="custom-control-label">시험
																						종료 후 수정은 <strong style="color: #007bff;">불가</strong>함을
																						인지하였습니다.
																					</label>
																				</div>
																			</form>
																		</div>
																		<div class="modal-footer justify-content-between">
																			<button type="button" class="btn btn-default"
																				data-dismiss="modal">나가기</button>
																			<button type="button" class="btn btn-primary">제출하기</button>
																		</div>
																	</div>
																	<!-- /.modal-content -->
																</div>
																<!-- /.modal-dialog -->
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

							<!-- ---------inset end point--------------- -->

						</div>
						<!-- /.card-body -->
					</div>

					<!-- /.card-body -->
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





















































