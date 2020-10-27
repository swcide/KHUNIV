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
									<li class="nav-item"><a href="#" class="nav-link">
															<i class="far fa-dot-circle nav-icon"></i>
															<p>수강과목</p>
													</a></li>
								
										
										
										<ul class="nav nav-treeview">
											<li class="nav-item has-treeview"><a href="#"
												class="nav-link"> <i class="nav-icon fas fa-edit"></i>
													<p>Grown ups
														 <i class="right fas fa-angle-left"></i>
													</p>
											</a>
												 </li>
										</ul>
																			 
									<li class="nav-item has-treeview"><a href="#"
										class="nav-link"> <i class="nav-icon fas fa-table"></i>
											<p>
												과제및시험 <i class="right fas fa-angle-left"></i>
											</p>
									</a>
										
												<ul class="nav nav-treeview">
													<li class="nav-item"><a href="assignment.jsp" class="nav-link">
															<i class="far fa-dot-circle nav-icon"></i>
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
													<li class="nav-item"><a href="specialLecture.jsp" class="nav-link">
															<i class="far fa-dot-circle nav-icon"></i>
															<p>특강신청</p>
													</a></li>
												</ul>
												<ul class="nav nav-treeview">
													<li class="nav-item"><a href="specialLectureDetail.jsp" class="nav-link">
															<i class="far fa-dot-circle nav-icon"></i>
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
								<!-- ---------inset end point--------------- -->
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
								
								



													










													

									
										
										
										
										
										


































