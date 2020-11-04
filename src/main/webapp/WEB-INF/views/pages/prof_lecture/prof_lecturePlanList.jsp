<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHCU | 강의 개설 정보</title>
</head>
<body>
	<%@include file="../common/professor_header.jsp"%>
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
									<ul class="nav nav-tabs nav-justified flex-column flex-md-row">
										<li class="nav-item active"><a class="nav-link" href="#popular10" data-toggle="tab" class="text-center">전공 강의</a></li>
									</ul>
									<div class="tab-content" style="height: 300px;">
										<div id="popular10" class="tab-pane active">
											<div class="form-group row">
												
											<label class="btn btn-primary btn-file" style=" margin-left:950px" id="addPlanToTable">강의 계획서 등록</label>
											</div>
											<table class="table table-hover">
												<thead>
													<tr>
														<th>#</th>
														<th style="text-align: center;">학년</th>
														<th style="text-align: center;">강의명</th>
														<th style="text-align: center;">강의구분</th>
														<th style="text-align: center;">강의번호</th>
														<th style="text-align: center;">학기</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td style="text-align: center;">2</td>
														<td style="text-align: center;"><a href="">HTML</a></td>
														<td style="text-align: center;">전공</td>
														<td style="text-align: center;">c124352</td>
														<td style="text-align: center;">2</td>
													</tr>
													<tr>
														<td>1</td>
														<td style="text-align: center;">2</td>
														<td style="text-align: center;"><a href="">컴퓨터 네트워킹</a></td>
														<td style="text-align: center;">전공</td>
														<td style="text-align: center;">c124352</td>
														<td style="text-align: center;">2</td>
													</tr>
													<tr>
														<td>1</td>
														<td style="text-align: center;">2</td>
														<td style="text-align: center;"><a href="">자바</a></td>
														<td style="text-align: center;">교양</td>
														<td style="text-align: center;">c124352</td>
														<td style="text-align: center;">2</td>
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

					window
							.open(this.href = 'prof_Syllabus_LectureWrite.do', '',
									'resizable=yes, width=900, height=800 left=700px top=100px');
					return false;
				
				});

	</script>
</body>
</html>