<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../common/professor_header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHCU | 강의 개설 정보</title>
</head>
<body>2020
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

					<!-- 컨텐츠 -->
					<div class="col">
						<div class="row">
							<div class="col">
								<div class="tabs">
									<div class="tab-content" style="height: 300px;">
										<div id="popular10" class="tab-pane active">
											<div class="form-group row">

												<label class="btn btn-primary btn-file" style="margin-left: 950px" id="addPlanToTable">강의 계획서 등록 <input id="pNo" type="hidden" value="${loginProf.pNo}">
												</label>
											</div>
											<table class="table table-hover">
												<thead>
													<tr>
														<th style="text-align: center;">과목번호</th>
														<th style="text-align: center;">강의명</th>
														<th style="text-align: center;">강의구분</th>
														<th style="text-align: center;">학기</th>
													</tr>
												</thead>
												<c:forEach var="l" items="${plpl}">
													<tbody>
														<tr>
															<td style="text-align: center;">${l.classNo }</td>
															<td style="text-align: center;">
																<a href="">${l.className }</a>
															</td>
															<td style="text-align: center;">${l.classType }</td>
															<td style="text-align: center;">2</td>
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
		</div>
	</div>




	<script>
		// 테이블의 Row 클릭시 값 가져오기
		$("#recent10 tr")
				.click(
						function() {

							window
									.open(this.href = 'prof_syllabus.do', '',
											'resizable=yes, width=900, height=800 left=700px top=100px');
							return false;

						});

		$("#popular10 tr")
				.click(
						function() {

							window
									.open(this.href = 'ad_syllabus.do', '',
											'resizable=yes, width=900, height=800 left=700px top=100px');
							return false;
						});
		$("#addPlanToTable")
				.click(
						function() {
							var pNo = $('#pNo').val()
							console.log(pNo);
							window
									.open(
											this.href = 'prof_Syllabus_LectureWrite.do?pNo='
													+ pNo, '',
											'resizable=yes, width=900, height=800 left=700px top=100px');
							return false;

						});
	</script>
	<%@include file="../common/footer.jsp"%>
</body>
</html>