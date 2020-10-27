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

								<li class="nav-item"><a class="nav-link active" href="#activity1" data-toggle="tab">강의 동영상 관리</a></li>
								<li class="nav-item"><a class="nav-link" href="#activity2" data-toggle="tab">강의 참고자료 관리</a></li>
								<li class="nav-item"><a class="nav-link" href="#activity3" data-toggle="tab">수강 학생 관리</a></li>
								<li class="nav-item"><a class="nav-link" href="#activity4" data-toggle="tab">과제/시험 관리</a></li>

							</ul>
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
											<div class="col-4 table-responsive">
												<div>
													<div class="timeline-item">
														<span class="time"><i class="fas fa-clock"></i> 5 days ago</span>

														<h3 class="timeline-header">
															<a href="#">이성호</a>고양이도 입양해볼까 ?
														</h3>

														<div class="timeline-body">
															<div class="embed-responsive embed-responsive-16by9">
																<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/tMWkeBIohBs" frameborder="0" allowfullscreen=""></iframe>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="col-4 table-responsive">
												<div>
													<div class="timeline-item">
														<span class="time"><i class="fas fa-clock"></i> 5 days ago</span>

														<h3 class="timeline-header">
															<a href="#">이성호</a> 강인한 남자가 되는 방법
														</h3>

														<div class="timeline-body">
															<div class="embed-responsive embed-responsive-16by9">
																<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/9uDZfFTnwTg" frameborder="0" allowfullscreen=""></iframe>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="col-4 table-responsive">
												<div>
													<div class="timeline-item">
														<span class="time"><i class="fas fa-clock"></i> 5 days ago</span>

														<h3 class="timeline-header">
															<a href="#">이성호</a>인생 실전이지 XXX아.
														</h3>

														<div class="timeline-body">
															<div class="embed-responsive embed-responsive-16by9">
																<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/FK7LceTLVUo" frameborder="0" allowfullscreen=""></iframe>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- /.col -->
										</div>

										<!-- /.row -->
									</div>
									<div align="right">
										<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-default">강의 올리기</button>
									</div>
									<div class="modal fade" id="modal-default">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h4 class="modal-title">강의 업로드</h4>
													<button type="button" class="close" data-dismiss="modal" aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="modal-body">
													<div class="custom-file">
														<input type="file" class="custom-file-input" id="customFile"> <label class="custom-file-label" for="customFile">강의 올리기</label>
													</div>
												</div>
												<div class="modal-footer justify-content-between">
													<button type="button" class="btn btn-default" data-dismiss="modal">나가기</button>
													<button type="button" class="btn btn-primary">업로드하기</button>
												</div>
											</div>
											<!-- /.modal-content -->
										</div>
										<!-- /.modal-dialog -->
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
																	<a href="#" class="btn btn-info" data-toggle="modal" data-target="#modal-closeUp"><i class="fas fa-eye"></i></a> <a href="#" class="btn btn-danger"><i class="fas fa-trash"></i></a>
																</div>
															</td>
															<div class="modal fade" id="modal-closeUp">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title">강의 자료 보기</h4>
																			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																		</div>
																		<div class="modal-body">자료 내용 올리기 아마 db이미지 혹은 pdf API활용</div>
																		<div class="modal-footer justify-content-between">
																			<button type="button" class="btn btn-default" data-dismiss="modal">나가기</button>
																			<button type="button" class="btn btn-primary">다운로드 하기</button>
																		</div>
																	</div>
																	<!-- /.modal-content -->
																</div>
																<!-- /.modal-dialog -->
															</div>
														<tr>
															<td>UAT.pdf</td>
															<td>12강</td>
															<td class="text-right py-0 align-middle">
																<div class="btn-group btn-group-sm">
																	<a href="#" class="btn btn-info" data-toggle="modal" data-target="#modal-closeUp2"><i class="fas fa-eye"></i></a> <a href="#" class="btn btn-danger"><i class="fas fa-trash"></i></a>
																</div>
															</td>
															<div class="modal fade" id="modal-closeUp2">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title">강의 자료 보기</h4>
																			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																		</div>
																		<div class="modal-body">자료 내용 올리기 아마 db이미지 혹은 pdf API활용</div>
																		<div class="modal-footer justify-content-between">
																			<button type="button" class="btn btn-default" data-dismiss="modal">나가기</button>
																			<button type="button" class="btn btn-primary">다운로드 하기</button>
																		</div>
																	</div>
																	<!-- /.modal-content -->
																</div>
																<!-- /.modal-dialog -->
															</div>
														<tr>
															<td>Email-from-flatbal.mln</td>
															<td>5강</td>
															<td class="text-right py-0 align-middle">
																<div class="btn-group btn-group-sm">
																	<a href="#" class="btn btn-info" data-toggle="modal" data-target="#modal-closeUp3"><i class="fas fa-eye"></i></a> <a href="#" class="btn btn-danger"><i class="fas fa-trash"></i></a>
																</div>
															</td>
															<div class="modal fade" id="modal-closeUp3">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title">강의 자료 보기</h4>
																			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																		</div>
																		<div class="modal-body">자료 내용 올리기 아마 db이미지 혹은 pdf API활용</div>
																		<div class="modal-footer justify-content-between">
																			<button type="button" class="btn btn-default" data-dismiss="modal">나가기</button>
																			<button type="button" class="btn btn-primary">다운로드 하기</button>
																		</div>
																	</div>
																	<!-- /.modal-content -->
																</div>
																<!-- /.modal-dialog -->
															</div>
														<tr>
															<td>Logo.png</td>
															<td>10강</td>
															<td class="text-right py-0 align-middle">
																<div class="btn-group btn-group-sm">
																	<a href="#" class="btn btn-info" data-toggle="modal" data-target="#modal-closeUp4"><i class="fas fa-eye"></i></a> <a href="#" class="btn btn-danger"><i class="fas fa-trash"></i></a>
																</div>
															</td>
															<div class="modal fade" id="modal-closeUp4">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title">강의 자료 보기</h4>
																			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																		</div>
																		<div class="modal-body">자료 내용 올리기 아마 db이미지 혹은 pdf API활용</div>
																		<div class="modal-footer justify-content-between">
																			<button type="button" class="btn btn-default" data-dismiss="modal">나가기</button>
																			<button type="button" class="btn btn-primary">다운로드 하기</button>
																		</div>
																	</div>
																	<!-- /.modal-content -->
																</div>
																<!-- /.modal-dialog -->
															</div>
														<tr>
															<td>Contract-10_12_2014.docx</td>
															<td>2강</td>
															<td class="text-right py-0 align-middle">
																<div class="btn-group btn-group-sm">
																	<a href="#" class="btn btn-info" data-toggle="modal" data-target="#modal-closeUp5"><i class="fas fa-eye"></i></a> <a href="#" class="btn btn-danger delete"><i class="fas fa-trash"></i></a>
																</div>
															</td>
															<div class="modal fade" id="modal-closeUp5">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title">강의 자료 보기</h4>
																			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																		</div>
																		<div class="modal-body">자료 내용 올리기 아마 db이미지 혹은 pdf API활용</div>
																		<div class="modal-footer justify-content-between">
																			<button type="button" class="btn btn-default" data-dismiss="modal">나가기</button>
																			<button type="button" class="btn btn-primary">다운로드 하기</button>
																		</div>
																	</div>
																	<!-- /.modal-content -->
																</div>
																<!-- /.modal-dialog -->
															</div>
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
																<td class="project-actions text-center"><a class="btn btn-primary btn-sm" href="#" data-toggle="modal" data-target="#modal-studentInfo"> <i class="fas fa-folder"> </i> 학생정보 보기
																</a></td>
															</tr>
															<div class="modal fade" id="modal-studentInfo">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title">강의 자료 보기</h4>
																			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																		</div>
																		<div class="modal-body">학생정보 올리기 아마 db 데이터 활용 혹은 pdf API활용</div>
																		<div class="modal-footer justify-content-between">
																			<button type="button" class="btn btn-default" data-dismiss="modal">나가기</button>
																			<button type="button" class="btn btn-primary">메일 보내기</button>
																		</div>
																	</div>
																	<!-- /.modal-content -->
																</div>
																<!-- /.modal-dialog -->
															</div>

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
																<td class="project-actions text-center"><a class="btn btn-primary btn-sm" href="#" data-toggle="modal" data-target="#modal-studentInfo2"> <i class="fas fa-folder"> </i> 학생정보 보기
																</a></td>
															</tr>
															<div class="modal fade" id="modal-studentInfo2">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title">강의 자료 보기</h4>
																			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																		</div>
																		<div class="modal-body">학생정보 올리기 아마 db 데이터 활용 혹은 pdf API활용</div>
																		<div class="modal-footer justify-content-between">
																			<button type="button" class="btn btn-default" data-dismiss="modal">나가기</button>
																			<button type="button" class="btn btn-primary">메일 보내기</button>
																		</div>
																	</div>
																	<!-- /.modal-content -->
																</div>
																<!-- /.modal-dialog -->
															</div>
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
																<td class="project-actions text-center"><a class="btn btn-primary btn-sm" href="#" data-toggle="modal" data-target="#modal-studentInfo3"> <i class="fas fa-folder"> </i> 학생정보 보기
																</a></td>
															</tr>
															<div class="modal fade" id="modal-studentInfo3">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title">강의 자료 보기</h4>
																			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																		</div>
																		<div class="modal-body">학생정보 올리기 아마 db 데이터 활용 혹은 pdf API활용</div>
																		<div class="modal-footer justify-content-between">
																			<button type="button" class="btn btn-default" data-dismiss="modal">나가기</button>
																			<button type="button" class="btn btn-primary">메일 보내기</button>
																		</div>
																	</div>
																	<!-- /.modal-content -->
																</div>
																<!-- /.modal-dialog -->
															</div>
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
																<td class="project-actions text-center"><a class="btn btn-primary btn-sm" href="#" data-toggle="modal" data-target="#modal-studentInfo4"> <i class="fas fa-folder"> </i> 학생정보 보기
																</a></td>
															</tr>
															<div class="modal fade" id="modal-studentInfo4">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title">강의 자료 보기</h4>
																			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																		</div>
																		<div class="modal-body">학생정보 올리기 아마 db 데이터 활용 혹은 pdf API활용</div>
																		<div class="modal-footer justify-content-between">
																			<button type="button" class="btn btn-default" data-dismiss="modal">나가기</button>
																			<button type="button" class="btn btn-primary">메일 보내기</button>
																		</div>
																	</div>
																	<!-- /.modal-content -->
																</div>
																<!-- /.modal-dialog -->
															</div>
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
																<td class="project-actions text-center"><a class="btn btn-primary btn-sm" href="#" data-toggle="modal" data-target="#modal-studentInfo5"> <i class="fas fa-folder"> </i> 학생정보 보기
																</a></td>
															</tr>
															<div class="modal fade" id="modal-studentInfo5">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title">강의 자료 보기</h4>
																			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																		</div>
																		<div class="modal-body">학생정보 올리기 아마 db 데이터 활용 혹은 pdf API활용</div>
																		<div class="modal-footer justify-content-between">
																			<button type="button" class="btn btn-default" data-dismiss="modal">나가기</button>
																			<button type="button" class="btn btn-primary">메일 보내기</button>
																		</div>
																	</div>
																	<!-- /.modal-content -->
																</div>
																<!-- /.modal-dialog -->
															</div>

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
															<th>선택</th>
															<th>학과</th>
															<th>학번</th>
															<th>이름</th>
															<th>과제명</th>
															<th>제출여부</th>
														</tr>
													</thead>
													<tbody style="text-align: center;">
														<tr>
															<td>
																<div class="custom-control custom-switch">
																	<input type="checkbox" class="custom-control-input" id="customSwitch3" style="width: 5%;"> <label class="custom-control-label" for="customSwitch3"></label>
																</div>
															</td>
															<td>ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</td>
															<td>11232323</td>
															<td>admin</td>
															<td>aaaaaaaaaaaaaaaaaaa</td>
															<td>여부 모양 넣기</td>
														</tr>
													</tbody>
												</table>
												<div align="right">
													<button id="download" class="btn btn-outline-primary btn-flat" style="margin-top: -12px;">다운로드하기</button>
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
      toast: true,
      position: 'top-end',
      showConfirmButton: false,
      timer: 3000
    });

    $('#download').click(function() {
      Toast.fire({
        icon: 'success',
        title: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
      })
    });
  });
 </script>



















<%@ include file="../common/footer.jsp"%>