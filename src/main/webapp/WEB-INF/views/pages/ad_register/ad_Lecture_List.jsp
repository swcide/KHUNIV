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

									<div class="tab-content" style="height: 330px;">
										<div id="popular10" class="tab-pane active">
											<table class="table table-hover">
												<thead>
													<tr>
														<th style="text-align: center;">강의번호</th>
														<th style="text-align: center;">강의명</th>
														<th style="text-align: center;">학점</th>
														<th style="text-align: center;">과목분류</th>
														<th style="text-align: center;">담당교수</th>
													</tr>
												</thead>
												<c:forEach var="ll" items="${ ll}">
													<tbody>
														<tr>
															<td style="text-align: center;">${ll.classNo }
																<input id="classNo" type="hidden" value="${ll.classNo}">
															</td>
															<td style="text-align: center;">${ll.className }</td>
															<td style="text-align: center;">${ll.credit }</td>
															<td style="text-align: center;">${ll.classType }</td>
															<td style="text-align: center;">${ll.profName }</td>
														</tr>
													</tbody>
												</c:forEach>
											</table>
											<div class="card-tools" align="center">
												<ul class="pagination pagination-sm" style="display: inline-flex">
													<!-- 이전데스요 -->
													<c:if test="${ pi.currentPage eq 1 }">

														<li class="page-item"><a class="page-link"> <i class="fas fa-angle-left"></i>
														</a></li>

													</c:if>
													<c:if test="${ pi.currentPage ne 1 }">
														<c:url var="before" value="/ad_lect_list.do">
															<c:param name="currentPage" value="${ pi.currentPage - 1 }" />
														</c:url>
														<li class="page-item"><a class="page-link" href="${ before }"> <i class="fas fa-angle-left"></i>
														</a></li>
													</c:if>

													<!-- 페이징처리데스요 -->
													<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
														<c:if test="${ p eq pi.currentPage }">

															<li class="page-item active"><a class="page-link" href="${ pagination }">${p}</a></li>
														</c:if>
														<c:if test="${ p ne pi.currentPage }">
															<c:url var="pagination" value="/ad_lect_list.do">
																<c:param name="currentPage" value="${ p }" />
															</c:url>
															<li class="page-item "><a class="page-link" href="${ pagination }">${p}</a></li>
														</c:if>
													</c:forEach>
													<c:if test="${ pi.currentPage eq pi.maxPage }">

														<li class="page-item"><a class="page-link"> <i class="fas fa-angle-right"></i>
														</a></li>

													</c:if>

													<!-- 				            	다음대음다음대음 -->
													<c:if test="${pi.currentPage ne pi.maxPage }">
														<c:url var="after" value="/ad_lect_list.do">
															<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
														</c:url>

														<li class="page-item"><a class="page-link" href="${after}"> <i class="fas fa-angle-right"></i>
														</a></li>
													</c:if>
												</ul>
											</div>
										</div>
										<div id="recent10" class="tab-pane">
											<div class="input-group input-group-md" style="margin-bottom: 16px;">
												<input class="form-control" placeholder="과목명 검색" name="s" id="s" type="text">
												<span class="input-group-append">
													<button type="submit" class="btn btn-primary">
														<i class="fas fa-search"></i>
													</button>
												</span>
											</div>
											<table class="table table-hover">
												<thead>
													<tr>
														<th style="text-align: center;">강의번호</th>
														<th style="text-align: center;">강의명</th>
														<th style="text-align: center;">학점</th>
														<th style="text-align: center;">과목분류</th>
														<th style="text-align: center;">담당교수</th>
													</tr>
												</thead>
												<c:forEach var="lp" items="${lp}">
													<tbody>
														<tr>
															<td style="text-align: center;">${lp.classNo }
																<input id="classNo" type="hidden" value="${lp.classNo}">
															</td>
															<td style="text-align: center;">${lp.className }</td>
															<td style="text-align: center;">${lp.credit }</td>
															<td style="text-align: center;">${lp.classType }</td>
															<td style="text-align: center;">${lp.profName }</td>
														</tr>
													</tbody>
												</c:forEach>
											</table>
											<div class="card-tools" align="center">
												<ul class="pagination pagination-sm" style="display: inline-flex">
													<!-- 이전데스요 -->
													<c:if test="${ pi.currentPage eq 1 }">

														<li class="page-item"><a class="page-link"> <i class="fas fa-angle-left"></i>
														</a></li>

													</c:if>
													<c:if test="${ pi.currentPage ne 1 }">
														<c:url var="before" value="/ad_lect_list.do">
															<c:param name="currentPage" value="${ pi.currentPage - 1 }" />
														</c:url>
														<li class="page-item"><a class="page-link" href="${ before }"> <i class="fas fa-angle-left"></i>
														</a></li>
													</c:if>

													<!-- 페이징처리데스요 -->
													<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
														<c:if test="${ p eq pi.currentPage }">

															<li class="page-item active"><a class="page-link" href="${ pagination }">${p}</a></li>
														</c:if>
														<c:if test="${ p ne pi.currentPage }">
															<c:url var="pagination" value="/ad_lect_list.do">
																<c:param name="currentPage" value="${ p }" />
															</c:url>
															<li class="page-item "><a class="page-link" href="${ pagination }">${p}</a></li>
														</c:if>
													</c:forEach>
													<c:if test="${ pi.currentPage eq pi.maxPage }">

														<li class="page-item"><a class="page-link"> <i class="fas fa-angle-right"></i>
														</a></li>

													</c:if>

													<!-- 				            	다음대음다음대음 -->
													<c:if test="${pi.currentPage ne pi.maxPage }">
														<c:url var="after" value="/ad_lect_list.do">
															<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
														</c:url>

														<li class="page-item"><a class="page-link" href="${after}"> <i class="fas fa-angle-right"></i>
														</a></li>
													</c:if>
												</ul>
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

	<script>
		// 테이블의 Row 클릭시 값 가져오기
		$("#recent10 tr")
				.click(
						function() {
							var classNo = $('#classNo').val()
							console.log(classNo);
							window
									.open(this.href = 'ad_syllabus.do?classNo='
											+ classNo, '',
											'resizable=yes, width=900, height=800 left=700px top=100px');
							return false;
							// 		var str = ""
							// 		var tdArr = new Array();	// 배열 선언

							// 		// 현재 클릭된 Row(<tr>)
							// 		var tr = $(this);
							// 		var td = tr.children();

							// 		// tr.text()는 클릭된 Row 즉 tr에 있는 모든 값을 가져온다.
							// 		console.log("클릭한 Row의 모든 데이터 : "+tr.text());

							// 		// 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
							// 		td.each(function(i){
							// 			tdArr.push(td.eq(i).text());
							// 		});

							// 		console.log("배열에 담긴 값 : "+tdArr);

							// 		// td.eq(index)를 통해 값을 가져올 수도 있다.
							// 		var no = td.eq(0).text();
							// 		var userid = td.eq(1).text();
							// 		var name = td.eq(2).text();
							// 		var email = td.eq(3).text();

							// 		str +=	" * 클릭된 Row의 td값 = No. : <font color='red'>" + no + "</font>" +
							// 				", 아이디 : <font color='red'>" + userid + "</font>" +
							// 				", 이름 : <font color='red'>" + name + "</font>" +
							// 				", 이메일 : <font color='red'>" + email + "</font>";		

							// 		$("#ex1_Result1").html(" * 클릭한 Row의 모든 데이터 = " + tr.text());		
							// 		$("#ex1_Result2").html(str);
						});
		$("#popular10 tr")
				.click(
						function() {
							var classNo = $('#classNo').val()
							console.log(classNo);
							window
									.open(this.href = 'ad_syllabus.do?classNo='
											+ classNo, '',
											'resizable=yes, width=900, height=800 left=700px top=100px');
							return false;
						});
	</script>
</body>
</html>