<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHCU | 휴학</title>

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
							<h1 data-title-border>휴학신청확인</h1>
						</div>
					</div>
				</div>
			</section>
			<div class="container py-2">
				<div class="row">
					<!--  학적관리 사이드바 -->
					<div class="col-lg-3 order-2 order-lg-1 mt-4 mt-lg-0">
						<%@include file="ad_Sidebar.jsp"%>
					</div>
					<!--  컨텐츠  -->
					<div class="col-lg-9 order-1 order-lg-2">
						<div class="row">
							<div class="col-lg-12">
								<div class="tabs">
									<ul class="nav nav-tabs nav-justified flex-column flex-md-row">
										<li class="nav-item active"><a class="nav-link">휴학신청상태</a></li>
									</ul>
									<div class="tab-content">
										<div id="popular10">
											<table class="table table">
												<thead>
													<tr>
														<th>학과</th>
														<th style="text-align: center;">학년</th>
														<th style="text-align: center;">학번</th>
														<th style="text-align: center;">이름</th>
														<th style="text-align: center;">신청분류</th>
														<th style="text-align: center;">파일첨부</th>
														<th style="text-align: center;">신청여부</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>${view.deptName }</td>
														<td style="text-align: center;">${view.semester / 2}</td>
														<td style="text-align: center;">${view.sNo }</td>
														<td style="text-align: center;">${view.sName }</td>
														<c:if test="${!empty view.absReason }">
															<td style="text-align: center;">
																<span class="badge badge-primary badge-md" style="padding: 5px;">${view.absReason }</span>
															</td>
														</c:if>
														<c:if test="${empty view.absReason }">
															<td style="text-align: center;">
																<span class="badge badge-primary badge-md" style="padding: 5px;">미신청</span>
															</td>
														</c:if>
														<c:if test="${empty view.absenceFileName }">
															<td style="text-align: center;">
																<a href=""><span class="badge badge-primary badge-md" style="padding: 5px;">미첨부</span></a>
															</td>
														</c:if>
														<c:if test="${!empty view.absenceFileName }">
															<td style="text-align: center;">
																<a href=""><span class="badge badge-primary badge-md" style="padding: 5px;">첨부</span></a>
															</td>
														</c:if>
														<c:if test="${view.absenceStatus eq 'N' || empty view.absenceStatus }">
															<td style="text-align: center;">
																<span class="badge badge-primary badge-md" style="padding: 5px;">미신청</span>
															</td>
														</c:if>
														<c:if test="${view.absenceStatus eq 'Y'}">
															<td style="text-align: center;">
																<span class="badge badge-primary badge-md" style="padding: 5px;">신청</span>
															</td>
														</c:if>
													</tr>
												</tbody>
											</table>
										</div>
										<div align="right">
											<input type="hidden" name="sNo" id="sNo" value="${view.sNo }">
											<button type="button" class="btn btn-primary btn-xs mb-2" onClick="openNew()">휴학신청 바로가기</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		function openNew() {
			var sNo = $('#sNo').val();
			console.log(sNo)
			window.open(this.href = 'ad_leave_absence.do?sNo=' + sNo, '',
							'resizable=yes, width=900, height=800 left=700px top=100px')
			return false;

		};
	</script>
	<%@include file="../common/footer.jsp"%>
</body>
</html>