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
						<a href="index3.html" class="brand-link"> <img src="/woosong/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8"> <span class="brand-text font-weight-light">교수 목록</span>
						</a>

						<!-- Sidebar -->
						<div class="sidebar">
							<!-- Sidebar user panel (optional) -->
							<div class="user-panel mt-3 pb-3 mb-3 d-flex">
								<div class="image">
									<img src="/woosong/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
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

					<div class="card card-primary card-outline card-tabs">

						<div class="card-header p-2">
							<label><i class="fas fa-bullhorn"></i><strong style="font-size: 20px;">교수 및 교직원 공지</strong></label>
						</div>

						<!-- /.card-header -->
						<div class="card-body">
							<div class="tab-content">

								<div class="active tab-pane" id="activity1">

									<!-- Post -->
									<div class="post">
										<form class="navbar-form">
											<button type="submit" class="btn btn-outline-primary btn-flat" style="float: right; margin-bottom: 5px;">검색</button>
											<input type="text" class="form-control rounded-0" style="width: 15%; float: right; margin-bottom: 5px;">
										</form>
										<!-- Table row -->
										<div class="row">
											<div class="col-12 table-responsive">
												<div class="card-body table-responsive p-0">
													<table class="table table-hover text-nowrap">
														<thead>
															<tr>
																<th>ID</th>
																<th>작성자</th>
																<th>게시일</th>
																<th>구분</th>
																<th>제목</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>183</td>
																<td>John Doe</td>
																<td>11-7-2014</td>
																<td><span class="tag tag-success">Approved</span></td>
																<td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
															</tr>
															<tr>
																<td>219</td>
																<td>Alexander Pierce</td>
																<td>11-7-2014</td>
																<td><span class="tag tag-warning">Pending</span></td>
																<td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
															</tr>
															<tr>
																<td>657</td>
																<td>Bob Doe</td>
																<td>11-7-2014</td>
																<td><span class="tag tag-primary">Approved</span></td>
																<td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
															</tr>
															<tr>
																<td>175</td>
																<td>Mike Doe</td>
																<td>11-7-2014</td>
																<td><span class="tag tag-danger">Denied</span></td>
																<td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
															</tr>
														</tbody>
													</table>
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
											<div class="card-body p-0">
												<table class="table">
													<thead>
														<tr>
															<th>첨부파일 명</th>
															<th>참고 강의 회차</th>
															<th></th>
														</tr>
													</thead>
													<tbody>

														<tr>
															<td>Functional-requirements.docx</td>
															<td>4강</td>
															<td class="text-right py-0 align-middle">
																<div class="btn-group btn-group-sm">
																	<a href="#" class="btn btn-info"><i class="fas fa-eye"></i></a> <a href="#" class="btn btn-danger"><i class="fas fa-trash"></i></a>
																</div>
															</td>
														<tr>
															<td>UAT.pdf</td>
															<td>12강</td>
															<td class="text-right py-0 align-middle">
																<div class="btn-group btn-group-sm">
																	<a href="#" class="btn btn-info"><i class="fas fa-eye"></i></a> <a href="#" class="btn btn-danger"><i class="fas fa-trash"></i></a>
																</div>
															</td>
														<tr>
															<td>Email-from-flatbal.mln</td>
															<td>5강</td>
															<td class="text-right py-0 align-middle">
																<div class="btn-group btn-group-sm">
																	<a href="#" class="btn btn-info"><i class="fas fa-eye"></i></a> <a href="#" class="btn btn-danger"><i class="fas fa-trash"></i></a>
																</div>
															</td>
														<tr>
															<td>Logo.png</td>
															<td>10강</td>
															<td class="text-right py-0 align-middle">
																<div class="btn-group btn-group-sm">
																	<a href="#" class="btn btn-info"><i class="fas fa-eye"></i></a> <a href="#" class="btn btn-danger"><i class="fas fa-trash"></i></a>
																</div>
															</td>
														<tr>
															<td>Contract-10_12_2014.docx</td>
															<td>2강</td>
															<td class="text-right py-0 align-middle">
																<div class="btn-group btn-group-sm">
																	<a href="#" class="btn btn-info"><i class="fas fa-eye"></i></a> <a href="#" class="btn btn-danger"><i class="fas fa-trash"></i></a>
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
								<!-- ===========================================학생관리============================================== -->
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

												<div class="card-body p-0">
													<table class="table table-striped projects">
														<thead>
															<tr>
																<th style="width: 1%">No</th>
																<th style="width: 20%">학과/학번</th>
																<th style="width: 30%">학생명</th>
																<th>수업진행률</th>
																<th style="width: 8%" class="text-center">출결상태</th>
																<th style="width: 20%; text-align: center;">비고</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>1</td>
																<td><a>윤기훈</a> <br /> <small>201203798</small></td>
																<td>
																	<ul class="list-inline">
																		<li class="list-inline-item"><img alt="Avatar" class="table-avatar" src="../dist/img/avatar04.png"></li>
																	</ul>
																</td>
																<td class="project_progress">
																	<div class="progress progress-sm">
																		<div class="progress-bar bg-green" role="progressbar" aria-volumenow="57" aria-volumemin="0" aria-volumemax="100" style="width: 57%"></div>
																	</div> <small> 57% Complete </small>
																</td>
																<td class="project-state"><span class="badge badge-success">양호</span></td>
																<td class="project-actions text-right"><a class="btn btn-primary btn-sm" href="#"> <i class="fas fa-folder"> </i> 학생정보 보기
																</a> <a class="btn btn-danger btn-sm" href="#"> <i class="fas fa-trash"> </i> 제명??
																</a></td>
															</tr>
															<tr>
																<td>2</td>
																<td><a>김진태</a> <br /> <small>201000223</small></td>
																<td>
																	<ul class="list-inline">
																		<li class="list-inline-item"><img alt="Avatar" class="table-avatar" src="../dist/img/avatar04.png"></li>
																	</ul>
																</td>
																<td class="project_progress">
																	<div class="progress progress-sm">
																		<div class="progress-bar bg-green" role="progressbar" aria-volumenow="47" aria-volumemin="0" aria-volumemax="100" style="width: 47%"></div>
																	</div> <small> 47% Complete </small>
																</td>
																<td class="project-state"><span class="badge badge-success">양호</span></td>
																<td class="project-actions text-right"><a class="btn btn-primary btn-sm" href="#"> <i class="fas fa-folder"> </i> 학생정보 보기
																</a> <a class="btn btn-danger btn-sm" href="#"> <i class="fas fa-trash"> </i> 제명??
																</a></td>
															</tr>
															<tr>
																<td>2</td>
																<td><a>조원영</a> <br /> <small>200901533</small></td>
																<td>
																	<ul class="list-inline">
																		<li class="list-inline-item"><img alt="Avatar" class="table-avatar" src="../dist/img/avatar04.png"></li>
																	</ul>
																</td>
																<td class="project_progress">
																	<div class="progress progress-sm">
																		<div class="progress-bar bg-green" role="progressbar" aria-volumenow="47" aria-volumemin="0" aria-volumemax="100" style="width: 70%"></div>
																	</div> <small> 70% Complete </small>
																</td>
																<td class="project-state"><span class="badge badge-success">양호</span></td>
																<td class="project-actions text-right"><a class="btn btn-primary btn-sm" href="#"> <i class="fas fa-folder"> </i> 학생정보 보기
																</a> <a class="btn btn-danger btn-sm" href="#"> <i class="fas fa-trash"> </i> 제명??
																</a></td>
															</tr>
															<tr>
																<td>2</td>
																<td><a>오세범</a> <br /> <small>20101002</small></td>
																<td>
																	<ul class="list-inline">
																		<li class="list-inline-item"><img alt="Avatar" class="table-avatar" src="../dist/img/avatar04.png"></li>
																	</ul>
																</td>
																<td class="project_progress">
																	<div class="progress progress-sm">
																		<div class="progress-bar bg-green" role="progressbar" aria-volumenow="47" aria-volumemin="0" aria-volumemax="100" style="width: 65%"></div>
																	</div> <small> 65% Complete </small>
																</td>
																<td class="project-state"><span class="badge badge-success">양호</span></td>
																<td class="project-actions text-right"><a class="btn btn-primary btn-sm" href="#"> <i class="fas fa-folder"> </i> 학생정보 보기
																</a> <a class="btn btn-danger btn-sm" href="#"> <i class="fas fa-trash"> </i> 제명??
																</a></td>
															</tr>
															<tr>
																<td>2</td>
																<td><a>송휘경</a> <br /> <small>20130502</small></td>
																<td>
																	<ul class="list-inline">
																		<li class="list-inline-item"><img alt="Avatar" class="table-avatar" src="../dist/img/avatar2.png"></li>
																	</ul>
																</td>
																<td class="project_progress">
																	<div class="progress progress-sm">
																		<div class="progress-bar bg-green" role="progressbar" aria-volumenow="47" aria-volumemin="0" aria-volumemax="100" style="width: 95%"></div>
																	</div> <small> 95% Complete </small>
																</td>
																<td class="project-state"><span class="badge badge-success">양호</span></td>
																<td class="project-actions text-right"><a class="btn btn-primary btn-sm" href="#"> <i class="fas fa-folder"> </i> 학생정보 보기
																</a> <a class="btn btn-danger btn-sm" href="#"> <i class="fas fa-trash"> </i> 제명??
																</a></td>
															</tr>

														</tbody>
													</table>
												</div>
											</div>
											<!-- /.col -->
										</div>
										<!-- /.row -->
									</div>
								</div>
								<div class="tab-pane" id="activity4">
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
															<td>ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</td>
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


<%@ include file="../common/footer.jsp"%>