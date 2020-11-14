<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../common/professor_header.jsp"%>
<!DOCTYPE html>
<html>
<style>
#className {
	color: #008995;
	font-weight: bold;
}

#className:hover {
	cursor: pointer;
	color: #005de8;
	font-weight: bold;
}

.cursor_on_finger{cursor:pointer;}
</style>
<head>
<meta charset="UTF-8">
<title>KHCU | 내 강의계획서 관리</title>
</head>
<body>
	<div class="body">
		<div role="main" class="main">
			<section class="page-header page-header-classic">
				<div class="container">
					<div class="row"></div>
					<div class="row">
						<div class="col p-static">
							<h1 data-title-border>내 강의계획서 관리</h1>
						</div>
					</div>
				</div>
			</section>
			<div class="container py-2">
				<div class="row">
					<!-- 컨텐츠 -->
					<div class="container py-4">
						<div class="row py-4 mb-4">
							<div class="col">
								<div class="image-hotspots">
									<table class="table table-hover">
										<thead>
											<tr>
												<th style="text-align: center;">과목번호</th>
												<th style="text-align: center;">강의명</th>
												<th style="text-align: center;">강의구분</th>
												<th style="text-align: center;"></th>
											</tr>
										</thead>
										<c:forEach var="l" items="${plpl}">
											<tbody>
												<tr id="popular10" class="cursor_on_finger">
													<td style="text-align: center;">${l.classNo }
														<input id="classNo" type="hidden" value="${l.classNo}">
													</td>
													<td style="text-align: center;">${l.className }</td>
													<td style="text-align: center;">${l.classType }</td>
													<td style="text-align: center;">
													<c:if test="${empty l.classSummary }">
														<span class="badge badge-dark badge-sm badge-pill" >신규등록</span>
													</c:if>
													<c:if test="${not empty l.classSummary }">
														<span class="badge badge-sm badge-pill">수정하기</span>
													</c:if>
													</td>
												</tr>
											</tbody>
										</c:forEach>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



</body>
<script>
	$("#popular10 td").click(function(){ 	
		var classNo = $('#classNo').val()
		console.log(classNo)
		window.open(this.href='prof_Syllabus_LectureWrite.do?classNo='+classNo, '', 'resizable=yes, width=900, height=800 left=700px top=100px')
		return false;
	});
   </script>
<%@include file="../common/footer.jsp"%>
</html>