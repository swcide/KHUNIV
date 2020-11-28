<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>KHCU | ADMIN</title>

<link rel="stylesheet" href="resources/assets/css/bootstrap.css">

<link rel="stylesheet" href="resources/assets/vendors/chartjs/Chart.min.css">

<link rel="stylesheet" href="resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="resources/assets/css/app.css">
<link rel="shortcut icon" href="resources/assets/images/favicon.svg" type="image/x-icon">
</head>
<body>
	<div id="app">
		<!-- side bar -->
		<%@include file="adminSideBar.jsp"%>
		<!-- header -->
		<div id="main">
			<%@ include file="adminHeader.jsp"%>
			<!--  contents -->
			<div class="main-content container-fluid">
				<div class="page-title">
					<h3>강의 등록</h3>
					<p class="text-subtitle text-muted">모든 기능은 필요에 의해 이용하여 주시길 바랍니다.</p>
				</div>
				<section class="section">
					<div class="row mb-4">
						<div class="col-md-8">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">강의 등록하기</h4>
								</div>
								<div class="card-content">
									<div class="card-body">
										<p>등록 전 해당 학과, 과목, 담당교수를 다시 확인하시길 바랍니다.</p>
										<form class="form form-vertical">
											<div class="form-body">
												<div class="row">
													<div class="col-4">
														<div class="form-group">
															<label for="email-id-vertical">등록학과</label>
															<select class="form-select" id="basicSelect">
																<option>---------------------</option>
																<option>01</option>
																<option>02</option>
																<option>03</option>
																<option>04</option>
																<option>05</option>
																<option>06</option>
																<option>07</option>
																<option>08</option>
																<option>09</option>
																<option>10</option>
																<option>11</option>
																<option>12</option>
																<option>13</option>
															</select>
														</div>
													</div>
													<div class="col-2">
														<div class="form-group">
															<button type="button" class="btn btn-outline-light" data-toggle="modal" data-target="#small" style="margin: 21px 0 0 24px;">학과번호</button>
														</div>
													</div>
													<div class="col-6">
														<div class="form-group">
															<label for="email-id-vertical">이수구분</label>
															<select class="form-select" id="basicSelect">
																<option>---------------------</option>
																<option>전공선택</option>
																<option>교양</option>
															</select>
														</div>
													</div>
													<div class="col-6">
														<div class="form-group">
															<label for="contact-info-vertical">시작년도</label>
															<select class="form-select" id="basicSelect">
															<option>---------------------</option>
																<option>2021</option>
																<option>2020</option>
																<option>2019</option>
															</select>
														</div>
													</div>
													<div class="col-6">
														<div class="form-group">
															<label for="contact-info-vertical">시작학기</label>
															<select class="form-select" id="basicSelect">
															<option>---------------------</option>
																<option>1학기</option>
																<option>2학기</option>
															</select>
														</div>
													</div>
													<div class="col-12">
														<div class="form-group">
															<label for="first-name-vertical">강의명</label>
															<input type="text" id="first-name-vertical" class="form-control" name="fname" placeholder="강의명">
														</div>
													</div>
													<div class="col-4">
														<div class="form-group">
															<label for="email-id-vertical">배정학점</label>
															<input type="email" id="email-id-vertical" class="form-control" name="email-id" placeholder="배정학점 (1~3)">
														</div>
													</div>
													<div class="col-4">
														<div class="form-group">
															<label for="email-id-vertical">강의번호</label>
															<input type="text" id="email-id-vertical" class="form-control" name="email-id" placeholder="강의번호 ex)C123456">
														</div>
													</div>
													<div class="col-4">
														<div class="form-group">
															<label for="email-id-vertical">담당교수</label>
															<input type="text" id="email-id-vertical" class="form-control" name="email-id" placeholder="담당교수">
														</div>
													</div>
													<div class="col-12 d-flex justify-content-end">
														<button type="reset" class="btn btn-light-secondary mr-1 mb-1">초기화</button>
														<button type="submit" class="btn btn-primary mr-1 mb-1">등록</button>
													</div>
													<div class="mr-1 mb-1 d-inline-block">
														<div class="modal fade text-left" id="small" tabindex="-1" aria-labelledby="myModalLabel19" style="display: none;" aria-hidden="true">
															<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-sm" role="document">
																<div class="modal-content">
																	<div class="modal-header">
																		<h4 class="modal-title" id="myModalLabel19">학과 번호</h4>
																		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x">
																				<line x1="18" y1="6" x2="6" y2="18"></line>
																				<line x1="6" y1="6" x2="18" y2="18"></line></svg>
																		</button>
																	</div>
																	<div class="modal-body">
																		<table style="text-align: center; margin: 0 auto;">
																			<thead>
																				<tr>
																					<th style="border: 1px solid lightgray;">학과번호</th>
																					<th style="border: 1px solid lightgray;">학과명</th>
																				</tr>
																			</thead>
																			<tbody>
																				<tr>
																					<td style="border: 1px solid lightgray;">01</td>
																					<td style="border: 1px solid lightgray;">국어국문학과</td>
																				</tr>
																				<tr>
																					<td style="border: 1px solid lightgray;">02</td>
																					<td style="border: 1px solid lightgray;">김진태학과</td>
																				</tr>
																				<tr>
																					<td style="border: 1px solid lightgray;">03</td>
																					<td style="border: 1px solid lightgray;">호주캥거루학과</td>
																				</tr>
																			</tbody>
																		</table>
																	</div>
																	<div class="modal-footer">
																		<button type="button" class="btn btn-light-secondary btn-sm" data-dismiss="modal">
																			<i class="bx bx-x d-block d-sm-none"></i>
																			<span class="d-sm-block d-none">Close</span>
																		</button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card" style="height: 25%;">
								<div class="card-header d-flex justify-content-between align-items-center">
									<h4 class="card-title">엑셀로 등록하기</h4>
								</div>
								<div class="card-body px-0 pb-0">
									<div class="table-responsive">
										<div class="form-file">
											<input type="file" class="form-file-input" id="customFile">
											<label class="form-file-label" for="customFile" style="margin: 0px 10px 17px 10px;"> <span class="form-file-text">강의정보 엑셀파일을 첨부해주세요.</span> <span class="form-file-button btn-primary ">
													<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-upload">
														<path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"></path>
														<polyline points="17 8 12 3 7 8"></polyline>
														<line x1="12" y1="3" x2="12" y2="15"></line></svg>
												</span>
											</label>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<script src="resources/assets/js/feather-icons/feather.min.js"></script>
	<script src="resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script src="resources/assets/js/app.js"></script>

	<script src="resources/assets/vendors/chartjs/Chart.min.js"></script>
	<script src="resources/assets/vendors/apexcharts/apexcharts.min.js"></script>
	<script src="resources/assets/js/pages/dashboard.js"></script>

	<script src="resources/assets/js/main.js"></script>
</body>
</html>
