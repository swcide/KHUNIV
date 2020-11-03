<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/professor_header.jsp"%>

<!-- Content Wrapper. Contains page content -->
<div class="body">
	<div role="main" class="main">
		<section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-3" style="background-image: url(resources/img/page-header/KakaoTalk_20201026_130729067.jpg); padding: 70px;">
			<div class="container">
				<div class="row mt-3">
					<div class="col-md-12 align-self-center p-static order-2 text-center">
						<h1 class="text-9 font-weight-bold">내 강의 학생 목록</h1>
						<span class="sub-title">my lecture list</span>
					</div>
				</div>
			</div>
		</section>
		<section class="section section-no-border bg-color-light m-0">
			<div class="container">
				<div class="row">
					<div class="col">

						<div class="custom-box-details bg-color-light col-lg-12 ml-5 mb-5 mb-lg-4 float-right clearfix">
							<h4>컴퓨터네트워킹</h4>

							<table class="table table-hover">
								<thead>
									<tr>
										<th>학생번호<th>
										<th>이름<th>
										<th>평균 시험 점수</th>
										<th>과제제출률</th>
										<th>수업진행률</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>2020423<td>
										<th><a href>윤기훈</a></th>
										<td>78.34점</td>
										<td>100%</td>
										<td>12%</td>
									</tr>
									<tr>
										<td>20200413<td>
										<th><a href>김진태</a></th>
										<td>56.34점</td>
										<td>80%</td>
										<td>14%</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</div>
<%@ include file="../common/footer.jsp"%>

