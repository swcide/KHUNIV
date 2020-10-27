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

								<li class="nav-item"><a class="nav-link active" href="#activity1" data-toggle="tab">학과 강의 현황</a></li>
								<li class="nav-item"><a class="nav-link" href="#activity2" data-toggle="tab">학과 전공 관리</a></li>
								<li class="nav-item"><a class="nav-link" href="#activity3" data-toggle="tab">학과 교양 관리</a></li>

							</ul>
						</div>
						<!-- /.card-header -->
						<div class="card-body">
							<div class="tab-content">
								<div class="active tab-pane" id="activity1">
									<!-- Post -->
									<div class="post">
										<!-- 학과 강의 현황  -------------------------------------------------------------------------------------------------------->
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
																<th style="width: 30%">강의명</th>
																<th style="width: 10%">분류</th>
																<th>강의 인원</th>
																<th style="width: 20%" class="text-center">담당 교수</th>
																<th style="width: 20%; text-align: center;">비고</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>1</td>
																<td><a>내일 서핑가지롱 크크크크크크</a> <br /> <small>강의번호넣기</small></td>
																<td>
																	<ul class="list-inline">
																		<li class="list-inline-item">전공</li>
																	</ul>
																</td>
																<td class="project_progress">
																	<div class="progress progress-sm">
																		<div class="progress-bar bg-green" role="progressbar" aria-volumenow="57" aria-volumemin="0" aria-volumemax="100" style="width: 57%"></div>
																	</div> <small> 57%</small>
																</td>
																<td class="project-state">송휘와와</td>
																<td class="project-actions text-center"><a class="btn btn-primary btn-sm" href="#" data-toggle="modal" data-target="#modal-class-detail"> <i class="fas fa-folder"> </i> 강의계획서 보기
																</a></td>
															</tr>
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
															<tr>
																<td>1</td>
																<td><a>배고플땐 ?</a> <br /> <small>강의번호넣기</small></td>
																<td>
																	<ul class="list-inline">
																		<li class="list-inline-item">교양</li>
																	</ul>
																</td>
																<td class="project_progress">
																	<div class="progress progress-sm">
																		<div class="progress-bar bg-green" role="progressbar" aria-volumenow="57" aria-volumemin="0" aria-volumemax="100" style="width: 77%"></div>
																	</div> <small> 77%</small>
																</td>
																<td class="project-state">이성호</td>
																<td class="project-actions text-center"><a class="btn btn-primary btn-sm" href="#" data-toggle="modal" data-target="#modal-class-detail2"> <i class="fas fa-folder"> </i> 강의계획서 보기
																</a></td>
															</tr>
															<div class="modal fade" id="modal-class-detail2">
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
															<tr>
																<td>1</td>
																<td><a>불법주차 안걸리겠지?ㅋㅋㅋㅋ</a> <br /> <small>강의번호넣기</small></td>
																<td>
																	<ul class="list-inline">
																		<li class="list-inline-item">교양</li>
																	</ul>
																</td>
																<td class="project_progress">
																	<div class="progress progress-sm">
																		<div class="progress-bar bg-green" role="progressbar" aria-volumenow="57" aria-volumemin="0" aria-volumemax="100" style="width: 57%"></div>
																	</div> <small> 57%</small>
																</td>
																<td class="project-state">조원영</td>
																<td class="project-actions text-center"><a class="btn btn-primary btn-sm" href="#" data-toggle="modal" data-target="#modal-class-detail3"> <i class="fas fa-folder"> </i> 강의계획서 보기
																</a></td>
															</tr>
															<div class="modal fade" id="modal-class-detail3">
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
								<!-- 학과 전공 관리  -------------------------------------------------------------------------------------------------------->
								<div class="tab-pane" id="activity2">
									<!-- Post -->
									<div class="post">
										<div class="row">
											<div class="col-12 table-responsive">
												<form class="navbar-form">
													<button type="submit" class="btn btn-outline-primary btn-flat" style="float: right; margin-bottom: 5px;">검색</button>
													<input type="text" class="form-control rounded-0" style="width: 15%; float: right; margin-bottom: 5px;">
												</form>

												<div class="card-body p-0">
													<table class="table table-striped projects" style="text-align: center">
														<thead>
															<tr>
																<th style="width: 1%">No</th>
																<th style="width: 30%">강의명</th>
																<th>강의 인원</th>
																<th style="width: 20%" class="text-center">담당 교수</th>
																<th style="width: 20%; text-align: center;">비고</th>
																<th style="width: 10%">메일</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>1</td>
																<td><a>내일 서핑가지롱 크크크크크크</a> <br /> <small>강의번호넣기</small></td>
																<td class="project_progress">
																	<div class="progress progress-sm">
																		<div class="progress-bar bg-green" role="progressbar" aria-volumenow="57" aria-volumemin="0" aria-volumemax="100" style="width: 57%"></div>
																	</div> <small> 57%</small>
																</td>
																<td class="project-state">송휘와와</td>
																<td class="project-actions text-center"><a class="btn btn-primary btn-sm" href="#" data-toggle="modal" data-target="#modal-class-detail"> <i class="fas fa-folder" align="center"> </i> 강의계획서 보기
																</a></td>
																<td class="project-actions text-center"><a class="btn btn-primary btn-sm" href="#" data-toggle="modal" data-target="#modal-prof-Email"> <i class="fas fa-paper-plane" href="#">shwg@wsscu.ac.kr </i>
																</a></td>
															</tr>
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
															<div class="modal fade" id="modal-prof-Email">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title">담당교수 메일 보내기</h4>
																			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																		</div>
																		<div class="modal-body">

																			<div class="card-body pad">
																				<div class="mb-3">
																					<textarea class="textarea" placeholder="Place some text here" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
																				</div>
																				<p class="text-sm mb-0">
																					관리자 : <a href="https://github.com/summernote/summernote">메일 전송이 되지 않을 시 클릭해주세요^^. </a>
																				</p>
																			</div>

																		</div>
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
<!--  학과 교양 관리 ----------------------------------------------------------------------------------------------------------- -->
								<div class="tab-pane" id="activity3">
									<!-- Post -->
									<div class="post">
										<div class="row">
											<div class="col-12 table-responsive">
												<form class="navbar-form">
													<button type="submit" class="btn btn-outline-primary btn-flat" style="float: right; margin-bottom: 5px;">검색</button>
													<input type="text" class="form-control rounded-0" style="width: 15%; float: right; margin-bottom: 5px;">
												</form>

												<div class="card-body p-0">
													<table class="table table-striped projects" style="text-align: center">
														<thead>
															<tr>
																<th style="width: 1%">No</th>
																<th style="width: 30%">강의명</th>
																<th>강의 인원</th>
																<th style="width: 20%" class="text-center">담당 교수</th>
																<th style="width: 20%; text-align: center;">비고</th>
																<th style="width: 10%">메일</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>1</td>
																<td><a>내 불법주차 안걸리겠찌 !!!!??</a> <br /> <small>강의번호넣기</small></td>
																<td class="project_progress">
																	<div class="progress progress-sm">
																		<div class="progress-bar bg-green" role="progressbar" aria-volumenow="57" aria-volumemin="0" aria-volumemax="100" style="width: 57%"></div>
																	</div> <small> 57%</small>
																</td>
																<td class="project-state">이성호</td>
																<td class="project-actions text-center"><a class="btn btn-primary btn-sm" href="#" data-toggle="modal" data-target="#modal-class-detail"> <i class="fas fa-folder" align="center"> </i> 강의계획서 보기
																</a></td>
																<td class="project-actions text-center"><a class="btn btn-primary btn-sm" href="#" data-toggle="modal" data-target="#modal-prof-Email"> <i class="fas fa-paper-plane" href="#">alex@wsscu.ac.kr </i>
																</a></td>
															</tr>
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
															<div class="modal fade" id="modal-prof-Email">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title">담당교수 메일 보내기</h4>
																			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																		</div>
																		<div class="modal-body">

																			<div class="card-body pad">
																				<div class="mb-3">
																					<textarea class="textarea" placeholder="Place some text here" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
																				</div>
																				<p class="text-sm mb-0">
																					관리자 : <a href="https://github.com/summernote/summernote">메일 전송이 되지 않을 시 클릭해주세요^^. </a>
																				</p>
																			</div>

																		</div>
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