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
									<li class="nav-item"><a href="lectureHall.jsp" class="nav-link"> <i
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
							<!-- 강의안내칸 div -->
							<div class="tab-content">
								<!-- 학기 과목명 테이블 div -->
								<div class="active tab-pane" id="activity">
									
									


									<div class="card">

										<div class="card-header p-2">
											<ul class="nav nav-pills">
												<li class="nav-item"><a class="nav-link active"
													href="#activity1" data-toggle="tab">온라인 강의듣기</a></li>

												<li class="nav-item"><a class="nav-link"
													href="#activity3" data-toggle="tab">출석현황</a></li>

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
																			<td>1</td>
																			<td><a href="./lectureListDetail.jsp">Call of Duty</a>
																					
																			</td>
																			<td>전선</td>
																			<td>3</td>
																			<td>이성호</td>
																			<td>46%</td>
																		</tr>
																		<tr>
																			<td>1</td>
																			<td>Need for Speed IV</td>
																			<td>교선</td>
																			<td>3</td>
																			<td>박길동</td>
																			<td>46%</td>

																		</tr>
																		<tr>
																			<td>1</td>
																			<td>Monsters DVD</td>
																			<td>전선</td>
																			<td>3</td>
																			<td>김휘경</td>
																			<td>46%</td>

																		</tr>
																		<tr>
																			<td>1</td>
																			<td>Grown Ups Blue Ray</td>
																			<td>전선</td>
																			<td>3</td>
																			<td>유승제</td>
																			<td>46%</td>
																		<tr>
																			<td>1</td>
																			<td><a href="./onlineLecture.jsp">Need for
																					Speed IV</a></td>
																			<td>교선</td>
																			<td>3</td>
																			<td>김지숙</td>
																			<td>46%</td>

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
																	<thead>
																		<tr>
																			<th>학기</th>
																			<th>과목명</th>
																			<th>시험일자</th>
																			<th>담당교수</th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td colspan=4>현재 진행중인 시험이 없습니다.
																			<td>
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
												<div class="tab-pane" id="activity3">
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
																			<th>나의출석률</th>
																			<th>과정진행률</th>
																			<th>총결석일</th>
																			<th>제출과제수</th>
																			<th>팀참여여부</th>

																		</tr>
																	</thead>
																	<tbody>

																		<tr>
																			<td>2</td>
																			<td>Call of Duty</td>
																			<td>50%(6/12주)</td>
																			<td>50%(6/12주)</td>
																			<td>0일</td>
																			<td>3/6회</td>
																			<td>y</td>

																		</tr>
																		<tr>
																			<td>1</td>
																			<td>Need for Speed IV</td>
																			<td>46%(6/12주)</td>
																			<td>50%(6/12주)</td>
																			<td>1일</td>
																			<td>2/5회</td>
																			<td>n</td>

																		</tr>

																		<tr>
																			<td>1</td>
																			<td>Grown Ups Blue Ray</td>
																			<td>50%(6/12주)</td>
																			<td>50%(6/12주)</td>
																			<td>0일</td>
																			<td>0/1회</td>
																			<td>y</td>
																		<tr>
																			<td>1</td>
																			<td>Need for Speed V</td>
																			<td>50%(6/12주)</td>
																			<td>50%(6/12주)</td>
																			<td>0일</td>
																			<td>6/12회</td>
																			<td>y</td>

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
												<div class="tab-pane" id="activity4">
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
																			<td colspan=6>현재 진행중인 프로젝트가 없습니다.
																			<td>
																		</tr>
																	</tbody>
																</table>
															</div>
															<!-- /.col -->
														</div>
														<!-- /.row -->
													</div>


												</div>


												<div class="tab-pane" id="activity5">
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
																			<th>게시판명</th>
																			<th>학점</th>
																			<th>게시판기간</th>
																			<th>참여점수</th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td colspan=6>게시물이 존재하지 않습니다.
																			<td>
																		</tr>
																	</tbody>
																</table>
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


								</div>
								<!-- /.tab-pane -->

								<!-- /.tab-pane -->

								<div class="tab-pane" id="settings">
									<form class="form-horizontal">
										<div class="form-group row">
											<label for="inputName" class="col-sm-2 col-form-label">과목명</label>
											<div class="col-sm-10">
												<input type="email" class="form-control" id="inputName"
													placeholder="과목명">
											</div>
										</div>
										<div class="form-group row">
											<label for="inputEmail" class="col-sm-2 col-form-label">과제명</label>
											<div class="col-sm-10">
												<input type="email" class="form-control" id="inputEmail"
													placeholder="과제명">
											</div>
										</div>
										<div class="form-group row">
											<label for="inputName2" class="col-sm-2 col-form-label">이름</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="inputName2"
													placeholder="이름">
											</div>

										</div>
										<div class="form-group row">
											<label for="inputName2" class="col-sm-2 col-form-label">학번</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="inputName2"
													placeholder="학번">
											</div>

										</div>

										<div class="form-group row">
											<label for="inputSkills" class="col-sm-2 col-form-label">글쓰기</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="inputSkills"
													placeholder="글쓰기">
											</div>
										</div>
										<div class="form-group row">
											<div class="offset-sm-2 col-sm-10">
												<div class="checkbox">
													<label> <input type="checkbox">과제를 제출하면
														수정할수 없습니다
													</label>
												</div>
											</div>
										</div>
										<div class="form-group row">
											<div class="offset-sm-2 col-sm-10">
												<button type="submit" class="btn btn-danger">파일첨부</button>
												<button type="submit" class="btn btn-danger">과제제출</button>
											</div>
										</div>
									</form>
								</div>
								<!-- /.tab-pane -->
								<!-- exam strats -->
								<div class="tab-pane" id="exam">
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
															<th>시험 보러가기</th>
														</tr>
													</thead>
													<tbody style="text-align: center;">
														<tr>
															<td>20/09/24</td>
															<td>JAVA</td>
															<td>-</td>
															<td>미응시</td>
															<td><button type="button" class="btn btn-primary"
																	data-toggle="modal" data-target="#modal-default2">시험
																	보러가기</button> <!--  등록/변경 모달 -->
																<div class="modal fade" id="modal-default2">
																	<div class="modal-dialog modal-lg">
																		<div class="modal-content">
																			<div class="modal-header">
																				<h4 class="modal-title">JAVA</h4>
																				<button type="button" class="close"
																					data-dismiss="modal" aria-label="Close">
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
																							<td><input type="text" class="form-control"
																								placeholder="ex) 큰일났네 ㅎ.."></td>
																						</tr>
																					</tbody>
																				</table>
																				<!-- checkbox -->
																				<form role="form">
																					<div class="custom-control custom-checkbox"
																						align="center">
																						<input class="custom-control-input"
																							type="checkbox" id="customCheckbox2"
																							value="option1"> <label
																							for="customCheckbox2"
																							class="custom-control-label">시험 종료 후 수정은
																							<strong style="color: #007bff;">불가</strong>함을
																							인지하였습니다.
																						</label>
																					</div>
																				</form>
																			</div>
																			<div class="modal-footer justify-content-between">
																				<button type="button" class="btn btn-default"
																					data-dismiss="modal">나가기</button>
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
																<button type="button" class="btn btn-primary disabled"
																	data-toggle="modal" data-target="#modal-default3">시험
																	보러가기</button> <!--  등록/변경 모달 -->
																<div class="modal fade" id="modal-default3">
																	<div class="modal-dialog modal-lg">
																		<div class="modal-content">
																			<div class="modal-header">
																				<h4 class="modal-title">SQL</h4>
																				<button type="button" class="close"
																					data-dismiss="modal" aria-label="Close">
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
																							<td><input type="text" class="form-control"
																								placeholder="ex) 큰일났네 ㅎ.."></td>
																						</tr>
																					</tbody>
																				</table>
																				<!-- checkbox -->
																				<form role="form">
																					<div class="custom-control custom-checkbox"
																						align="center">
																						<input class="custom-control-input"
																							type="checkbox" id="customCheckbox3"
																							value="option1"> <label
																							for="customCheckbox3"
																							class="custom-control-label">시험 종료 후 수정은
																							<strong style="color: #007bff;">불가</strong>함을
																							인지하였습니다.
																						</label>
																					</div>
																				</form>
																			</div>
																			<div class="modal-footer justify-content-between">
																				<button type="button" class="btn btn-default"
																					data-dismiss="modal">나가기</button>
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
																<button type="button" class="btn btn-primary disabled"
																	data-toggle="modal" data-target="#modal-default4">시험
																	보러가기</button> <!--  등록/변경 모달 -->
																<div class="modal fade" id="modal-default4">
																	<div class="modal-dialog modal-lg">
																		<div class="modal-content">
																			<div class="modal-header">
																				<h4 class="modal-title">MyBatis</h4>
																				<button type="button" class="close"
																					data-dismiss="modal" aria-label="Close">
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
																							<td><input type="text" class="form-control"
																								placeholder="ex) 큰일났네 ㅎ.."></td>
																						</tr>
																					</tbody>
																				</table>
																				<!-- checkbox -->
																				<form role="form">
																					<div class="custom-control custom-checkbox"
																						align="center">
																						<input class="custom-control-input"
																							type="checkbox" id="customCheckbox4"
																							value="option1"> <label
																							for="customCheckbox4"
																							class="custom-control-label">시험 종료 후 수정은
																							<strong style="color: #007bff;">불가</strong>함을
																							인지하였습니다.
																						</label>
																					</div>
																				</form>
																			</div>
																			<div class="modal-footer justify-content-between">
																				<button type="button" class="btn btn-default"
																					data-dismiss="modal">나가기</button>
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

								<!-- ---------inset end point--------------- -->
							</div>
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





















































