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
									href="#activity1" data-toggle="tab">시험현황</a></li>
							
							</ul>
						</div>
						<!-- /.card-header -->
						<div class="card-body">
							<div class="tab-content">
								<div class="active tab-pane" id="activity1">
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
															<th>담당교수</th>
															<th>시험 응시</th>
															<th>조회하기</th>
														</tr>
													</thead>
													<tbody>

														<tr>
															<td>6</td>
															<td>판소리특강</td>
															<td>전공선택</td>
															<td>중간고사</td>
															<td>윤기훈</td>
															<td>제출완료</td>
															<td>
																<button type="button" class="btn btn-default"
																	onclick="location.href='${myInfo}">답안</button>
																<button type="button" class="btn btn-default">성적</button>
															</td>
														</tr>
														<tr>
															<td>5</td>
															<td>전통계승방법론</td>
															<td>전공필수</td>
															<td>중간고사</td>
															<td>조원영</td>
															<td>제출완료</td>
															<td>
																<button type="button" class="btn btn-default">답안</button>
																<button type="button" class="btn btn-default">성적</button>
															</td>
														</tr>
														<tr>
															<td>4</td>
															<td>원예작물육종학특론</td>
															<td>전선</td>
															<td>중간고사</td>
															<td>오세범</td>
															<td>제출완료</td>
															<td>
																<button type="button" class="btn btn-default">답안</button>
																<button type="button" class="btn btn-default">성적</button>
															</td>
														</tr>
														<tr>
															<td>3</td>
															<td>외국어로서의한국어습득연구</td>
															<td>전공선택</td>
															<td>중간고사</td>
															<td>이성호</td>
															<td>제출완료</td>
															<td>
																<button type="button" class="btn btn-default">답안</button>
																<button type="button" class="btn btn-default">성적</button>
															</td>
														</tr>
														<tr>
															<td>2</td>
															<td>조선전기의학사</td>
															<td>전공선택</td>
															<td>중간고사</td>
															<td>송휘경</td>
															<td>제출완료</td>
															<td>
																<button type="button" class="btn btn-default">답안</button>
																<button type="button" class="btn btn-default">성적</button>
															</td>
														</tr>
														<tr>
															<td>1</td>
															<td>중독학</td>
															<td>전공선택</td>
															<td>중간고사</td>
															<td>김진태</td>
															<td>제출완료</td>
															<td>
																<button type="button" class="btn btn-default">답안</button>
																<button type="button" class="btn btn-default">성적</button>
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
								<!-- /.tab-pane -->
								
							
							</div>
							<!-- /.tab-content -->
						</div>
						<!-- /.card-body -->
						<!-- /.nav-tabs-custom -->
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