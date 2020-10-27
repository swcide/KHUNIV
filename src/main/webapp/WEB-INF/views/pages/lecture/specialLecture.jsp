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
						<!-- 위쪽 강의동 버튼 및 강의안내 div -->
						<div class="card-header p-2">
							<!-- 강의동 버튼라인 div -->
							<ul class="nav nav-pills">

								<li class="nav-item"><a class="nav-link" href="#timeline"
									data-toggle="tab">특강신청</a></li>

							</ul>
						</div>
						<!-- /.card-header -->
						<div class="card-body">




							<div class="tab-pane" id="timeline">
								<div class="card">

									<!-- /.card-header -->
									<div class="card-body">
										<div class="tab-content">

											<div class="active tab-pane" id="activity">
												<!-- Post -->
												<div class="post">
													<!-- Table row -->
													<div class="row">
														<div class="col-12 table-responsive">
															<table class="table table-striped">
																<thead>
																	<tr>
																		<th>학기</th>
																		<th>과목명</th>
																		<th>이수</th>
																		<th>학점</th>
																		<th>담당교수</th>
																		<th>내 진도율</th>
																	</tr>
																</thead>
																<tbody>

																	<tr>
																		<td>현재 진행중인 특강이 없습니다.</td>
																		<td></td>
																		<td></td>
																		<td></td>
																		<td></td>
																		<td></td>
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



										</div>


										<!-- /.tab-pane -->
									</div>
									<!-- /.tab-content -->
								</div>
								<!-- The timeline -->
								<div class="timeline timeline-inverse">
									<!-- timeline time label -->
									<div class="time-label">
										<span class="bg-danger"> 2011 </span>
									</div>
									<!-- /.timeline-label -->

									<!-- timeline item -->
									<div>
										<i class="fas fa-user bg-info"></i>

										<div class="timeline-item">
											<span class="time"><i class="far fa-clock"></i> 5 mins
												ago</span>

											<h3 class="timeline-header border-0">
												<a href="#">특강</a> 서울사이버대학교는
												<미래렉처> 외에도 2011년부터 <특강>을 개최하고 있다. <특강>은 학계와
												지성사를 선도하는 세계적 석학을 초청해 인류사회의 더 큰 미래를 모색하는 성찰과 창조의 장이다. 학술적
												탁월성의 롤모델을 제시하는 <특강>은 <미래렉처>와 함께 경희 고유의 학술문화를
												조성하고 있다 
											</h3>
										</div>
									</div>
									<!-- END timeline item -->
									<!-- timeline item -->
									<div>
										<i class="fas fa-comments bg-warning"></i>

										<div class="timeline-item">


											<h3 class="timeline-header">
												<a href="#">이정식</a> 펜실베이니아대학교 명예교수 겸 경희대학교 석좌교수
											</h3>

											<div class="timeline-body">
												<img src="http://placehold.it/150x100" alt="..."> <img
													src="http://placehold.it/150x100" alt="..."> <img
													src="http://placehold.it/150x100" alt="..."> <img
													src="http://placehold.it/150x100" alt="...">
											</div>
											<div class="timeline-footer">
												<a href="./specialLectureDetail.jsp"
													class="btn btn-warning btn-flat btn-sm">영상보기</a>
											</div>
										</div>
									</div>
									<!-- END timeline item -->
									<!-- timeline time label -->
									<div class="time-label">
										<span class="bg-success">2012 </span>
									</div>
									<!-- /.timeline-label -->
									<!-- timeline item -->
									<div>
										<i class="fas fa-camera bg-purple"></i>

										<div class="timeline-item">


											<h3 class="timeline-header">
												<a href="#">슬라보예 지젝</a> 슬로베니아 류블랴나대학교 사회학연구소 선임연구원
											</h3>

											<div class="timeline-body">
												<img src="http://placehold.it/150x100" alt="..."> <img
													src="http://placehold.it/150x100" alt="..."> <img
													src="http://placehold.it/150x100" alt="..."> <img
													src="http://placehold.it/150x100" alt="...">
											</div>
											<div class="timeline-footer">
												<a href="./specialLectureDetail.jsp"
													class="btn btn-warning btn-flat btn-sm">영상보기</a>
											</div>
										</div>
									</div>
									<!-- END timeline item -->
									<div class="time-label">
										<span class="bg-success">2014 </span>
									</div>
									<!-- /.timeline-label -->
									<!-- timeline item -->
									<div>
										<i class="fas fa-camera bg-purple"></i>

										<div class="timeline-item">


											<h3 class="timeline-header">
												<a href="#">최재천</a> 국립생태원장 겸 이화여자대학교 석좌교수
											</h3>

											<div class="timeline-body">
												<img src="http://placehold.it/150x100" alt="..."> <img
													src="http://placehold.it/150x100" alt="..."> <img
													src="http://placehold.it/150x100" alt="..."> <img
													src="http://placehold.it/150x100" alt="...">
											</div>
											<div class="timeline-footer">
												<a href="./specialLectureDetail.jsp"
													class="btn btn-warning btn-flat btn-sm">영상보기</a>
											</div>
										</div>
									</div>
									<!-- END timeline item -->
									<div>
										<i class="far fa-clock bg-gray"></i>
									</div>
								</div>
							</div>
							<!-- /.tab-pane -->

							<!-- ---------insert end point--------------- -->

							<!-- /.tab-content -->
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

























































