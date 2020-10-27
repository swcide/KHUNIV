<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
				<div class="col-md-10">
					<div class="card card-primary card-outline">
						<div class="card-header">
							<h3 class="card-title">
								<i class="fas fa-edit"></i> 등록금 납부
							</h3>
						</div>
						<div class="card-body">
							<div class="row">
								<div class="col-5 col-sm-3">
									<div class="nav flex-column nav-tabs h-100" id="vert-tabs-tab" role="tablist" aria-orientation="vertical">
										<a class="nav-link active" id="vert-tabs-home-tab" data-toggle="pill" href="#vert-tabs-home" role="tab" aria-controls="vert-tabs-home" aria-selected="true">등록금 납부 안내</a> 
										<a class="nav-link" id="vert-tabs-profile-tab" data-toggle="pill" href="#vert-tabs-profile" role="tab" aria-controls="vert-tabs-profile" aria-selected="false">등록금 납부 절차</a>
									</div>
								</div>
								<div class="col-7 col-sm-9">
									<div class="tab-content" id="vert-tabs-tabContent">
										<!-- 자퇴 -->
										<div class="tab-pane text-left fade show active" id="vert-tabs-home" role="tabpanel" aria-labelledby="vert-tabs-home-tab">
											<label style="color: #007bff; font-size: 30px;">등록금 납부 안내</label><br>
											<p>
												학생들은 입학이 확정된 후 등록금을 납부함으로써 학생의 신분을 취득하게 됩니다. 등록금 납부 시기는 1학기는 2월말 경, 2학기는 8월말 경입니다.
											</p>
											<br>
											</ul>
											<!-- 자퇴 -->
											<br> <label style="color: #007bff; font-size: 16px;">재학생 등록금 납부 방법</label><br>
											<ul>
												<li>우송시사이버대학교 학사정보 - 등록금 납부 페이지에서 출력한 등록금 고지서를 납부기간내에 지정된 은행에 납부합니다.</li>
												<li style="list-style-type: none;"><a href="">등록금 고지서 출력 바로가기</a></li>
											</ul>
											<label style="color: #007bff; font-size: 16px;">등록금 납부 확인서 확인 및 출력</label><br>
											<ul>
												<li>증명서 발급 - 등록금 납부 확인서</li>
												<li style="list-style-type: none;"><a href="">등록금 납부 확인서 출력 바로가기</a></li>
											</ul>
											<br> <label style="color: #007bff; font-size: 16px;">유의사항</label><br>
											<ul>
												<li>소정의 등록기간중에 등록이나 휴학 허가를 받지 않으면 미등록 제적되며, 복학재입학생, 전 학기에 휴학 또는 미등록한 학생은 복학, 복귀, 복적, <br>재입학의 허가를 받은 후 등록하여야 합니다.</li>
											</ul>
										</div>
										
										
										
										<!--  자퇴 신청 -->
										<div class="tab-pane fade" id="vert-tabs-profile" role="tabpanel" aria-labelledby="vert-tabs-profile-tab">
											<label style="color: #007bff; font-size: 30px;"> 등록금 납부 </label><br>
											<p>
												출력한 등록금 고지서를 <strong style="color: red;"> 납부기간 내에</strong>  지정된 은행에 납부해야 등록이 완료 됩니다.
											</p>
											<br>
											<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-default">등록금 고지서 확인</button>
											<!--  신청 모달 -->
											<div class="modal fade" id="modal-default">
												<div class="modal-dialog modal-lg">
													<div class="modal-content">
														<div class="modal-header">
															<h4 class="modal-title">등록금 고지서</h4>
															<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body">
															<table id="example1" class="table table-bordered table-striped">
																<thead style="text-align: center;">
																	<tr>
																		<th>학과</th>
																		<th>학번</th>
																		<th>이름</th>
																		<th>납부은행</th>
																		<th>납부금액</th>
																		<th>납부계좌</th>
																	</tr>
																</thead>
																<tbody style="text-align: center;">
																	<tr>
																		<td>컴공과컴공과컴공과★</td>
																		<td>201203798</td>
																		<td>윤기훈</td>
																		<td>신한은행</td>
																		<td>30,000,000원</td>
																		<td>110-502-549567</td>
																	</tr>
																</tbody>
															</table>
															<!-- checkbox -->
														</div>
														<div class="modal-footer justify-content-between">
															<button type="button" class="btn btn-default" data-dismiss="modal">나가기</button>
															<button type="button" class="btn btn-primary">출력하기</button>
														</div>
													</div>
													<!-- /.modal-content -->
												</div>
												<!-- /.modal-dialog -->
											</div>
											<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-default1">납부 확인</button>
											<!--  신청 확인 모달 -->
											<div class="modal fade" id="modal-default1">
												<div class="modal-dialog modal-lg">
													<div class="modal-content">
														<div class="modal-header">
															<h4 class="modal-title">등록금 납부 결과</h4>
															<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body">
															<table id="example1" class="table table-bordered table-striped">
																<thead style="text-align: center;">
																	<tr>
																		<th>학과</th>
																		<th>학번</th>
																		<th>이름</th>
																		<th>납부상태</th>
																	</tr>
																</thead>
																<tbody style="text-align: center;">
																	<tr>
																		<td>컴공과컴공과컴공과★</td>
																		<td>201203798</td>
																		<td>윤기훈</td>
																		<td>Y</td>
																	</tr>
																</tbody>
															</table>
															<!-- checkbox -->
														</div>
														<div class="modal-footer justify-content-right">
															<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
														</div>
													</div>
													<!-- /.modal-content -->
												</div>
												<!-- /.modal-dialog -->
											</div>
											<!-- /.modal -->
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /.card -->
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
