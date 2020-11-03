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
						<h1 class="text-9 font-weight-bold">자연 과학 게시판</h1>
						<span class="sub-title"> Department of Natural Science</span>
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
							<h4>자연과학 게시판</h4>

							<table class="table table-hover">
								<thead>
									<tr>
										<th>#</th>
										<th>제목</th>

										<th>작성자</th>
										<th>조회수</th>
										<th>작성일</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>7</td>
										<td><a href>과학자가 되시겠다?</a></td>

										<td>이성호</td>
										<td>3</td>
										<td>2020/10/28</td>
									</tr>
									<tr>
										<td>6</td>
										<td><a href>K3 구매하려구요</a></td>

										<td>김과학</td>
										<td>12</td>
										<td>2020/10/28</td>
									</tr>
									<tr>
										<td>5</td>
										<td><a href>어제는 하루종일 비가 내렸어</a></td>

										<td>김진태</td>
										<td>131</td>
										<td>2020/10/28</td>
									</tr>
									<tr>
										<td>4</td>
										<td><a href>보고싶다</a></td>

										<td>김진태</td>
										<td>11</td>
										<td>2020/10/28</td>
									</tr>
									<tr>
										<td>3</td>
										<td><a href>자연스러운 만남 추구</a></td>

										<td>김진태</td>
										<td>1</td>
										<td>2020/10/28</td>
									</tr>
									<tr>
										<td>2</td>
										<td><a href>김치볶음밥에 반숙은 과학입니다.</a></td>

										<td>김진태</td>
										<td>131</td>
										<td>2020/10/28</td>
									</tr>
									<tr>
										<td>1</td>
										<td><a href>자연과학계열 관련글만 적어주시면 감사하겠습니다.</a></td>

										<td>관리자</td>
										<td>131</td>
										<td>2020/10/28</td>
									</tr>
								</tbody>
							</table>
							<button type="button" class="btn btn-dark"
								onclick="location.href= 'human_write.do'"
								style="float: right; margin-bottom: 20px;">
								<i class="fas fa-pencil-alt"></i> 글쓰기
							</button>
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