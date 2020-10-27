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
									href="#activity1" data-toggle="tab">응시 안내</a></li>
							
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
															<th>학기</th>
															<th>과목명</th>
															<th>시험일자</th>
															<th>담당교수</th>
														</tr>
													</thead>
													<tbody>
													
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