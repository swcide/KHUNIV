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
						<h1 class="text-9 font-weight-bold">계열별 게시판</h1>
						<span class="sub-title">Department Bulletin Board</span>
					</div>
				</div>
			</div>
		</section>

		<section class="section bg-color-light border-0 m-0">
			<div class="container">
				<div class="row">
					<div class="col">

						<div class="tabs tabs-bottom tabs-center tabs-simple">
							<ul class="nav nav-tabs">
								<li class="nav-item active"><a class="nav-link"
									href="#tabsNavigationSimple1" data-toggle="tab">인문 사회 계열</a></li>
								<li class="nav-item"><a class="nav-link"
									href="#tabsNavigationSimple2" data-toggle="tab">자연 과학 계열</a></li>
								<li class="nav-item"><a class="nav-link"
									href="#tabsNavigationSimple3" data-toggle="tab">공학 계열</a></li>
								<li class="nav-item"><a class="nav-link"
									href="#tabsNavigationSimple4" data-toggle="tab">예체능 계열</a></li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane active" id="tabsNavigationSimple1">
									<div>
										<h4>인문 사회</h4>

										<table class="table table-hover">
											<thead>
												<tr>
													<th>#</th>
													<th class="text-center">제목</th>
													<th>작성자</th>
													<th>조회수</th>
													<th>작성일</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td><a href="#">저는 인문사회 전문가 입니다 너무 쉽네요</a></td>

													<td>김진태</td>
													<td>3</td>
													<td>2020/10/28</td>
												</tr>
												<tr>
													<td>2</td>
													<td><a href="#">사회가 황폐해졌습니다</a></td>

													<td>이성호</td>
													<td>123</td>
													<td>2020/10/28</td>
												</tr>
												<tr>
													<td>3</td>
													<td><a href="#">형 머하세요</a></td>

													<td>윤기훈</td>
													<td>12</td>
													<td>2020/10/28</td>
												</tr>
											</tbody>
										</table>
										<a type="button"
											class="btn btn-quaternary btn-with-arrow mb-2 float-right"
											href="#">인문 사회 게시판으로 이동<span><i
												class="fas fa-chevron-right"></i></span></a>
									</div>
								</div>
								<div class="tab-pane" id="tabsNavigationSimple2">
									<div>
										<h4>자연 과학</h4>

										<table class="table table-hover">
											<thead>
												<tr>
													<th>#</th>
													<th class="text-center">제목</th>
													<th>작성자</th>
													<th>조회수</th>
													<th>작성일</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td><a href="#">과학자가 되시겠다?</a></td>

													<td>이성호</td>
													<td>3</td>
													<td>2020/10/28</td>
												</tr>
												<tr>
													<td>2</td>
													<td><a href="#">K3 구매하려구요</a></td>

													<td>김과학</td>
													<td>12</td>
													<td>2020/10/28</td>
												</tr>
												<tr>
													<td>3</td>
													<td><a href="#">어제는 하루종일 비가 내렸어 어쩌구 저쩌구 이러쿵 저러쿵</a></td>

													<td>김진태</td>
													<td>131</td>
													<td>2020/10/28</td>
												</tr>
											</tbody>
										</table>
										<a type="button"
											class="btn btn-quaternary btn-with-arrow mb-2 float-right"
											href="#">자연 과학 게시판으로 이동<span><i
												class="fas fa-chevron-right"></i></span></a>
									</div>
								</div>
								<div class="tab-pane" id="tabsNavigationSimple3">
									<div>
										<h4>공학</h4>

										<table class="table table-hover">
											<thead>
												<tr>
													<th>#</th>
													<th class="text-center">제목</th>
													<th>작성자</th>
													<th>조회수</th>
													<th>작성일</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td><a href="#">멀티미디어 학과 취업깡패 맞나요??</a></td>

													<td>강은지</td>
													<td>3</td>
													<td>2020/10/28</td>
												</tr>
												<tr>
													<td>2</td>
													<td><a href="#">윤기훈 깡패 맞나요?</a></td>
													<td>이성호</td>
													<td>12</td>
													<td>2020/10/28</td>
												</tr>
												<tr>
													<td>5</td>
													<td><a href="#">공학계열 관련글만 적어주시면 감사하겠습니다.</a></td>
													<td>관리자</td>
													<td>131</td>
													<td>2020/10/28</td>
												</tr>
											</tbody>
										</table>
										<a type="button"
											class="btn btn-quaternary btn-with-arrow mb-2 float-right"
											href="#">공학 게시판으로 이동<span><i
												class="fas fa-chevron-right"></i></span></a>
									</div>
								</div>
								<div class="tab-pane" id="tabsNavigationSimple4">
									<div>
										<h4>예체능</h4>

										<table class="table table-hover">
											<thead>
												<tr>
													<th>#</th>
													<th class="text-center">제목</th>
													<th>작성자</th>
													<th>조회수</th>
													<th>작성일</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td><a href="#">저는 말도 잘합니다</a></td>

													<td>윤기훈</td>
													<td>3</td>
													<td>2020/10/28</td>
												</tr>
												<tr>
													<td>2</td>
													<td><a href="#"> 저는 태권도를 매우 잘합니다</a></td>

													<td>윤기훈</td>
													<td>12</td>
													<td>2020/10/28</td>
												</tr>
												<tr>
													<td>3</td>
													<td><a href="#">예체능계열 관련글만 적어주시면 감사하겠습니다.</a></td>

													<td>관리자</td>
													<td>131</td>
													<td>2020/10/28</td>
												</tr>
											</tbody>
										</table>
										<a type="button"
											class="btn btn-quaternary btn-with-arrow mb-2 float-right"
											href="#">예체능 게시판으로 이동<span><i
												class="fas fa-chevron-right"></i></span></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</div>
<%@ include file="../common/footer.jsp"%>
