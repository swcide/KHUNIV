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
								<li class="nav-item"><a class="btn disabled" href="" data-toggle="tab"><strong>강좌 개설 정보</strong></a></li>
								<li class="nav-item"><a class="nav-link active" href="#activity1" data-toggle="tab">전공</a></li>
								<li class="nav-item"><a class="nav-link" href="#activity2" data-toggle="tab">교양</a></li>

							</ul>
						</div>
						<!-- /.card-header -->
						<div class="card-body">
							<div class="tab-content">
								<form class="navbar-form">
									<button type="submit" class="btn btn-outline-primary btn-flat" style="float: right; margin-bottom: 5px;">검색</button>
									<input type="text" class="form-control rounded-0" style="width: 15%; float: right; margin-bottom: 5px;">
								</form>
								<div class="active tab-pane" id="activity1">
									<!-- Post -->
									<div class="post">
										<!-- Table row -->
										<div class="row">
											<div class="col-12 table-responsive">
												<table class="table table-striped">
													<thead style="text-align: center;">
														<tr>
															<th>과목 명</th>
															<th>분류</th>
															<th>학점</th>
															<th>강의 교수</th>
															<th>시험 일자</th>
														</tr>
													</thead>
													<tbody style="text-align: center;">
														<tr>
															<td><a href="class-listDetail.jsp" onClick="window.open(this.href, '', 'width=816, height=651'); return false;">test-Page</a></td>
															<td>전선</td>
															<td>3</td>
															<td>이성호</td>
															<td>2020.12.08</td>
														</tr>
														<tr>
															<td>Need for Speed IV</td>
															<td>교선</td>
															<td>3</td>
															<td>박길동</td>
															<td>2020.11.28</td>
														</tr>
														<tr>
															<td>Monsters DVD</td>
															<td>전선</td>
															<td>3</td>
															<td>김휘경</td>
															<td>2020.12.03</td>
														</tr>
														<tr>
															<td>Grown Ups Blue Ray</td>
															<td>전선</td>
															<td>3</td>
															<td>유승제</td>
															<td>2020.12.01</td>
														<tr>
															<td>Need for Speed IV</td>
															<td>교선</td>
															<td>3</td>
															<td>김지숙</td>
															<td>2020.12.08</td>
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
															<th>과목 명</th>
															<th>분류</th>
															<th>학점</th>
															<th>강의 교수</th>
															<th>시험 일자</th>
														</tr>
													</thead>
													<tbody style="text-align: center;">
														<tr>
															<td>배고프다</td>
															<td>전선</td>
															<td>3</td>
															<td>돼지</td>
															<td>2020.11.22</td>
														</tr>
														<tr>
															<td>자바가도대체뭔데</td>
															<td>교선</td>
															<td>3</td>
															<td>날힘들게해</td>
															<td>2020.11.22</td>
														</tr>
														<tr>
															<td>뭐먹을까</td>
															<td>전선</td>
															<td>3</td>
															<td>음식</td>
															<td>2020.11.22</td>
														</tr>
														<tr>
															<td>운동해야되는데</td>
															<td>전선</td>
															<td>3</td>
															<td>배존나나오네</td>
															<td>2020.11.22</td>
														<tr>
															<td>왜맘대로안움직이니 ?</td>
															<td>교선</td>
															<td>3</td>
															<td>뒈질래?</td>
															<td>2020.11.22</td>
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
															<th>토론명</th>
															<th>참여기간</th>
															<th>게시글수</th>
															<th>댓글수</th>
															<th>참여여부</th>

														</tr>
													</thead>
													<tbody>

														<tr>
															<td>2</td>
															<td>Call of Duty</td>
															<td>팀플이란 뭐라고 생각하는가?</td>
															<td>2015-05-05~2020-05-06</td>
															<td>이성호</td>
															<td>46%</td>
															<td>y/n</td>

														</tr>
														<tr>
															<td>1</td>
															<td>Need for Speed IV</td>
															<td>코딩은 필요한가?</td>
															<td>2015-05-05~2020-05-06</td>
															<td>박길동</td>
															<td>46%</td>
															<td>y/n</td>

														</tr>

														<tr>
															<td>1</td>
															<td>Grown Ups Blue Ray</td>
															<td>자율 정신이란?</td>
															<td>2015-05-05~2020-05-06</td>
															<td>유승제</td>
															<td>46%</td>
															<td>y/n</td>
														<tr>
															<td>1</td>
															<td>Need for Speed IV</td>
															<td>상대방의 마음을 읽는 방법</td>
															<td>2015-05-05~2020-05-06</td>
															<td>김지숙</td>
															<td>46%</td>
															<td>y/n</td>

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
