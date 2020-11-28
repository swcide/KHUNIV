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
						<h1 class="text-9 font-weight-bold">과제 목록</h1>
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
											<th>주차</th>
											<th>제목</th>
											<th>진행</th>
											<th>평가</th>
											<th>응시 기간</th>
											<th>평가</th>
										</tr>
									</thead>
									<tbody>
									<c:out value="${hList }"/>	
<!-- 										<tr> -->
<!-- 											<td colspan="8" align="center">조회할 자료가 없습니다.</td> -->
<!-- 										</tr> -->
										<c:forEach var="h" items="${hList }">
										<tr>
											
											<td>${h.lecNo}주차</td>
											<td>${h.hTitle}</td>
<%-- 											<c:if > --%>
											<td>진행중</td>
<%-- 											</c:if> --%>
<%-- 											<c:if> --%>
<!-- 											<td>마감</td> -->
<%-- 											</c:if> --%>
											<td>100%</td>
											
											<td>${h.openDate } <br>${h.endDate }</td>
											<th>
											<c:url var="SeList" value="sEvaluation.do">
												<c:param name="cNo" value="${lh.cNo}"/>
												<c:param name="lecNo" value="${h.lecNo }"/>
											</c:url>
											<a href="${SeList }" class="btn btn-sm btn-default" >평가</a></th>
										</tr>
										</c:forEach>
									</tbody>
								</table>
										<c:url var="hInsertView" value="hWeekInsertView.do">
											<c:param name="cNo" value="${lh.cNo}"/>
											<c:param name="cName" value="${lh.cName}"/>
											<c:param name="pNo" value="${lh.pNo}"/>
										</c:url>
										<c:out value="${lh.lecNo }zzzz"/>	
										<a class="btn btn-sm btn-primary float-right" href="${hInsertView }">과제 추가하기</a>
							</div>	
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../common/footer.jsp"%>

