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
						<h1 class="text-9 font-weight-bold">구인 공고</h1>
						<span class="sub-title"> Job Opening</span>
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
							<h4>구인 공고</h4>

							<table class="table table-hover">
								<thead>
									<tr>
										<th>#</th>
										<th>회사명</th>
										<th>모집 분야</th>
										<th>지역</th>

										<th>작성일</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>7</td>
										<td><a href>KH정보교육원</a></td>
										<td>정보 보안/시설 보안</td>
										<td>서울 강남구</td>

										<td>2020/10/28</td>
									</tr>
									<tr>
										<td>6</td>
										<td><a href>파라다이스 호텔</a></td>
										<td>F&B</td>
										<td>인천 영종도</td>

										<td>2020/10/28</td>
									</tr>
									<tr>
										<td>5</td>
										<td><a href>크래프톤</a></td>
										<td>게임개발</td>
										<td>성남시 분당구</td>
										<td>2020/10/28</td>
									</tr>
									<tr>
										<td>4</td>
										<td><a href>케이비즈소프트</a></td>
										<td>자바개발</td>
										<td>서울 구로구</td>
										<td>2020/10/28</td>
									</tr>
									<tr>
										<td>3</td>
										<td><a href>주식회사 넷아이디</a></td>

										<td>자바개발</td>
										<td>서울 강남구</td>
										<td>2020/10/28</td>
									</tr>
									<tr>
										<td>2</td>
										<td><a href>싸이버로지텍</a></td>

										<td>정보보안</td>
										<td>서울 금천구</td>
										<td>2020/10/28</td>
									</tr>
									<tr>
										<td>1</td>
										<td><a href>세븐일레븐</a></td>

										<td>점포정리</td>
										<td>서울 양천구</td>
										<td>2020/10/28</td>
									</tr>
								</tbody>
							</table>
							<!-- <button type="button" class="btn btn-dark"
										onclick="location= 'Q&Awrite.jsp'"
										style="float: right; margin-bottom: 20px;">
										<i class="fas fa-pencil-alt"></i> 글쓰기
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