<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--
*************************************************************
******************헤더헤더헤더헤더헤더헤더 ********************
******************헤더헤더헤더헤더헤더헤더 ********************
******************헤더헤더헤더헤더헤더헤더 ********************
*************************************************************
************************************************************* -->
	<jsp:include page="../common/tpHeader.jsp" />

	
	<div class="content-wrapper" style="margin-left: 0px;">
	<!-- Content Header (Page header) -->
	<section class="content-header" style="margin-bottom: -10px;">
	
	
	
		<div class="container-fluid">
			<div class="row mb-2"></div>
		</div>
		<!-- /.container-fluid -->
	</section>

	<!-- Main content -->
	<section class="content" style="">
	
		<div class="container-fluid">
			<div class="row">
			
<!--
*************************************************************
******************사이드바사이드바사이드바 ********************
******************사이드바사이드바사이드바 ********************
******************사이드바사이드바사이드바 ********************
******************사이드바사이드바사이드바 ********************
*************************************************************
************************************************************* -->
		    <jsp:include page="../common/sidebar.jsp"></jsp:include>

<!--
*************************************************************
******************테스트페이지테스트페이지 ********************
******************테스트페이지테스트페이지 ********************
******************테스트페이지테스트페이지 ********************
******************테스트페이지테스트페이지 ********************
*************************************************************
************************************************************* -->

				<div class="col-md-9">

					<div class="card">

						<div class="card-header p-2">
						<ul class="nav nav-pills">
								<li class="nav-item"><a class="nav-link active"
									href="#activity1" data-toggle="tab">시험 응시</a></li>
							
							</ul>
						</div>
						<!-- /.card-header -->
						<div class="card-body">
							<div class="tab-content">
								<div class=" active tab-pane" id="activity1">
									<!-- Post -->
									<div class="post">
										<!-- Table row -->
										<div class="row">
											<div class="col-12 table-responsive">
												<table class="table table-striped">
													<thead>
														<tr>
															<th>No.</th>
															<th>과목명</th>
															<th>이수</th>
															<th>시험 종류</th>
															<th>시험기간</th>
															<th>시험 시간</th>
															<th>응시</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>3</td>
															<td>정신약리학</td>
															<td>전공선택</td>
															<td>기말고사</td>
															<td>10-21 08:00~ <br> 10-21 08:50
															</td>
															<td>50분</td>
															<td>
																<input type="button" class="btn btn-default" onclick="(window.open('test.jsp','brank','width=1198,height=800'))" value="응시하기">
															</td>
														</tr>
														<tr>
															<td>2</td>
															<td>현대작가론특강</td>
															<td>전공선택</td>
															<td>퀴즈</td>
															<td>10-22 10:00~ <br> 10-22 10:50
															</td>
															<td>50분</td>
															<td>
																<input type="button" class="btn btn-default" onclick="(window.open('quiz.jsp','brank','width=1198,height=800'))" value="응시하기">
															</td>
														</tr>
														<tr>
															<td>1</td>
															<td>정신약리학</td>
															<td>전공선택</td>
															<td>기말고사</td>
															<td>10-21 00:00~ <br> 10-23 23:59
															</td>
															<td>과제로 대체</td>
															<td>
																<div class="custom-file">
                      <input type="file" class="custom-file-input" id="customFile" style="display:none;">
                      <label class="custom-file-label" for="customFile">제출하기</label>
                    </div>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
											<!-- /.col -->
										</div>
										<!-- /.row -->
									</div>
								</div>
							</div>
							<!-- /.tab-content -->
						</div>
						<!-- /.card-body -->
					</div>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</section>
	<!-- /.content -->
</div>
	
	
	
	
	
	
	

	
	
	
	
	
	
	<jsp:include page="../common/footer.jsp"></jsp:include>


</body>
</html>