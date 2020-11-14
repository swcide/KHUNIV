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
						<h1 class="text-9 font-weight-bold">시험 목록</h1>
						<span class="sub-title">my lecture list</span>
					</div>
				</div>
			</div>
		</section>
		<div class="container py-4">
			<div class="row py-4 mb-4">
				<div class="col">
					<div class="image-hotspots">
						<div class="row">

							<div class="custom-box-details bg-color-light col-lg-12 ml-5 mb-5 mb-lg-4 float-right clearfix">
								<h4>내 강의 목록</h4>
	
								<table class="table table-hover" >
									<thead>
										<tr>
											<th>타입<th>
											<th>제목</th>
											<th>진행</th>
											<th>배점</th>
											<th>제출</th>
											<th>평가</th>
											<th>응시 기간</th>
										</tr>
									</thead>
									<tbody>
									
										<tr>
											<td colspan="8" align="center">조회할 자료가 없습니다.</td>
										</tr>
										<c:forEach var="lc" items="${ aLc}">
										<tr>
											<td>c12314123<td>
											<td>2</td>
											<th><a href="prof_lectureStudentList.do">컴퓨터네트워킹</a></th>
											<td>20</td>
											<td>78.34점</td>
											<td>100%</td>
											<td>12%</td>
										</tr>
										<tr>
											<td>c12364123<td>
											<td>2</td>
											<th><a href="prof_lectureStudentList.do">디자인 커뮤니케이션</a></th>
											<td>18</td>
											<td>56.34점</td>
											<td>80%</td>
											<td>24%</td>
										</tr>
										</c:forEach>
									</tbody>
								</table>
										<a class="btn btn-sm btn-primary float-right" href="prof_testInsert.do">시험 추가하기</a>
							</div>	
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../common/footer.jsp"%>

