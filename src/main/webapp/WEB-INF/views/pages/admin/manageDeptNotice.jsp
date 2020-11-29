<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
					<h3>공지사항</h3>
					<p class="text-subtitle text-muted">모든 기능은 필요에 의해 이용하여 주시길 바랍니다.</p>
				</div>
				<section class="section">
					<div class="row mb-4">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">학사 공지</h4>
								</div>
								<div class="card-content">
									<!-- table hover -->
									<div class="table-responsive">
										<table class="table table-hover mb-0" style="text-align: center">
											<thead>
												<tr>
													<th style="text-align: left">#</th>
													<th>제목</th>
													<th>작성자</th>
													<th>작성일</th>
													<th>조회수</th>
												</tr>
											</thead>
											<tbody>
									<c:forEach var="n" items="${list}">
									<c:set var="nSecret" value="${n.nSecret}"/>
										<c:choose>
											<c:when test="${nSecret == 'N' }">
												<tr>
													<td>${n.nId}</td>
													<td>
														<c:url var="nDetail" value="manageNoticeDetail.do">
															<c:param name="nId" value="${n.nId}"/>
															<c:param name="currentPage" value="${ pi.currentPage }"/>
															<c:param name="nType" value="${n.nType }"/>
														</c:url>
														<a class="ntitle" href="${nDetail}">${n.nTitle}</a>
													</td>
													
													<td>${n.nName }</td>
													<td>${n.nCreateDate}</td>
													<td>${n.nCount}</td>											
												</tr>	
											</c:when>
											<c:when test="${admin!=null}">
												<tr>
													<td>${n.nId }</td>
													<td>
														<c:url var="nDetail" value="manageNoticeDetail.do">
															<c:param name="nId" value="${n.nId }"/>
															<c:param name="currentPage" value="${ pi.currentPage }"/>
															<c:param name="nType" value="${n.nType }"/>
														</c:url>
														
														
														<c:if test="${nSecret eq 'N'}">
															<a id="ntitle" href="${nDetail}">
																${n.nTitle }
															</a>
														</c:if>
														
														<c:if test="${nSecret eq 'Y'}">
															<a id="ntitle" href="${nDetail}">
																<span style="color:red">(비밀글)</span>${n.nTitle }
															</a>
														</c:if>
													</td>
													
													<td>${n.nName }}</td>
													<td>${n.nCreateDate}</td>
													<td>${n.nCount}</td>
																							
												</tr>	
											</c:when>
										</c:choose>
									</c:forEach>
									
								</tbody>
										</table>
										<a onclick="location.href='manageInsertView.do?nType=1'" class="btn icon icon-left btn-primary float-right" style="margin: 10px 73px  10px 10px;"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit">
												<path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path>
												<path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg> 공지 작성</a>
									</div>
									<div class="card-tools" align="center">
							<ul class="pagination pagination-sm" style="display: inline-flex">
								<!-- 이전데스요 -->
								<c:if test="${ pi.currentPage eq 1 }">
									
										<li class="page-item">
											<a class="page-link" >
												<i class="fas fa-angle-left"></i>
											</a>
										</li>
									
								</c:if>
								<c:if test="${ pi.currentPage ne 1 }">
								   <c:url var="before" value="nList.do?nType=1">
					                  <c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
					       		   </c:url>
									 	<li class="page-item">
											<a class="page-link" href="${ before }">
												<i class="fas fa-angle-left"></i>
											</a>
										</li>
								</c:if>
								
								<!-- 페이징처리데스요 -->
							  	<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
									<c:if test="${ p eq pi.currentPage }">
									
										<li class="page-item active">
											<a class="page-link" href="${ pagination }">${p}</a>
										</li>
									</c:if>
									<c:if test="${ p ne pi.currentPage }">
									 <c:url var="pagination" value="nList.do?nType=1">
					                    <c:param name="currentPage" value="${ p }"/>
					                 </c:url>
					                 	<li class="page-item ">
											<a class="page-link" href="${ pagination }">${p}</a>
										</li>
									</c:if>
								</c:forEach>
								<c:if test="${ pi.currentPage eq pi.maxPage }">
								
					              		<li class="page-item">
					              			<a class="page-link" >
												<i class="fas fa-angle-right"></i>
											</a>
										</li>
									
				            	</c:if>	
				            	
<!-- 				            	다음대음다음대음 -->
				            	<c:if test="${pi.currentPage ne pi.maxPage }">
									<c:url var="after" value="nList.do?nType=1">
						             	<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
						            </c:url> 
									
									<li class="page-item">
										<a class="page-link" href="${after}">
											<i class="fas fa-angle-right"></i>
										</a>
									</li>
								</c:if>
							</ul>
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
