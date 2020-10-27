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
								<i class="fas fa-edit"></i> 휴학
							</h3>
						</div>
						<div class="card-body">
							<div class="row">
								<div class="col-5 col-sm-3">
									<div class="nav flex-column nav-tabs h-100" id="vert-tabs-tab" role="tablist" aria-orientation="vertical">
										<a class="nav-link active" id="vert-tabs-home-tab" data-toggle="pill" href="#vert-tabs-home" role="tab" aria-controls="vert-tabs-home" aria-selected="true">휴학 안내</a> 
										<a class="nav-link" id="vert-tabs-profile-tab" data-toggle="pill" href="#vert-tabs-profile" role="tab" aria-controls="vert-tabs-profile" aria-selected="false">휴학 신청</a>
									</div>
								</div>
								<div class="col-7 col-sm-9">
									<div class="tab-content" id="vert-tabs-tabContent">
										<!-- 휴학 -->
										<div class="tab-pane text-left fade show active" id="vert-tabs-home" role="tabpanel" aria-labelledby="vert-tabs-home-tab">
											<label style="color: #007bff; font-size: 30px;">휴학안내</label><br>
											<p>
												학생의 개인적인 사정(질병, 군복무, 기타 부득이한 사유)으로 휴학하고자 할 때에는 매 학기 소정의 기간 내에 학장에게 휴학 신청을 하여 허가를 받아야 하며, <br>휴학 허가 기간은 1년 이내로 합니다.
												<br>
												기타 부득이한 사유는 일반휴학에 포함됩니다.
											</p>
											<br>
											</ul>
											<!-- 일반휴학 -->
											<label style="color: #007bff; font-size: 23px;"><p>일반 휴학</p></label>
											<br> <label style="color: #007bff; font-size: 16px;">신청 기간</label><br>
											<ul>
												<li>미등록 : 수업일수 1/4 이내</li>
												<li>등록후 : 수업일수 2/4 이내</li>
											</ul>
											<label style="color: #007bff; font-size: 16px;">제출서류</label><br>
											<ul>
												<li>별도 서류 없음</li>
											</ul>
											<!-- 군휴학 -->
											<label style="color: #007bff; font-size: 23px;">
												<p>군 휴학</p>
											</label><br> <label style="color: #007bff; font-size: 16px;">신청 기간</label><br>
											<ul>
												<li>종강일 전 입대 : 입영일 2주 전부터 종강일 까지</li>
												<li>종강일 후 입대 : 종강일 이후 다음 학기 개강전 까지</li>
											</ul>
											<label style="color: #007bff; font-size: 16px;">제출서류</label><br>
											<ul>
												<li>입영통지서, 병역증 또는 복무확인서</li>
											</ul>
											<label style="color: #007bff; font-size: 16px;">유의사항</label><br>
											<ul>
												<li>당해학기 및 취득학점 인정학기 개시 전 귀가조치된 경우 군휴학을 취소</li>
											</ul>
											<!-- 질병휴학 -->
											<label style="color: #007bff; font-size: 23px;">
												<p>질병 휴학</p>
											</label><br> <label style="color: #007bff; font-size: 16px;">신청 기간</label><br>
											<ul>
												<li>개강일로부터 종강일 이내</li>
											</ul>
											<label style="color: #007bff; font-size: 16px;">제출서류</label><br>
											<ul>
												<li>‘학업수행이 어렵다’는 내용이 포함된 치료기간 4주 이상의 종합병원 진단서</li>
											</ul>
											<label style="color: #007bff; font-size: 16px;">유의사항</label><br>
											<ul>
												<li>수업일수 4분의3 이후 신청 시 정기적 치료를 확인할 수 있는 진료확인서 추가 제출</li>
											</ul>
											<br>
											<br>
											<p><strong style="font-size: 15px; color: #007bff;">※모든 서류는 해당 학과 담당 조교 및 학과장에게 제출</strong></p>
										</div>
										
										
										
										<!--  휴학 신청 -->
										<div class="tab-pane fade" id="vert-tabs-profile" role="tabpanel" aria-labelledby="vert-tabs-profile-tab">
											<label style="color: #007bff; font-size: 30px;"> 휴학 신청 </label><br>
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
															<h4 class="modal-title">휴학 신청</h4>
															<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body">
															<ul>
																<li>종류 별 신청 서류가 상이할 수 있으니 안내를 읽고 신청해 주시기 바랍니다.
																</li>
																<li>서류 누락 시 휴학 신청이 진행되지 않으며 별도 연락 또한 취하지 않습니다.
																</li>
																<li>휴학 신청 승인 후 본인의 이메일로 전송됩니다.
																</li>
																<li>PDF파일로 제출이 어려운 학생을 Fax로 보내시기 바랍니다.
																</li>
																<li style="list-style-type: none;"> Fax : 02)123-1234 
																</li>
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
															<h4 class="modal-title">휴학 신청 결과</h4>
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
																		<th>휴학종류</th>
																		<th>신청상태</th>
																	</tr>
																</thead>
																<tbody style="text-align: center;">
																	<tr>
																		<td>컴공과컴공과컴공과★</td>
																		<td>201203798</td>
																		<td>윤기훈</td>
																		<td>일반</td>
																		<td>Y</td>
																	</tr>
																	<tr>
																		<td>소프트웨어공학과</td>
																		<td>201501111</td>
																		<td>이성호</td>
																		<td>군</td>
																		<td>Y</td>
																	</tr>
																	<tr>
																		<td>총맞은것처럼할꽈? </td>
																		<td>200001111</td>
																		<td>백지영</td>
																		<td>질병</td>
																		<td>Y</td>
																	</tr>
																</tbody>
															</table>
															<!-- checkbox -->
															<form role="form">
																<div class="custom-control custom-checkbox" align="center">
																	<input class="custom-control-input" type="checkbox" id="customCheckbox2" value="option1"> <label for="customCheckbox2" class="custom-control-label">휴학 신청을<strong style="color: red;"> 철회</strong> 하시겠습니까?
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
