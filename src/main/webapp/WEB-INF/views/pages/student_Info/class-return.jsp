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
								<i class="fas fa-edit"></i> 복학
							</h3>
						</div>
						<div class="card-body">
							<div class="row">
								<div class="col-5 col-sm-3">
									<div class="nav flex-column nav-tabs h-100" id="vert-tabs-tab" role="tablist" aria-orientation="vertical">
										<a class="nav-link active" id="vert-tabs-home-tab" data-toggle="pill" href="#vert-tabs-home" role="tab" aria-controls="vert-tabs-home" aria-selected="true">복학 안내</a> 
										<a class="nav-link" id="vert-tabs-profile-tab" data-toggle="pill" href="#vert-tabs-profile" role="tab" aria-controls="vert-tabs-profile" aria-selected="false">복학 신청</a>
									</div>
								</div>
								<div class="col-7 col-sm-9">
									<div class="tab-content" id="vert-tabs-tabContent">
										<!-- 복학 -->
									<div class="tab-pane text-left fade show active" id="vert-tabs-home" role="tabpanel" aria-labelledby="vert-tabs-home-tab">
											<label style="color: #007bff; font-size: 23px;"><p>복학</p></label>
											<br> <label style="color: #007bff; font-size: 16px;">신청 기간</label><br>
											<ul>
												<li>복학 : 직전학기 종강일 후부터 개강 이전 (부득이한 경우 수업일수 4분의 1 이내)</li>
											</ul>
											<label style="color: #007bff; font-size: 16px;">제출 서류</label><br>
											<ul>
												<li>일반복학 : - </li>
												<li>군 복학 : 전역증 또는 병적증명서 </li>
												<li style="list-style-type: none;"><a href="">자퇴신청서 다운로드</a></li>
											</ul>
											<label style="color: #007bff; font-size: 16px;">신청 자격</label><br>
											<ul>
												<li>일반복학 : - </li>
												<li>군 복학 : 복무만료(소집해제) 시 </li>
											</ul>
											<p>※ 군휴학 후 귀가 조치자 : 학기 개시일부터 종강일 사이 귀가한 경우 군 휴학 기간 변경 후 복학 기간 내 귀가증을 첨부하여 복학 신청<br><strong style="font-size: 15px; color: #007bff;">
												(귀가일이 포함된 학기는 군휴학으로 보며, 수업 4분의 1이내에 귀가한 학생은 군 휴학 취소 신청 가능)</strong></p>
											<label style="color: #007bff; font-size: 16px;">신청 절차</label><br>
											<ul>
												<li>우송시사이버대학교 포털 로그인 → 복학 안내 → 복학 신청</li>
												<li><strong>유의사항</strong></li>
													<ul>
														<li style="list-style-type: none;">휴학연한이 초과되는 학생은 복학하지 않으면 제적됩니다.</li>
														<li style="list-style-type: none;">수업일수 4분의1 이후 전역하더라도 휴가 등을 통하여 복학 기한 이전에 수업 참여가 가능하고 휴가 종료 후 <br>바로 전역하게 되어 학업 수행에 지장이 없는 자는 관련 서류를 첨부하여 등록기간 내에 복학 신청이 가능합니다.</li>
													    <li style="list-style-type: none;">수업일수 4분의 1 이후 전역예정일까지 연속하여 휴가를 사용할 수 있는 경우: 전역예정증명서, 소속 부대장 수학승인서, 휴가증 사본</li>
													    <li style="list-style-type: none;">수업일수 4분의 1 이후 전역예정일까지 연속하여 휴가를 사용할 수 없는 경우: 전역예정증명서, 소속 부대장 수학승인서, 수업이 있는 날의 휴가증 사본,<br> 지도교수 또는 학과장 추천서, 학생확인서</li>
													    <li style="list-style-type: none;">수업일수 4분의 1 이후 전역자가 복학 시 제출하는 휴가증은 제출 당시에 허가된 휴가증에 한합니다.</li>
													</ul>
													<p>※ <strong style="font-size: 15px; color: #007bff;">제출 당시</strong> 허가되지 않은 허가 예정사항은 <strong style="font-size: 15px; color: #007bff;">해당</strong> 되지 않습니다.</p>
											</ul>
										</div>
										
										
										
										<!--  복학 신청 -->
										<div class="tab-pane fade" id="vert-tabs-profile" role="tabpanel" aria-labelledby="vert-tabs-profile-tab">
											<label style="color: #007bff; font-size: 30px;"> 복학 신청 </label><br>
											<p>
												신청 전 신청 안내를 <strong style="color: red;">반드시</strong> 읽어주시기 바랍니다.
											</p>
											<br>
											<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-default">신청하러가기</button>
											<!--  신청 모달 -->
											<div class="modal fade" id="modal-default">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h4 class="modal-title">복학 신청</h4>
															<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body">
															<ul>
																<li>복학신청서는 반드시 작성하여 파일 첨부를 해주시기 바랍니다.
																</li>
																<li>서류 누락 시 자퇴 신청이 진행되지 않으며 별도 연락 또한 취하지 않습니다.
																</li>
																<li>복학 신청 승인 후 본인의 이메일로 전송됩니다.
																</li>
																<div class="custom-file">
											                      <input type="file" class="custom-file-input" id="customFile">
											                      <label class="custom-file-label" for="customFile">복학 신청서 첨부</label>
											                    </div>
																											
															</ul>
															<!-- checkbox -->
															<form role="form">
																<div class="custom-control custom-checkbox" align="center">
																	<input class="custom-control-input" type="checkbox" id="customCheckbox1" value="option1"> <label for="customCheckbox1" class="custom-control-label"><strong style="color: red;">위 내용을 확인했습니다.</strong></label>
																</div>
															</form>
														</div>
														<div class="modal-footer justify-content-between">
															<button type="button" class="btn btn-default" data-dismiss="modal">나가기</button>
															<button type="button" class="btn btn-primary">신청하기</button>
														</div>
													</div>
													<!-- /.modal-content -->
												</div>
												<!-- /.modal-dialog -->
											</div>
											<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-default1">신청확인</button>
											<!--  신청 확인 모달 -->
											<div class="modal fade" id="modal-default1">
												<div class="modal-dialog modal-lg">
													<div class="modal-content">
														<div class="modal-header">
															<h4 class="modal-title">복학 신청 결과</h4>
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
																		<th>신청상태</th>
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
															<form role="form">
																<div class="custom-control custom-checkbox" align="center">
																	<input class="custom-control-input" type="checkbox" id="customCheckbox2" value="option1"> <label for="customCheckbox2" class="custom-control-label">복학 신청을<strong style="color: red;"> 철회</strong> 하시겠습니까?
																	</label>
																</div>
															</form>
														</div>
														<div class="modal-footer justify-content-between">
															<button type="button" class="btn btn-default" data-dismiss="modal">나가기</button>
															<button type="button" class="btn btn-primary">철회하기</button>
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
