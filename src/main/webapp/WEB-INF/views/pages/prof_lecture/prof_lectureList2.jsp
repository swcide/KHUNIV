<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/professor_header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- Content Wrapper. Contains page content -->
<div class="body">
	<div role="main" class="main">
		<section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-3" style="background-image: url(resources/img/page-header/KakaoTalk_20201026_130729067.jpg); padding: 70px;">
			<div class="container">
				<div class="row mt-3">
					<div class="col-md-12 align-self-center p-static order-2 text-center">
						<h1 class="text-9 font-weight-bold">내 강의 목록</h1>
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
							<h4>내 강의 목록</h4>

								<table class="table table-hover">
									<thead>
										<tr>
											<th>강의번호<th>
											<th>학기</th>
											<th>과목명</th>
											<th>수강인원</th>
											<th>과제제출률</th>
											<th>수업진행률</th>
										</tr>
									</thead>
							<c:forEach var="lc" items="${aLc}">
									<tbody>
										<tr>
											<td>${lc.classNo}<td>
											<td>2</td>
											<td>${lc.className}</td>
											<td>20</td>
											<td>100%</td>
											<td>12%</td>
										</tr>
									</tbody>
							</c:forEach>
								</table>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</div>
<!-- <a href="prof_lectureStudentList.do"> -->
<%@ include file="../common/footer.jsp"%>

