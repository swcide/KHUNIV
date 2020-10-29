<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../common/header.jsp"%>

<div class="body">
	<div role="main" class="main">
		<section
			class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-3"
			style="background-image: url(img/page-header/page-header-background-transparent.jpg); padding: 70px;">
			<div class="container">
				<div class="row mt-3">
					<div
						class="col-md-12 align-self-center p-static order-2 text-center">
						<h1 class="text-9 font-weight-bold">공지사항</h1>
						<span class="sub-title">Notice</span>
					</div>
				</div>
			</div>
		</section>

		<section class="section section-no-border bg-color-light m-0">
			<div class="container">
				<div class="row">
					<div class="col">

						<div
							class="custom-box-details bg-color-light custom-box-shadow-1 col-lg-12 ml-5 mb-5 mb-lg-4 float-right clearfix">
							<h4>학사공지</h4>

							<table class="table table-hover">
								<thead>
									<tr>
										<th>#</th>
										<th>제목</th>
										<th>작성자</th>
										<th>작성일</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>4</td>
										<td><a href>컴퓨터 공학과 단체 줌 회식 있습니다.</a></td>
										<td>유승제 교수</td>
										<td>2020-10-29</td>
									</tr>
									<tr>
										<td>3</td>
										<td><a href>과제 제출방법이 변경되었습니다.</a></td>
										<td>유승제 교수</td>
										<td>2020-10-28</td>
									</tr>
									<tr>
										<td>2</td>
										<td><a href>시험일자 변경 공지입니다.</a></td>
										<td>유승제 교수</td>
										<td>2020-10-28</td>
									</tr>
									<tr>
										<td>1</td>
										<td><a href>과제 제출 기한 연장했습니다 확인바랍니다.</a></td>
										<td>유승제 교수</td>
										<td>2020-10-25</td>
									</tr>
								</tbody>
							</table>
							<!-- <button type="button" class="btn btn-dark"
										onclick="location= 'Q&Awrite.jsp'"
										style="float: right; margin-bottom: 20px;">
										<i class="fas fa-pencil-alt"></i> 공지작성
									</button> -->
						</div>
						<div class="card-tools" align="center">
							<ul class="pagination pagination-sm" style="display: inline-flex">
								<li class="page-item"><a class="page-link" href="#"><i
										class="fas fa-angle-left"></i></a></li>
								<li class="page-item active"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#"><i
										class="fas fa-angle-right"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</div>
<%@ include file="../common/footer.jsp"%>


