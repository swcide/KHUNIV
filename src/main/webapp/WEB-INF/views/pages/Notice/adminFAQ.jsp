<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>


<script

	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<style type="text/css">
.tr_hide {
	display: none;
}
.td_heading {
	cursor: pointer;
}
.td_hide{
	font-weight: bold;
	color: black;
}
</style>

<script type="text/javascript">
	$(function() {
		var article = (".table .show");
		$(".table .item  td").click(function() {
			var myArticle = $(this).parents().next("tr");
			if ($(myArticle).hasClass('tr_hide')) {
				$(article).removeClass('show').addClass('tr_hide');
				$(myArticle).removeClass('tr_hide').addClass('show');
			}
			else {
				$(myArticle).addClass('tr_hide').removeClass('show');
			}
		});
	});
</script>
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
				<div class="col-md-2">

					<!-- Main Sidebar Container -->
					<aside class="main-sidebar sidebar-dark-primary elevation-4"
						style="height: 1052px;">
						<!-- Brand Logo -->
						<a href="index3.html" class="brand-link"> <img
							src="/woosong/dist/img/AdminLTELogo.png" alt="AdminLTE Logo"
							class="brand-image img-circle elevation-3" style="opacity: .8">
							<span class="brand-text font-weight-light">상담센터</span>
						</a>

						<!-- Sidebar -->
						<div class="sidebar">
							<!-- Sidebar user panel (optional) -->
							<div class="user-panel mt-3 pb-3 mb-3 d-flex">
								<div class="image">
									<img src="/woosong/dist/img/user2-160x160.jpg"
										class="img-circle elevation-2" alt="User Image">
								</div>
								<div class="info">
									<a href="#" class="d-block">조원영</a>
								</div>
							</div>

							<!-- Sidebar Menu -->
							<nav class="mt-2">
								<ul class="nav nav-pills nav-sidebar flex-column"
									data-widget="treeview" role="menu" data-accordion="false">
									<li class="nav-header"></li>
									<li class="nav-item"><a href="adminFAQ.jsp" class="nav-link">
											<i class="nav-icon far fa-calendar-alt"></i>
											<p>FAQ</p>
									</a></li>
									<!-- 강의/성적 -->
									<li class="nav-item has-treeview"><a href="adminQ&A.jsp"
										class="nav-link"> <i class="nav-icon fas fa-book"></i>
											<p>Q&A</p></a></li>
									<li class="nav-item has-treeview"><a
										href="adminEmpCounselling.jsp" class="nav-link"> <i
											class="nav-icon fas fa-book"></i> 취업상담
									</a></li>
								</ul>
							</nav>
						</div>
					</aside>
				</div>
				<!-- /.col -->


				<div class="col-md-10">

					<div class="card card-outline card-tabs">

						<div class="card-header ui-sortable-handle" style="cursor: move;">
							<h3 class="card-title">
								<i class="ion ion-clipboard mr-1"></i>FAQ
							</h3>
							<div class="card-tools">
								<div class="input-group input-group-sm" style="width: 150px;">
									<input type="text" name="table_search"
										class="form-control float-right" placeholder="Search">

									<div class="input-group-append">
										<button type="submit" class="btn btn-default">
											<i class="fas fa-search"></i>
										</button>
									</div>
								</div>
							</div>

						</div>

						<!-- /.card-header -->
						<div class="card-body">
							<div class="active tab-pane" id="activity1">
								<!-- Post -->
								<div class="post">
									<!-- Table row -->
									<div class="row">
										<div class="col-12 table-responsive">
											<table class="table">


												<thead>
													<tr>
														<th>글번호</th>
														<th style="text-align: center;">제목</th>
														<th>키워드</th>
														<th>조회수</th>
													</tr>
												</thead>

												<tbody>

													<tr class="item">

														<td>10</td>
														<td class="td_heading">Q. 분실물은 어디서 찾을 수 있을까요?</td>
														<td>등록금납부</td>
														<td>11</td>
													</tr>
													<tr class="tr_hide">
														<td></td>
														<td class="td_hide" colspan="3"><br>A. 애초에 잃어버리지
															않는 습관을 들이면 어떨까요?<br><br></td>
													</tr>
													<tr class="item">
														<td>9</td>
														<td class="td_heading">Q. 입학 후 다른 학부로 옮길 수 있나요?</td>
														<td>등록금납부</td>
														<td>31</td>
													</tr>
													<tr class="tr_hide">
														<td></td>
														<td class="td_hide" colspan="3"><br>A) 못 옮깁니다!<br><br></td>
													</tr>
													<tr class="item">
														<td>8</td>
														<td class="td_heading">Q. 등록금 카드납부 가능한가요?</td>
														<td>등록금납부</td>
														<td>331</td>
													</tr>
													<tr class="tr_hide">
														<td></td>
														<td class="td_hide" colspan="3"><br> A) 카드납부시
															수수료비용은 별도입니다.<br><br></td>
													</tr>
													<tr class="item">
														<td>7</td>
														<td class="td_heading">Q. 장학금을 신청하기 위한 최소학점은?</td>
														<td>장학금</td>
														<td>323</td>
													</tr>
													<tr class="tr_hide">
														<td></td>
														<td class="td_hide" colspan="3"><br>A) 확실히 알아보고
															다시 알려드리겠습니다<br><br></td>
													</tr>
													<tr class="item">
														<td>6</td>
														<td class="td_heading">Q. 학기마다 장학금 신청해야 하나요?</td>
														<td>장학금</td>
														<td>233</td>
													</tr>
													<tr class="tr_hide">
														<td></td>
														<td class="td_hide" colspan="3"><br>A) 네, 학기마다
															직접 신청하셔야합니다.<br><br></td>
													</tr>
													<tr class="item">
														<td>5</td>
														<td class="td_heading">Q. 휴학자에게도 등록금 환불이 되나요?</td>
														<td>등록금환불</td>
														<td>132</td>
													</tr>
													<tr class="tr_hide">
														<td></td>
														<td class="td_hide" colspan="3"><br> A) 휴학자 등록금
															환불 안됩니다.<br><br></td>
													</tr>
													<tr class="item">
														<td>4</td>
														<td class="td_heading">Q. 자퇴자는 등록금 환불이 어떻게 되나요?</td>
														<td>등록금환불</td>
														<td>113</td>
													</tr>
													<tr class="tr_hide">
														<td></td>
														<td class="td_hide" colspan="3"><br> A) 자퇴자도 등록금
															환불 안됩니다.<br><br></td>
													</tr>
													<tr class="item">
														<td>3</td>
														<td class="td_heading">Q. 등록금은 언제 환불받을 수 있나요?</td>
														<td>등록금환불</td>
														<td>643</td>

													</tr>

													<tr class="tr_hide">
														<td></td>
														<td class="td_hide" colspan="3"><br> A) 등록금 환불
															불가입니다.<br><br></td>
													</tr>

													<tr class="item">

														<td>2</td>
														<td class="td_heading">Q. 졸업논문 미통과시 등록금은 어떻게 되나요?</td>
														<td>등록금</td>
														<td>673</td>
													</tr>
													<tr class="tr_hide">
														<td></td>
														<td class="td_hide" colspan="3"><br>A) 등록금 다시
															납부하셔야 합니다.<br><br></td>
													</tr>
													<tr class="item">
														<td>1</td>
														<td class="td_heading">Q. 9학기 등록금은 어떻게 되나요?</td>
														<td>등록금</td>
														<td>973</td>
													</tr>
													<tr class="tr_hide">
														<td></td>
														<td class="td_hide" colspan="3" style="font-weight: bold;"><br>
															A) 14,038,802원입니다.</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="card-tools" align="center">
							<button type="button" class="btn btn-default" style="margin-right: 50px; float: right;">
									<i class="fas fa-pencil-alt"> </i> FAQ 등록
							</button>

						</div>
					</div>
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

<%@ include file="../common/footer.jsp"%>