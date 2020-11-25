<%@page import="com.kh.univ.lecture.model.vo.ClassTest"%>
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
											<th>과목번호</th>
											<th>학과명</th>
											<th>강의 명</th>
											<th>강의 구분</th>
											<th>학점</th>
										</tr>
									</thead>
									<tbody>
										<c:set var="ll" value="${ll }"></c:set>
										<c:if test="${empty ll}">
										<tr>
											<td colspan="8" align="center">조회할 자료가 없습니다.</td>
										</tr>
										</c:if>
										<c:if test="${!empty ll}">
											<c:forEach var="ll" items="${ll}">
												<c:url var="week" value="hWeekList.do">
													<c:param name="cNo" value="${ll.classNo}"/>
													<c:param name="cName" value="${ll.className}"/>
													<c:param name="pNo" value="${pNo}"/>
												</c:url>
												<c:out value="${ll.classNo }"/>
											
												<tr onclick="location.href='${week}'" style="cursor: pointer;">
													<td>${ll.classNo }	</td>
													<td>${ll.deptName }</td>
													<td>${ll.className }</td>
													<td>${ll.classType }</td>
													<td>${ll.credit}</td>
												</tr>
										
											</c:forEach>
										</c:if>
									</tbody>
								</table>
												
										
								
							</div>	
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../common/footer.jsp"%>

