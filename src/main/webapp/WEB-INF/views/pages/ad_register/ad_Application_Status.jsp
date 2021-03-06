<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHCU | 수강신청 현황</title>
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
							<h1 data-title-border>수강신청 현황</h1>
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
										<li class="nav-item active"><a class="nav-link" href="#popular10" data-toggle="tab" class="text-center">수강신청목록</a></li>
									</ul>
									<div class="tab-content">
										<div id="popular10" class="tab-pane active">
											<table class="table table-hover">
												<thead>
													<tr>
														<th>#</th>
														<th style="text-align: center;">학기</th>
														<th style="text-align: center;">강의명</th>
														<th style="text-align: center;">학점</th>
														<th style="text-align: center;">담당교수</th>
													</tr>
												</thead>
												<tbody>
												<c:set var = "total" value = "0" />
													<c:forEach var="r" items="${r }" varStatus="status">
													<tr>
														<td style="text-align: center;">${status.index+1 }</td>
														<td style="text-align: center;">${r.semNo }</td>
														<td style="text-align: center;">${r.cName }</td>
														<td style="text-align: center;">${r.credit }</td>
														<td style="text-align: center;">${r.pName }</td>
														<c:set var= "total" value="${total + r.credit}"/>
													</tr>
													</c:forEach>
												</tbody>
											</table>
											<div class="row mb-4 counters counters-sm text-dark">
												<div class="col-sm-6 col-lg-3 mb-4 mb-lg-0">
													<div class="counter">
														<strong data-to="18">18</strong> <label>신청 가능 학점</label>
													</div>
												</div>
												<div class="col-sm-6 col-lg-3 mb-4 mb-lg-0">
													<div class="counter">
														<strong data-to="<c:out value="${total}"/>">12</strong> <label>신청 학점</label>
													</div>
												</div>
												<div class="col-sm-6 col-lg-3 mb-4 mb-sm-0">
													<div class="counter">
														<strong data-to=" ">6</strong> <label>남은 학점</label>
													</div>
												</div>
												<div class="col-sm-6 col-lg-3">
													<div class="counter">
														<strong data-to="6">6</strong> <label>합계</label>
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
			</div>
		</div>
	</div>
	<%@include file="../common/footer.jsp"%>
</body>
</html>