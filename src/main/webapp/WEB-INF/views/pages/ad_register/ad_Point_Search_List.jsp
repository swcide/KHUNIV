<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHCU | 성적조회</title>

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
							<h1 data-title-border>성적조회</h1>
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
										<li class="nav-item active"><a class="nav-link">성적 조회</a></li>
									</ul>
									<div class="tab-content">
										<table class="table ">
											<thead>
												<tr>
													<th>년도/학기</th>
													<th style="text-align: center;">신청학점</th>
													<th style="text-align: center;">취득학점</th>
													<th style="text-align: center;">평점평균</th>
													<th style="text-align: center;">백점환산점수</th>
													<th style="text-align: center;">상세보기</th>
												</tr>
											</thead>
											<c:forEach var="sp" items="${sp }">
												<tbody>
													<tr>
														<c:url var="detail" value="ad_point_search.do">
															<c:param name="semYear" value="${sp.semYear }" />
															<c:param name="semNo" value="${sp.semNo }" />
															<c:param name="sNo" value="${sp.sNo }" />
														</c:url>
														<td>${sp.semYear }/${sp.semNo }</td>
														<td style="text-align: center;">${sp.count *3}</td>
														<td style="text-align: center;">${sp.count *3}</td>
														<td style="text-align: center;">
															<fmt:formatNumber value="${sp.avgPoint /4 }" pattern=".0" />
														</td>
														<td style="text-align: center;">
															<fmt:formatNumber value="${sp.point }" pattern=".00" />
														</td>
														<td style="text-align: center;">
															<button class="btn btn-primary btn-xs mb-2" onClick="window.open('${detail}','', 'resizable=yes, width=900, height=800 left=700px top=100px');">상세보기</button>
														</td>
													</tr>
											</c:forEach>
											</tbody>
										</table>
										<!-- 											<table class="table table-hover"> -->
										<!-- 												<thead> -->
										<!-- 													<tr> -->
										<!-- 														<th style="width: 125px;">총</th> -->
										<!-- 														<th style="text-align: center;width: 117px;">신청학점</th> -->
										<!-- 														<th style="text-align: center;width: 117px;">취득학점</th> -->
										<!-- 														<th style="text-align: center;width: 117px;">평점평균</th> -->
										<!-- 														<th style="text-align: center;">백점환산점수</th> -->
										<!-- 													</tr> -->
										<!-- 												</thead> -->
										<!-- 												<tbody> -->
										<!-- 													<tr> -->
										<!-- 														<td></td> -->
										<!-- 														<td style="text-align: center;">36</td> -->
										<!-- 														<td style="text-align: center;">36</td> -->
										<!-- 														<td style="text-align: center;">3.5</td> -->
										<!-- 														<td style="text-align: center;">75.0</td> -->
										<!-- 													</tr> -->
										<!-- 												</tbody> -->
										<!-- 											</table> -->
										<!-- 											<table class="table table-hover"> -->
										<!-- 											<thead> -->
										<!-- 													<tr> -->
										<!-- 														<th style="text-align: center;" colspan="2">졸업이수학점</th> -->
										<!-- 														<th style="text-align: center;">전공필요학점</th> -->
										<!-- 														<th style="text-align: center;">전공취득학점</th> -->
										<!-- 														<th style="text-align: center;">교양필요학점</th> -->
										<!-- 														<th style="text-align: center;">교양취득학점</th> -->
										<!-- 													</tr> -->
										<!-- 													</thead> -->
										<!-- 											<tbody> -->
										<!-- 													<tr> -->
										<!-- 														<td style="text-align: center;" colspan="2">50</td> -->
										<!-- 														<td style="text-align: center;">30</td> -->
										<!-- 														<td style="text-align: center;">12</td> -->
										<!-- 														<td style="text-align: center;">20</td> -->
										<!-- 														<td style="text-align: center;">24</td> -->
										<!-- 													</tr> -->
										<!-- 													</tbody> -->
										<!-- 													</table> -->
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
	<script>
		// 테이블의 Row 클릭시 값 가져오기
		$("#popular10 tr").click(
				function() {
					// 		window.open(this.href='ad_point_search.do?sNo='+sNo, '', 'resizable=yes, width=900, height=800 left=700px top=100px'); return false;

					var semYear = $('#semYear').val();
					var semNo = $('#semNo').val();
					var sNo = $('#sNo').val();

					$.ajax({
						type : "POST",
						url : 'ad_point_search.do',
						data : {
							semYear : semYear,
							semNo : semNo,
							sNo : sNo
						},
						success : function(data) {
							// callback function--> data로 값이 들어온다 ( success, fail)
							if (data == 'success') {
								// 정상 페이지 이동
								alert('휴학신청 접수가 완료되었습니다.');
								window.opener.location.reload();
								window.close();
							} else {
								// 오류 페이지로 이동
								alert('서버가 원활하지 않습니다.');
								window.opener.location.reload();
								window.close();
							}

						},
						error : function(request, status, error) {

							console.log("code:" + request.status + "\n"
									+ "message:" + request.responseText + "\n"
									+ "error:" + error);

						}
					});
				});
	</script>
</body>
</html>