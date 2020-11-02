<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHCU | 등록금 납부 확인</title>
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
							<h1 data-title-border>등록금 납부 확인</h1>
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
										<li class="nav-item active"><a class="nav-link" href="#popular10" data-toggle="tab" class="text-center">등록금 납부 확인</a></li>
									</ul>
									<div class="tab-content">
										<div id="popular10" class="tab-pane active">
											<table class="table table-hover">
												<tbody>
													<tr>
														<th style="text-align: center;" colspan="2">신청 학점</th>
														<td colspan="2">(6/12)</td>
													</tr>
													<tr>
														<th style="text-align: center;" colspan="2">등록금(수업료)</th>
														<td colspan="2">480,000원</td>
													</tr>
													<tr>
														<th style="text-align: center;" colspan="2">장학금</th>
														<td colspan="2">0원</td>
													</tr>
													<tr>
														<th style="text-align: center;" colspan="2">납부할 금액</th>
														<td colspan="2">0원</td>
													</tr>
													<tr>
														<th style="text-align: center;" colspan="2">납부 상태</th>
														<td colspan="2"><span class="badge badge-primary badge-sm">납부완료</span> <span class="badge badge-secondary text-light badge-sm">납부 필요</span></td>
													</tr>
												</tbody>
											</table>
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