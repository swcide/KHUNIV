<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<% 
 System.out.println("name: "+(String)request.getAttribute("sNo"));
//     System.out.println("email: "+email);
//      System.out.println("phone: "+phone);
//      System.out.println("address: "+address);
//      System.out.println("stotalPrice: "+stotalPrice);
//      System.out.println("totalPrice: "+totalPrice);
     %>
<html>
<head>
<meta charset="UTF-8">
<title>KHCU | 등록금 납부</title>
</head>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<body>
	<%@include file="../common/administration_header.jsp"%>
	<div class="body">
		<div role="main" class="main">
			<section class="page-header page-header-classic">
				<div class="container">
					<div class="row"></div>
					<div class="row">
						<div class="col p-static">
							<h1 data-title-border>등록금 납부</h1>
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
										<li class="nav-item active"><a class="nav-link" href="#popular10" data-toggle="tab" class="text-center">등록금 고지서</a></li>
									</ul>
									<div class="tab-content">
										<div id="popular10" class="tab-pane active">
											<table class="table table-hover">
												<thead>
													<tr>
														<th>#</th>
														<th style="text-align: center;">학년</th>
														<th style="text-align: center;">강의명</th>
														<th style="text-align: center;">학점</th>
														<th style="text-align: center;">시험일자</th>
														<th style="text-align: center;">담당교수</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td style="text-align: center;">4</td>
														<td style="text-align: center;">Mark</td>
														<td style="text-align: center;">Mark</td>
														<td style="text-align: center;">Otto</td>
														<td style="text-align: center;">이성호</td>
													</tr>
													<tr>
														<td>2</td>
														<td style="text-align: center;">1</td>
														<td style="text-align: center;">Mark</td>
														<td style="text-align: center;">Mark</td>
														<td style="text-align: center;">Otto</td>
														<td style="text-align: center;">@mdo</td>
													</tr>
													<tr>
														<td>3</td>
														<td style="text-align: center;">3</td>
														<td style="text-align: center;">Mark</td>
														<td style="text-align: center;">Mark</td>
														<td style="text-align: center;">Otto</td>
														<td style="text-align: center;">@mdo</td>
													</tr>
												</tbody>
											</table>
											
											<table class="table table-hover">
											<tbody>
											<tr>
											<th style="text-align: center;" colspan="2">신청 학점</th>
											<td  colspan="2">(6/12)</td>
											</tr>
											<tr>
											<th style="text-align: center;" colspan="2">등록금(수업료)</th>
											<td colspan="2">480,000원</td>
											</tr>
											<tr>
											<th style="text-align: center;" colspan="2">장학금</th>
											<td  colspan="2">0원</td>
											</tr>
											<tr>
											<th style="text-align: center;" colspan="2">납부할 금액</th>
											<td colspan="2" id="pay">1.000</td>
											</tr>
											<tr>
											<th style="text-align: center;" colspan="2">납부 계좌</th>
											<td  colspan="2">신한 ) 110 - 502 - 549567</td>
											</tr>
											</tbody>
											</table>
										</div>
									</div>
								</div>
								<input type="hidden" id="sNo" value=${loginUser.sNo }>
								<input type="hidden" id="sEmail" value=${loginUser.sEmail }>
								<input type="hidden" id="sName" value=${loginUser.sName }>
								<input type="hidden" id="sPhone" value=${loginUser.sPhone }>
								<input type="hidden" id="sAddress" value=${loginUser.sAddress }>
											<button type="submit" class="btn btn-primary btn-xs mb-2 float-right" onClick="window.open(this.href='ad_tuition_payment.do', '', 'resizable=yes, width=900, height=800 left=700px top=100px'); return false;" >즉시 납부하기</button>
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