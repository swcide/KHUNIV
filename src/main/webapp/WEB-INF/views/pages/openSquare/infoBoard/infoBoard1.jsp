<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/pages/common/header.jsp"%>

<div class="content-wrapper" style="margin-left: 0px;">
	<!-- Content Header (Page header) -->
	<section class="content-header" style="margin-bottom: -10px;">
		<div class="container-fluid">
			<div class="row mb-2"></div>
		</div>
	</section>
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<%@ include file="../common/sidebar.jsp" %>
				<div>
					<div style="padding: 20px 30px 20px 25px;">
						<h3 style="margin-left: 3.5%;">🏳️ 열린 광장</h3>
					</div>
					<div class="card" style="width: 180%; margin-left: 5%;">

						<div class="card-header p-2">
							<p style="margin-top: 5px;">&nbsp;&nbsp;&nbsp;※ 취업정보 게시판</p>
							<ul class="nav nav-pills">
								<li class="nav-item"><a class="nav-link active"
									href="#activity1" data-toggle="tab">test1</a></li>

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
															<th>번호</th>
															<th>제목</th>
															<th>작성자</th>
															<th>날짜</th>
														</tr>
													</thead>
													<tbody>

														<tr>
															<td>4</td>
															<td>인문사회 대학 엉망진창이네..</td>
															<td>조원영</td>
															<td>2020-09-23</td>
														</tr>
														<tr>
															<td>3</td>
															<td>[비밀글] 안녕하세요 윤기훈 총장님께 질문있습니다.</td>
															<td>비밀글</td>
															<td>2020-09-12</td>
														</tr>
														<tr>
															<td>2</td>
															<td>[비밀글] 안녕하십니까 대학탐방과 관련해서 질문드립니다.</td>
															<td>비밀글</td>
															<td>2020-09-03</td>
														</tr>
														<tr>
															<td>1</td>
															<td>학사 편입학 공인영어 질문</td>
															<td>이성호</td>
															<td>2020-09-01</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
									<a href="../insert.jsp" style="float: right; margin-right: 15px;">글
										작성하기</a>

								</div>
								<!-- /.tab-pane -->

								
				</div>
			</div>
		</div>
	</section>
</div>
<script src="/woosong/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="/woosong/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- jQuery UI -->
<script src="/woosong/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- AdminLTE App -->
<script src="/woosong/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/woosong/dist/js/demo.js"></script>
<!-- fullCalendar 2.2.5 -->
<script src="/woosong/plugins/moment/moment.min.js"></script>
<!-- Page specific script -->

<%@ include file="/pages/common/footer.jsp"%>