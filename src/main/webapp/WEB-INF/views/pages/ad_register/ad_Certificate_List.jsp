<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHCU | 증명서 발급</title>

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
							<h1 data-title-border>증명서 발급</h1>
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
										<li class="nav-item active"><a class="nav-link">증명서 발급 목록</a></li>
									</ul>
									<div class="tab-content">
										<div id="popular10" class="tab-pane active">
											<table class="table table-hover">
												<thead>
													<tr>
														<th>학과</th>
														<th style="text-align: center;">학년/학기</th>
														<th style="text-align: center;">학번</th>
														<th style="text-align: center;">이름</th>
														<th style="text-align: center;">발급종류</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>${certificateCheck.deptName }</td>
														<c:if test="${certificateCheck.semester eq 8 }">
															<td style="text-align: center;">4학년 2학기</td>
														</c:if>
														<c:if test="${certificateCheck.semester eq 7 }">
															<td style="text-align: center;">4학년 1학기</td>
														</c:if>
														<c:if test="${certificateCheck.semester eq 6 }">
															<td style="text-align: center;">3학년 2학기</td>
														</c:if>
														<c:if test="${certificateCheck.semester eq 5 }">
															<td style="text-align: center;">3학년 1학기</td>
														</c:if>
														<c:if test="${certificateCheck.semester eq 4 }">
															<td style="text-align: center;">2학년 2학기</td>
														</c:if>
														<c:if test="${certificateCheck.semester eq 3 }">
															<td style="text-align: center;">2학년 1학기</td>
														</c:if>
														<c:if test="${certificateCheck.semester eq 2 }">
															<td style="text-align: center;">1학년 2학기</td>
														</c:if>
														<c:if test="${certificateCheck.semester eq 1 }">
															<td style="text-align: center;">1학년 1학기</td>
														</c:if>
														<td style="text-align: center;">${certificateCheck.sNo }</td>
														<td style="text-align: center;">${certificateCheck.sName}</td>
														<td style="text-align: center;">
															<input type="hidden" id="sNo" value="${loginUser.sNo }">
															<span class="badge badge-primary badge-md" style="padding: 5px;" onClick="open_certi_inschool()">재학</span>
															<span class="badge badge-primary badge-md" style="padding: 5px;" onClick="window.open(this.href='ad_certificate_graduation.do', '', 'resizable=yes, width=900, height=800 left=700px top=100px'); return false;">졸업</span>
														</td>
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
<script>
	function open_certi_inschool() {
		var sNo = $('#sNo').val();
		console.log(sNo)
		$
				.ajax({
					type : "POST",
					url : 'ad_certificate_inschool.do?sNo=' + sNo,
					success : function(data) {
						// callback function--> data로 값이 들어온다 ( success, fail)
						// 정상 페이지 이동
						window.open(this.href = 'ad_certificate_inschool.do?sNo='+ sNo, '','resizable=yes, width=1000, height=800 left=700px top=100px');
						return false;
					},
					error : function(request, status, error) {

						console.log("code:" + request.status + "\n"
								+ "message:" + request.responseText + "\n"
								+ "error:" + error);
					}
				});

	};
</script>
</html>