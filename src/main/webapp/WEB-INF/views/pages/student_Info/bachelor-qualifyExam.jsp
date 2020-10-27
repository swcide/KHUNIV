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

					<div class="card">

						<div class="card-header p-2">
							<ul class="nav nav-pills">
								<li class="nav-item"><a class="btn disabled" href="" data-toggle="tab"><strong>학위취득 관련</strong></a></li>
								<li class="nav-item"><a class="nav-link active" href="#activity1" data-toggle="tab">자격 조회 및 등록</a></li>
								<li class="nav-item"><a class="nav-link" href="#activity2" data-toggle="tab">전공 졸업 시험</a></li>

							</ul>
						</div>
						<!-- /.card-header -->
						<div class="card-body">
							<div class="tab-content">

								<div class="active tab-pane" id="activity1">
									<!-- Post -->
									<div class="post">
										<!-- Table row -->
										<div class="row">
											<div class="col-12 table-responsive">
												<table class="table table-striped">
													<!-- 테이블 헤더 -->
													<thead style="text-align: center;">
														<tr>
															<th>외국어 자격명</th>
															<th>획득 점수</th>
															<th>응시 일자</th>
															<th>유효 기간</th>
															<th>발급 번호</th>
															<th>등록/변경</th>
														</tr>
													</thead>

													<!--  테이블 바디 -->
													<tbody style="text-align: center;">
														<tr>
															<td>Need for Speed IV</td>
															<td>100</td>
															<td>20/09/24</td>
															<td>-</td>
															<td>1234-1234-1234-123</td>
															<td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-default">등록/변경하기</button> <!--  등록/변경 모달 -->
																<div class="modal fade" id="modal-default">
																	<div class="modal-dialog modal-lg">
																		<div class="modal-content">
																			<div class="modal-header">
																				<h4 class="modal-title">자격 정보 등록</h4>
																				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																					<span aria-hidden="true">&times;</span>
																				</button>
																			</div>
																			<div class="modal-body">
																				<table class="table table-striped">
																					<thead style="text-align: center;">
																						<tr>
																							<th>자격명</th>
																							<th>획득 점수</th>
																							<th>응시 일자</th>
																							<th>유효 기간</th>
																							<th>발급 번호</th>
																						</tr>
																					</thead>
																					<tbody>
																						<tr>
																							<td><input type="text" class="form-control" placeholder="ex) TOEIC"></td>
																							<td><input type="text" class="form-control" placeholder="ex) 78"></td>
																							<td><input type="text" class="form-control" placeholder="ex)20/09/24"></td>
																							<td><input type="text" class="form-control" placeholder="ex)23/09/24"></td>
																							<td><input type="text" class="form-control" placeholder="ex)123124-123-1231231 "></td>
																						</tr>
																					</tbody>
																				</table>
																				<!-- checkbox -->
																				<form role="form">
																					<div class="custom-control custom-checkbox" align="center">
																						<input class="custom-control-input" type="checkbox" id="customCheckbox1" value="option1"> <label for="customCheckbox1" class="custom-control-label">위 내용이 <strong style="color: #007bff;">사실</strong>임을 증명합니다.
																						</label>
																					</div>
																				</form>
																			</div>
																			<div class="modal-footer justify-content-between">
																				<button type="button" class="btn btn-default" data-dismiss="modal">나가기</button>
																				<button type="button" class="btn btn-primary">등록/변경하기</button>
																			</div>
																		</div>
																		<!-- /.modal-content -->
																	</div>
																	<!-- /.modal-dialog -->
																</div></td>
														</tr>
														<tr>
															<td>Need for Speed IV</td>
															<td>100</td>
															<td>20/09/24</td>
															<td>-</td>
															<td>1234-1234-1234-123</td>
															<td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-default">등록/변경하기</button> <!--  신청 모달 -->
																<div class="modal fade" id="modal-default">
																	<div class="modal-dialog modal-lg">
																		<div class="modal-content">
																			<div class="modal-header">
																				<h4 class="modal-title">자격 정보 등록</h4>
																				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																					<span aria-hidden="true">&times;</span>
																				</button>
																			</div>
																			<div class="modal-body">
																				<table class="table table-striped">
																					<thead style="text-align: center;">
																						<tr>
																							<th>자격명</th>
																							<th>획득 점수</th>
																							<th>응시 일자</th>
																							<th>유효 기간</th>
																							<th>발급 번호</th>
																						</tr>
																					</thead>
																					<tbody>
																						<tr>
																							<td><input type="text" class="form-control" placeholder="ex) TOEIC"></td>
																							<td><input type="text" class="form-control" placeholder="ex) 78"></td>
																							<td><input type="text" class="form-control" placeholder="ex)20/09/24"></td>
																							<td><input type="text" class="form-control" placeholder="ex)23/09/24"></td>
																							<td><input type="text" class="form-control" placeholder="ex)123124-123-1231231 "></td>
																						</tr>
																					</tbody>
																				</table>
																				<!-- checkbox -->
																				<form role="form">
																					<div class="custom-control custom-checkbox" align="center">
																						<input class="custom-control-input" type="checkbox" id="customCheckbox1" value="option1"> <label for="customCheckbox1" class="custom-control-label">위 내용이 <strong style="color: #007bff;">사실</strong>임을 증명합니다.
																						</label>
																					</div>
																				</form>
																			</div>
																			<div class="modal-footer justify-content-between">
																				<button type="button" class="btn btn-default" data-dismiss="modal">나가기</button>
																				<button type="button" class="btn btn-primary">등록/변경하기</button>
																			</div>
																		</div>
																		<!-- /.modal-content -->
																	</div>
																	<!-- /.modal-dialog -->
																</div></td>
														</tr>
														<tr>
															<td>-</td>
															<td>-</td>
															<td>-</td>
															<td>-</td>
															<td>-</td>
															<td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-default">등록/변경하기</button> <!--  신청 모달 -->
																<div class="modal fade" id="modal-default">
																	<div class="modal-dialog modal-lg">
																		<div class="modal-content">
																			<div class="modal-header">
																				<h4 class="modal-title">자격 정보 등록</h4>
																				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																					<span aria-hidden="true">&times;</span>
																				</button>
																			</div>
																			<div class="modal-body">
																				<table class="table table-striped">
																					<thead style="text-align: center;">
																						<tr>
																							<th>자격명</th>
																							<th>획득 점수</th>
																							<th>응시 일자</th>
																							<th>유효 기간</th>
																							<th>발급 번호</th>
																						</tr>
																					</thead>
																					<tbody>
																						<tr>
																							<td><input type="text" class="form-control" placeholder="ex) TOEIC"></td>
																							<td><input type="text" class="form-control" placeholder="ex) 78"></td>
																							<td><input type="text" class="form-control" placeholder="ex)20/09/24"></td>
																							<td><input type="text" class="form-control" placeholder="ex)23/09/24"></td>
																							<td><input type="text" class="form-control" placeholder="ex)123124-123-1231231 "></td>
																						</tr>
																					</tbody>
																				</table>
																				<!-- checkbox -->
																				<form role="form">
																					<div class="custom-control custom-checkbox" align="center">
																						<input class="custom-control-input" type="checkbox" id="customCheckbox1" value="option1"> <label for="customCheckbox1" class="custom-control-label">위 내용이 <strong style="color: #007bff;">사실</strong>임을 증명합니다.
																						</label>
																					</div>
																				</form>
																			</div>
																			<div class="modal-footer justify-content-between">
																				<button type="button" class="btn btn-default" data-dismiss="modal">나가기</button>
																				<button type="button" class="btn btn-primary">등록/변경하기</button>
																			</div>
																		</div>
																		<!-- /.modal-content -->
																	</div>
																	<!-- /.modal-dialog -->
																</div></td>
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

								<div class="tab-pane" id="activity2">
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
															<th>시험 보기</th>
														</tr>
													</thead>
													<tbody style="text-align: center;">
														<tr>
															<td>20/09/24</td>
															<td>JAVA</td>
															<td>-</td>
															<td>미응시</td>
															<td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-default2">시험 시작</button> <!--  등록/변경 모달 -->
																<div class="modal fade" id="modal-default2">
																	<div class="modal-dialog modal-lg">
																		<div class="modal-content">
																			<div class="modal-header">
																				<h4 class="modal-title">JAVA</h4>
																				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
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
																							<td><input type="text" class="form-control" placeholder="ex) 큰일났네 ㅎ.."></td>
																						</tr>
																					</tbody>
																				</table>
																				<!-- checkbox -->
																				<form role="form">
																					<div class="custom-control custom-checkbox" align="center">
																						<input class="custom-control-input" type="checkbox" id="customCheckbox2" value="option1"> <label for="customCheckbox2" class="custom-control-label">시험 종료 후 수정은 <strong style="color: #007bff;">불가</strong>함을 인지하였습니다.
																						</label>
																					</div>
																				</form>
																			</div>
																			<div class="modal-footer justify-content-between">
																				<button type="button" class="btn btn-default" data-dismiss="modal">나가기</button>
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
																<button type="button" class="btn btn-primary disabled" data-toggle="modal" data-target="#modal-default3">시험 시작</button> <!--  등록/변경 모달 -->
																<div class="modal fade" id="modal-default3">
																	<div class="modal-dialog modal-lg">
																		<div class="modal-content">
																			<div class="modal-header">
																				<h4 class="modal-title">SQL</h4>
																				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
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
																							<td><input type="text" class="form-control" placeholder="ex) 큰일났네 ㅎ.."></td>
																						</tr>
																					</tbody>
																				</table>
																				<!-- checkbox -->
																				<form role="form">
																					<div class="custom-control custom-checkbox" align="center">
																						<input class="custom-control-input" type="checkbox" id="customCheckbox3" value="option1"> <label for="customCheckbox3" class="custom-control-label">시험 종료 후 수정은 <strong style="color: #007bff;">불가</strong>함을 인지하였습니다.
																						</label>
																					</div>
																				</form>
																			</div>
																			<div class="modal-footer justify-content-between">
																				<button type="button" class="btn btn-default" data-dismiss="modal">나가기</button>
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
																<button type="button" class="btn btn-primary disabled" data-toggle="modal" data-target="#modal-default4">시험 시작</button> <!--  등록/변경 모달 -->
																<div class="modal fade" id="modal-default4">
																	<div class="modal-dialog modal-lg">
																		<div class="modal-content">
																			<div class="modal-header">
																				<h4 class="modal-title">MyBatis</h4>
																				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
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
																							<td><input type="text" class="form-control" placeholder="ex) 큰일났네 ㅎ.."></td>
																						</tr>
																					</tbody>
																				</table>
																				<!-- checkbox -->
																				<form role="form">
																					<div class="custom-control custom-checkbox" align="center">
																						<input class="custom-control-input" type="checkbox" id="customCheckbox4" value="option1"> <label for="customCheckbox4" class="custom-control-label">시험 종료 후 수정은 <strong style="color: #007bff;">불가</strong>함을 인지하였습니다.
																						</label>
																					</div>
																				</form>
																			</div>
																			<div class="modal-footer justify-content-between">
																				<button type="button" class="btn btn-default" data-dismiss="modal">나가기</button>
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
								<!-- /.tab-pane -->
								<!-- /.tab-pane -->
							</div>
							<!-- /.tab-pane -->
						</div>
						<!-- /.tab-content -->
					</div>
					<!-- /.card-body -->
					<!-- /.nav-tabs-custom -->
				</div>




				<!-- 왼쪽여백용 -->
				<div class="col-md-2"></div>
				<!-- 자격시험 -->
				<div class="col-md-10">

					<div class="card">

						<div class="card-header p-2">
							<ul class="nav nav-pills">
								<li class="nav-item"><a class="btn disabled" href="" data-toggle="tab"><strong>학위취득 가부 확인</strong></a></li>

							</ul>
						</div>
						<!-- /.card-header -->
						<div class="card-body">
							<div class="tab-content">

								<div class="active tab-pane" id="">
									<!-- Post -->
									<div class="post">
										<!-- Table row -->
										<div class="row">
											<div class="col-12 table-responsive">
												<table class="table table-striped">
													<!-- 테이블 헤더 -->
													<thead style="text-align: center; color: #007bff;">
														<tr>
															<th>외국어 자격명</th>
															<th>획득 점수</th>
															<th>합격 점수</th>
															<th>합격 여부</th>
														</tr>
													</thead>
													<!--  테이블 바디 -->
													<tbody style="text-align: center;">
														<tr>
															<td>TOEIC</td>
															<td>180</td>
															<td>700이상</td>
															<td>탈락</td>
														</tr>
													</tbody>
													<thead>
														<tr>
															<th></th>
															<th></th>
															<th></th>
															<th></th>
														</tr>
													</thead>
													<!-- 바로아래 테이블 헤더 -->
													<thead style="text-align: center; color: #007bff;">
														<tr>
															<th>전공 시험 결과</th>
															<th>획득 점수</th>
															<th>합격 점수</th>
															<th>합격 여부</th>
														</tr>
													</thead>
													<!-- 바로아래 테이블 바디 -->
													<tbody style="text-align: center;">
														<tr>
															<td>JAVA</td>
															<td>-</td>
															<td>80이상</td>
															<td>미응시</td>
														</tr>
														<tr>
															<td>SQL</td>
															<td>65</td>
															<td>60이상</td>
															<td>합격</td>
														</tr>
														<tr>
															<td>MyBatis</td>
															<td>10</td>
															<td>60이상</td>
															<td>불합격</td>
														</tr>
													</tbody>
													<thead>
														<tr>
															<th></th>
															<th></th>
															<th></th>
															<th></th>
														</tr>
													</thead>
													<!-- 그아래 테이블 헤더 -->
													<thead style="text-align: center; color: #007bff;">
														<tr>
															<th>외국어 자격 결과</th>
															<th>전공 자격 결과</th>
															<th>전공 시험 결과</th>
															<th>학위취득 가부</th>
														</tr>
													</thead>
													<!-- 그아래 테이블 바디 -->
													<tbody style="text-align: center;">
														<tr>
															<td>통과</td>
															<td>탈락</td>
															<td>탈락</td>
															<td>부</td>
														</tr>
													</tbody>
												</table>
												<div align="center">
													<label><strong style="font-size: 15px;">학위 취득은 자격 및 전공 시험 모두 통과하여야 취득 가능합니다.</strong></label>
												</div>
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


						<!-- /.tab-pane -->
					</div>
					<!-- /.tab-content -->
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
