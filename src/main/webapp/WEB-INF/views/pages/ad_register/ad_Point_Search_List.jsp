<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
										<div id="popular10" class="tab-pane active">
											<table class="table table-hover">
												<thead>
													<tr>
														<th>년도/학기</th>
														<th style="text-align: center;">신청학점</th>
														<th style="text-align: center;">취득학점</th>
														<th style="text-align: center;">평점평균</th>
														<th style="text-align: center;">백점환산점수</th>
													</tr>
												</thead>
												<c:forEach var="sp" items="${sp }">
												<tbody>
													<tr>
														<td>${sp.semYear }/${sp.semNo }</td>
														<td style="text-align: center;">${sp.count *3}</td>
														<td style="text-align: center;">${sp.count *3}</td>
														<td style="text-align: center;">${sp.avgPoint /4 }</td>
														<td style="text-align: center;">${sp.point }</td>
													</tr>
													</c:forEach>
												</tbody>
											</table>
											</div>
											
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
	$("#popular10 tr").click(function(){ 	

		window.open(this.href='ad_point_search.do', '', 'resizable=yes, width=900, height=800 left=700px top=100px'); return false;
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
	});</script>
</body>
</html>