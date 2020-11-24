<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHCU | 강의 개설 정보</title>
</head>
<body>
	<%@include file="../common/administration_header.jsp"%>
	<div class="body">
		<div role="main" class="main">
			<section class="page-header page-header-classic">
				<div class="container">
					<div class="row"></div>
					<div class="row">
						<div class="col p-static">
							<h1 data-title-border>강의 개설 정보</h1>
						</div>
					</div>
				</div>
			</section>
			<div class="container py-2">
				<div class="row">
					<!-- 학적관리 사이드바 -->
					<div class="col-lg-3 order-2 order-lg-1 mt-4 mt-lg-0">
						<%@include file="ad_Sidebar.jsp"%>
					</div>

					<!-- 컨텐츠 -->
					<div class="col-lg-9 order-1 order-lg-2">
						<div class="row">
							<div class="col-lg-12">
								<div class="tabs">
									<ul class="nav nav-tabs nav-justified flex-column flex-md-row">
										<li class="nav-item active"><a class="nav-link" href="#popular10" data-toggle="tab" class="text-center">전공 강의</a></li>
										<li class="nav-item"><a class="nav-link" href="#recent10" data-toggle="tab" class="text-center">교양 강의</a></li>
									</ul>

									<div class="tab-content">
										<div id="popular10" class="tab-pane active">
											<table id="datatable1" class="table table-hover">
												<thead>
													<tr>
														<th style="text-align: center;">강의번호</th>
														<th style="text-align: center;">강의명</th>
														<th style="text-align: center;">학점</th>
														<th style="text-align: center;">과목분류</th>
														<th style="text-align: center;">담당교수</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="ll" items="${ll}">
														<tr onclick="openNew(this)" class="cursor_on_finger">
															<td style="text-align: center;">${ll.classNo }</td>
															<td style="text-align: center;">${ll.className }</td>
															<td style="text-align: center;">${ll.credit }</td>
															<td style="text-align: center;">${ll.classType }</td>
															<td style="text-align: center;">${ll.profName }
																<input type="hidden" value="${ll.pNo}">
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
										<!-- 										popular -->
										<div id="recent10" class="tab-pane">
											<table id="datatable2" class="table table-hover">
												<thead>
													<tr>
														<th style="text-align: center;">강의번호</th>
														<th style="text-align: center;">강의명</th>
														<th style="text-align: center;">학점</th>
														<th style="text-align: center;">과목분류</th>
														<th style="text-align: center;">담당교수</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="lp" items="${lp}">
														<tr onclick="openNew(this)" class="cursor_on_finger">
															<input type="hidden" value="${lp.classNo}">
															<td style="text-align: center;">${lp.classNo }</td>
															<td style="text-align: center;">${lp.className }</td>
															<td style="text-align: center;">${lp.credit }</td>
															<td style="text-align: center;">${lp.classType }</td>
															<td style="text-align: center;">${lp.profName }
																<input type="hidden" value="${lp.pNo}">
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
										<!-- 											recent -->
									</div>
									<!-- 									tabcontent -->
								</div>
								<!-- 								tabs -->

							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>

	<%@include file="../common/footer.jsp"%>


	<!-- JavaScripts
	============================================= -->
	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/plugins.min.js"></script>

	<!-- Bootstrap Data Table Plugin -->
	<script src="resources/js/bs-datatable2.js"></script>

	<script>
		$(document).ready(function() {
			$('#datatable1').dataTable();
			$('#datatable2').dataTable();
		});

		function openNew(obj) {
			var classNo = $(obj).children().siblings('input').val();
			var pNo = $(obj).children().children('input').val();
			console.log(classNo);
			console.log(pNo);
			window
					.open(this.href = 'ad_syllabus.do?classNo=' + classNo
							+ '&pNo=' + pNo, '',
							'resizable=yes, width=900, height=800 left=700px top=100px');
			return false;
		};
	</script>
</body>
</html>