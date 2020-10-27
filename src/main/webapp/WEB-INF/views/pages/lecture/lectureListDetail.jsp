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

							<!-- 학기 과목명 테이블 div -->
							<div class="active tab-pane" id="activity">
								<!-- Post -->
								<div class="post">
									<div class="user-block">

										<span class="username" style="margin-left: 0px;"> <a
											href="#">강의안내</a> <a href="#" class="float-right btn-tool"><i
												class="fas fa-times"></i></a>
										</span> <span class="description" style="margin-left: 0px;">2020-09-21
											7:30 PM today</span>
									</div>
									<!-- /.user-block -->

									<p>수강신청시 강의안내를 확인하시고 신청하세요</p>

									<div style="margin-bottom: 30px;">
										<p>
											<span class="float-right"> <a href="#"
												class="link-black text-sm"
												style="text-decoration: underline;">강의내용 더보기</a> &nbsp;
											</span>
										</p>
									</div>
									<div class="tab-pane" id="activity2">
										<!-- Post -->
										<div class="post">
											<!-- Table row -->
											<div class="row">
												<div class="card-body p-0">
													<table class="table">
														<thead>
															<tr>
																<th>강의 명</th>
																<th>강의 회차</th>
																<th></th>
															</tr>
														</thead>
														<tbody>

															<tr>
																<td>Call of Duty</td>
																<td>1주차</td>
																<td class="text-right py-0 align-middle">
																	<div class="btn-group btn-group-sm">
																		<button type="submit" class="btn btn-primary">강의보기</button>
																	</div>
																</td>
														<tbody>

															<tr>
																<td>Call of Duty</td>
																<td>2주차</td>
																<td class="text-right py-0 align-middle">
																	<div class="btn-group btn-group-sm">
																		<button type="submit" class="btn btn-primary">강의보기</button>
																	</div>
																</td>
															<tr>
																<td>Call of Duty</td>
																<td>3주차</td>
																<td class="text-right py-0 align-middle">
																	<div class="btn-group btn-group-sm">
																		<button type="submit" class="btn btn-primary">강의보기</button>
																	</div>
																</td>
															<tr>
																<td>Call of Duty</td>
																<td>4주차</td>
																<td class="text-right py-0 align-middle">
																	<div class="btn-group btn-group-sm">
																		<button type="submit" class="btn btn-primary">강의보기</button>
																	</div>
																</td>
															<tr>
																<td>Call of Duty</td>
																<td>5주차</td>
																<td class="text-right py-0 align-middle">
																	<div class="btn-group btn-group-sm">
																		<button type="submit" class="btn btn-primary">강의보기</button>
																	</div>
																</td>
															<tr>
																<td>Call of Duty</td>
																<td>6주차</td>
																<td class="text-right py-0 align-middle">
																	<div class="btn-group btn-group-sm">
																		<button type="submit" class="btn btn-primary">강의보기</button>
																	</div>
																</td>
															<tr>
																<td>Call of Duty</td>
																<td>7주차</td>
																<td class="text-right py-0 align-middle">
																	<div class="btn-group btn-group-sm">
																		<button type="submit" class="btn btn-primary">강의보기</button>
																	</div>
																</td>
															<tr>
																<td>Call of Duty</td>
																<td>8주차</td>
																<td class="text-right py-0 align-middle">
																	<div class="btn-group btn-group-sm">
																		<button type="submit" class="btn btn-primary">강의보기</button>
																	</div>
																</td>
															<tr>
																<td>Call of Duty</td>
																<td>9주차</td>
																<td class="text-right py-0 align-middle">
																	<div class="btn-group btn-group-sm">
																		<button type="submit" class="btn btn-primary">강의보기</button>
																	</div>
																</td>
															<tr>
																<td>Call of Duty</td>
																<td>10주차</td>
																<td class="text-right py-0 align-middle">
																	<div class="btn-group btn-group-sm">
																		<button type="submit" class="btn btn-primary">강의보기</button>
																	</div>
																</td>
															<tr>
																<td>Call of Duty</td>
																<td>11주차</td>
																<td class="text-right py-0 align-middle">
																	<div class="btn-group btn-group-sm">
																		<button type="submit" class="btn btn-primary">강의보기</button>
																	</div>
																</td>
															<tr>
																<td>Call of Duty</td>
																<td>12주차</td>
																<td class="text-right py-0 align-middle">
																	<div class="btn-group btn-group-sm">
																		<button type="submit" class="btn btn-primary">강의보기</button>
																	</div>
																</td>
															<tr>
																<td>Call of Duty</td>
																<td>13주차</td>
																<td class="text-right py-0 align-middle">
																	<div class="btn-group btn-group-sm">
																		<button type="submit" class="btn btn-primary">강의보기</button>
																	</div>
																</td>
															<tr>
																<td>Call of Duty</td>
																<td>14주차</td>
																<td class="text-right py-0 align-middle">
																	<div class="btn-group btn-group-sm">
																		<button type="submit" class="btn btn-primary">강의보기</button>
																	</div>
																</td>
														</tbody>
													</table>
												</div>
												<!-- /.col -->
											</div>

											<!-- /.row -->
										</div>
									</div>
								</div>
								<!-- /.post -->




							</div>
							<!-- /.tab-pane -->




							<!-- exam strats -->


							<!-- ---------inset end point--------------- -->
							>
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























































