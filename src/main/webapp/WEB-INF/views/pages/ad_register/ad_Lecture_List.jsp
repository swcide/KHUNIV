<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
									<div class="tab-content">
										<div id="popular10" class="tab-pane active">
											<div class="form-group row">
												<div class="col-lg-3">
													<div class="custom-select-1">
														<select id="user_select_degree" class="form-control" name="degree" size="0">
															<option value="degree1" selected="select">학년 선택</option>
															<option value="degree1">1학년</option>
															<option value="degree2">2학년</option>
															<option value="degree3">3학년</option>
															<option value="degree4">4학년</option>
														</select>
													</div>
												</div>
											</div>
											<table class="table table-hover">
												<thead>
													<tr>
														<th>#</th>
														<th style="text-align: center;">학년</th>
														<th style="text-align: center;">강의명</th>
														<th style="text-align: center;">시험일자</th>
														<th style="text-align: center;">학점</th>
														<th style="text-align: center;">담당교수</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td style="text-align: center;">4</td>
														<td style="text-align: center;">Mark</td>
														<td style="text-align: center;">Otto</td>
														<td style="text-align: center;">3</td>
														<td style="text-align: center;">이성호</td>
													</tr>
													<tr>
														<td>1</td>
														<td style="text-align: center;">4</td>
														<td style="text-align: center;">Mark</td>
														<td style="text-align: center;">Otto</td>
														<td style="text-align: center;">3</td>
														<td style="text-align: center;">이성호</td>
													</tr>
													<tr>
														<td>1</td>
														<td style="text-align: center;">4</td>
														<td style="text-align: center;">Mark</td>
														<td style="text-align: center;">Otto</td>
														<td style="text-align: center;">3</td>
														<td style="text-align: center;">이성호</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div id="recent10" class="tab-pane">
											<div class="input-group input-group-md">
												<input class="form-control" placeholder="과목명 검색" name="s" id="s" type="text"> <span class="input-group-append">
													<button type="submit" class="btn btn-primary">
														<i class="fas fa-search"></i>
													</button>
												</span>
											</div>
											<table class="table table-hover">
												<thead>
													<tr>
														<th>#</th>
														<th style="text-align: center;">학년</th>
														<th style="text-align: center;">강의명</th>
														<th style="text-align: center;">시험일자</th>
														<th style="text-align: center;">학점</th>
														<th style="text-align: center;">담당교수</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td style="text-align: center;">4</td>
														<td style="text-align: center;">Mark</td>
														<td style="text-align: center;">Otto</td>
														<td style="text-align: center;">1</td>
														<td style="text-align: center;">이성호</td>
													</tr>
													<tr>
														<td>2</td>
														<td style="text-align: center;">1</td>
														<td style="text-align: center;">Mark</td>
														<td style="text-align: center;">Otto</td>
														<td style="text-align: center;">2</td>
														<td style="text-align: center;">@mdo</td>
													</tr>
													<tr>
														<td>3</td>
														<td style="text-align: center;">3</td>
														<td style="text-align: center;">Mark</td>
														<td style="text-align: center;">Otto</td>
														<td style="text-align: center;">2</td>
														<td style="text-align: center;">@mdo</td>
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
</html>