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
						<h1 class="text-9 font-weight-bold">Q&A</h1>
						<span class="sub-title">Question & Answer</span>
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
							<h4>Q&A</h4>

							<table class="table table-hover">
								<thead>
									<tr>
										<th>#</th>
										<th>제목</th>
										<th>작성자</th>
										<th>답변상태</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>4</td>
										<td><a href>제 생각엔 학교에 큰 문제가 있는 거 같아요</a></td>
										<td>비밀글</td>
										<td><span
											class="badge badge-sm badge-pill text-uppercase px-2 py-1 mr-1">답변대기</span>
										</td>
									</tr>
									<tr>
										<td>3</td>
										<td><a href>사이트가 멋있네요</a></td>
										<td>조원영</td>
										<td><span
											class="badge badge-dark badge-sm badge-pill text-uppercase px-2 py-1 mr-1">답변완료</span>
										</td>
									</tr>
									<tr>
										<td>2</td>
										<td><a href>짜치다는게 무슨 뜻이예요?</a></td>
										<td>김진태</td>
										<td><span
											class="badge badge-dark badge-sm badge-pill text-uppercase px-2 py-1 mr-1">답변완료</span>
										</td>
									</tr>
									<tr>
										<td>1</td>
										<td><a href>디자인이 너무 짜쳐요</a></td>
										<td>이성호</td>
										<td><span
											class="badge badge-dark badge-sm badge-pill text-uppercase px-2 py-1 mr-1">답변완료</span>
										</td>
									</tr>
								</tbody>
							</table>
							<button type="button" class="btn btn-dark"
								onclick="location= 'Q&Awrite.jsp'"
								style="float: right; margin-bottom: 20px;">
								<i class="fas fa-pencil-alt"></i> 질문작성
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
