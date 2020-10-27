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
								<i class="fas fa-edit"></i> 졸업유예안내
							</h3>
						</div>
						<div class="card-body">
							<div class="row">
								<div class="col-5 col-sm-3">
									<div class="nav flex-column nav-tabs h-100" id="vert-tabs-tab" role="tablist" aria-orientation="vertical">
										<a class="nav-link active" id="vert-tabs-home-tab" data-toggle="pill" href="#vert-tabs-home" role="tab" aria-controls="vert-tabs-home" aria-selected="true">졸업유예신청자격</a> <a class="nav-link" id="vert-tabs-profile-tab" data-toggle="pill" href="#vert-tabs-profile" role="tab" aria-controls="vert-tabs-profile" aria-selected="false">유예 신청</a>
									</div>
								</div>
								<div class="col-7 col-sm-9">
									<div class="tab-content" id="vert-tabs-tabContent">
										<!-- 졸업유예신청자격 -->
										<div class="tab-pane text-left fade show active" id="vert-tabs-home" role="tabpanel" aria-labelledby="vert-tabs-home-tab">
											<label style="color: #007bff; font-size: 30px;"> 졸업유예 신청자격 </label><br>
											<p>수료요건을 충족하였으나, 교원 자격증 및 각종 자격증 관련 과목 등을 이수하고자하는 졸업예정자</p>
											<br>
											</ul>
											<label style="color: #007bff; font-size: 30px;">
												<p>신청방법</p>
											</label><br> <label style="color: #007bff; font-size: 20px;">신청기간</label><br>
											<ul>
												<li>6월 말 소속 학부사무실</li>
												<li style="list-style-type: none;">자세한 일자는 학사일정을 확인해주세요</li>
											</ul>
											<label style="color: #007bff; font-size: 20px;">담임교수 상담</label><br>
											<ul>
												<li>담임교수 상담은 백석톡, 전화 등 비대면으로 실시</li>
												<li>신청서의 담임교수란에 교수명, 통화일시를 학생이 기재</li>
											</ul>
											<label style="color: #007bff; font-size: 20px;">유의사항</label><br>
											<ul>
												<li>수강하는 과목에 대하여 학점당 등록금을 납부하여야 함</li>
												<ul>
													<li style="list-style-type: decimal;">1학점부터 3학점까지: 해당 학기 등록금의 6분의 1 해당액</li>
													<li style="list-style-type: decimal;">4학점부터 6학점까지: 해당 학기 등록금의 3분의 1 해당액</li>
													<li style="list-style-type: decimal;">7학점부터 9학점까지: 해당 학기 등록금의 2분의 1 해당액</li>
													<li style="list-style-type: decimal;">10학점 이상: 해당 학기 등록금의 전액</li>
												</ul>
												<li>수강신청 : 학사일정을 확인해주세요</li>
												<li style="list-style-type: none;">재학생 수강신청과 동일</li>
												<li>학점등록신청서 제출 : 수강신청 후, 소속 학부사무실</li>
												<li>등록금 납부 : 학기 신청 전</li>
												<li style="list-style-type: none;">자세한 일자는 등록금 납부 고지서를 확인해주세요</li>
												<li>학사학위취득유예가 확정된 자는 휴학을 할 수 없으며, 부득이한 사유로 학업지속이 어려울 경우에는 학사학위취득유예를 취소할 수 있으며, <br>이 경우 당초 졸업시기의 수료자로 처리 후 다음 학기에 졸업자로 처리
												</li>
												<li>졸업연기가 확정된 자는 휴학을 할 수 없으며, 부득이한 사유로 학업지속이 어려울 경우에는 졸업연기를 취소할 수 있으며,이 경우 당초 <br>졸업시기의 수료자로 처리
												</li>
												<li>학사학위취득유예자가 미등록시에는 당초 졸업시기의 수료자로 처리 후 다음 학기에 졸업자로 처리하고, 졸업연기자가 미등록시에는 당초 <br>졸업시기의 수료자로 처리
												</li>
											</ul>
										</div>
										<!--  유예 신청 -->
										<div class="tab-pane fade" id="vert-tabs-profile" role="tabpanel" aria-labelledby="vert-tabs-profile-tab">
											<label style="color: #007bff; font-size: 30px;"> 유예 신청 </label><br>
											<p>
												신청 전 신청 자격 및 안내를 <strong style="color: red;">반드시</strong> 읽어주시기 바랍니다.
											</p>
											<br>
											<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-default">신청하러가기</button>
											<!--  신청 모달 -->
											<div class="modal fade" id="modal-default">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h4 class="modal-title">졸업 유예 신청</h4>
															<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body">
															<ul>
																<li>학사학위취득유예가 확정된 자는 휴학을 할 수 없으며, 부득이한 사유로 학업지속이 어려울 경우에는 학사학위취득유예를 취소할 수 있으며, <br>이 경우 당초 졸업시기의 수료자로 처리 후 다음 학기에 졸업자로 처리
																</li>
																<li>졸업연기가 확정된 자는 휴학을 할 수 없으며, 부득이한 사유로 학업지속이 어려울 경우에는 졸업연기를 취소할 수 있으며,이 경우 당초 <br>졸업시기의 수료자로 처리
																</li>
																<li>학사학위취득유예자가 미등록시에는 당초 졸업시기의 수료자로 처리 후 다음 학기에 졸업자로 처리하고, 졸업연기자가 미등록시에는 당초 <br>졸업시기의 수료자로 처리
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
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h4 class="modal-title">졸업 유예 신청 결과</h4>
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
																	<input class="custom-control-input" type="checkbox" id="customCheckbox2" value="option1"> <label for="customCheckbox2" class="custom-control-label">졸업 유예를<strong style="color: red;"> 철회</strong> 하시겠습니까?
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
