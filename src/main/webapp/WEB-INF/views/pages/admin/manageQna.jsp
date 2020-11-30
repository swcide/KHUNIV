<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>KHCU | ADMIN</title>

<link rel="stylesheet" href="resources/assets/css/bootstrap.css">

<link rel="stylesheet" href="resources/assets/vendors/chartjs/Chart.min.css">

<link rel="stylesheet" href="resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="resources/assets/css/app.css">
<link rel="shortcut icon" href="resources/assets/images/favicon.svg" type="image/x-icon">
</head>
<body>
	<div id="app">
		<!-- side bar -->
		<%@include file="adminSideBar.jsp"%>
		<!-- header -->
		<div id="main">
			<%@ include file="adminHeader.jsp"%>
			<!--  contents -->
			<div class="main-content container-fluid">
				<div class="page-title">
					<h3>QnA</h3>
					<p class="text-subtitle text-muted">모든 기능은 필요에 의해 이용하여 주시길 바랍니다.</p>
				</div>
				<section class="section">
					<div class="row mb-4">
						<div class="col-md-12">
							<div class="card">
								<div class="card-content">
									<div class="card-body"></div>
									<div class="table-responsive">
										<table class="table table-hover mb-0" style="text-align: center">
											<thead>
												<tr>
													<th style="text-align: left">#</th>
													<th style="text-align: left">제목</th>
													<th>작성자</th>
													<th>답변상태</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="aq" items="${list }">
													<tr>
														<td class="text-bold-500" style="text-align: left">${aq.qnaId }</td>
														<td style="text-align: left"><c:url var="QnA_detail" value="manageQnA_detail.do">
																<c:param name="qnaId" value="${aq.qnaId}" />
																<c:param name="currentPage" value="${pi.currentPage }" />
															</c:url> <a href="${QnA_detail }">${aq.qnaTitle }</a></td>
														<td class="text-bold-500">${aq.qnaName }</td>
														<td><c:if test="${aq.rCount > 0}">
																<span class="badge bg-secondary">답변완료</span>
															</c:if> <c:if test="${aq.rCount== 0}">
																<span class="badge bg-warning">답변대기</span>
															</c:if></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										<!-- pageNation -->
										<div class="card-tools" align="center">
											<ul class="pagination pagination-sm" style="display: inline-flex">
												<c:if test="${ pi.currentPage eq 1 }">
													<li class="page-item"><a class="page-link">
															<i class="fas fa-angle-left"></i>
														</a></li>
												</c:if>
												
												<c:if test="${ pi.currentPage ne 1 }">
													<c:url var="before" value="manageQna.do?nType=1">
														<c:param name="currentPage" value="${ pi.currentPage - 1 }" />
													</c:url>
													<li class="page-item"><a class="page-link" href="${ before }">
															<i class="fas fa-angle-left"></i>
														</a></li>
												</c:if>
												
												<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
													<c:if test="${ p eq pi.currentPage }">

														<li class="page-item active"><a class="page-link" href="${ pagination }">${p}</a></li>
													</c:if>
													<c:if test="${ p ne pi.currentPage }">
														<c:url var="pagination" value="manageQna.do?nType=1">
															<c:param name="currentPage" value="${ p }" />
														</c:url>
														<li class="page-item "><a class="page-link" href="${ pagination }">${p}</a></li>
													</c:if>
												</c:forEach>
												<c:if test="${ pi.currentPage eq pi.maxPage }">
													<li class="page-item"><a class="page-link">
															<i class="fas fa-angle-right"></i>
														</a></li>
												</c:if>
												
												<c:if test="${pi.currentPage ne pi.maxPage }">
													<c:url var="after" value="manageQna.do?nType=1">
														<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
													</c:url>
													<li class="page-item"><a class="page-link" href="${after}">
															<i class="fas fa-angle-right"></i>
														</a></li>
												</c:if>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<script src="resources/assets/js/feather-icons/feather.min.js"></script>
	<script src="resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script src="resources/assets/js/app.js"></script>

	<script src="resources/assets/vendors/chartjs/Chart.min.js"></script>
	<script src="resources/assets/vendors/apexcharts/apexcharts.min.js"></script>
	<script src="resources/assets/js/pages/dashboard.js"></script>

	<script src="resources/assets/js/main.js"></script>
</body>
</html>
