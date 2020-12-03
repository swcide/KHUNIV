<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../common/administration_header.jsp"%>

<div class="body">
	<div role="main" class="main">
		<section
			class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-3"
			style="background-image: url(resources/img/page-header/KakaoTalk_20201026_130729067.jpg); padding: 70px;">
			<div class="container">
				<div class="row mt-3">
					<div
						class="col-md-12 align-self-center p-static order-2 text-center">
						<h1 class="text-9 font-weight-bold">성적 현황</h1>
						<span class="sub-title">grade</span>
					</div>
				</div>
			</div>
		</section>
		<div class="container py-4">
			<div class="row py-4 mb-4">
				<div class="col">
					<div class="image-hotspots">
						<table class="table table-hover">
										<thead>
											<tr>
												<th>이수구분</th>
												<th>
													과목명
												</th>
												<th>
													출석점수
												</th>
												<th>
													과제점수
												</th>
												<th>
													시험점수
												</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach var="g" items="${gl}">
											<tr>
												<td>${g. classType }</td>
												<td>${g. className }</td>
												<td>
													<c:set var="wc" value="${g.week}"/>
													<c:set var= "ac" value="${g.attendRate}"/>
													<c:set var= "ar" value="${ac/(wc-1)*100}"/>
													<fmt:formatNumber  value="${ar-(ar%1)}"/>%(${g. attendRate }/12주)
												</td>
												<td>
													20/30
												</td>
												<td>
													30/60
												</td>
												
											</tr>
											
											</c:forEach>
										</tbody>
									</table>
						

								
								
									</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../common/footer.jsp"%>


		