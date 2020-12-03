<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../common/administration_header.jsp"%>

<div class="body">
	<div role="main" class="main">
		<section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-3" style="background-image: url(resources/img/page-header/KakaoTalk_20201026_130729067.jpg); padding: 70px;">
			<div class="container">
				<div class="row mt-3">
					<div class="col-md-12 align-self-center p-static order-2 text-center">
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
						<table class="table table-hover table-bordered">
							<thead>
								<tr>
									<th>강의번호번호</th>
									<th>강의명</th>
									<th>중간고사점수</th>
									<th>기말고사점수</th>
									<th>과제점수</th>
									<th>출석점수</th>
									<th>총점</th>
								</tr>
							</thead>
							<tfoot>
								<c:forEach var="spl" items="${spl }">
									<tr>
										<th>${spl.classNo}</th>
										<th>${spl.className}</th>
										<th>${spl.midTestPoints}</th>
										<th>${spl.finalTestPoints}</th>
										<th>${spl.reportPoints}</th>
										<th>${spl.attendancePoints}</th>
										<th>${spl.totalPoints}</th>
									</tr>
								</c:forEach>
							</tfoot>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../common/footer.jsp"%>


