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
											<th>타입</th>
											<th>과목 명</th>
											<th>제목</th>
											<th>진행</th>
											<th>배점</th>
											<th>응시 기간</th>
										</tr>
									</thead>
									<tbody>
										<c:set var="cTList" value="${cTList }"></c:set>
										<c:if test="${empty cTList}">
										<tr>
											<td colspan="8" align="center">조회할 자료가 없습니다.</td>
										</tr>
										</c:if>
										<c:if test="${!empty cTList}">
											<c:forEach var="ct" items="${ cTList}">
												<c:url var="ctDetail" value="ctDetail.do">
														<c:param name="tNo" value="${ct.tNo}"/>
														<c:param name="currentPage" value="${ pi.currentPage }"/>
												</c:url>
											
											
												<tr onclick="location.href='${ctDetail}'" style="cursor: pointer;">
													<td >
													<c:if test="${ct.tType eq 'F'}">
														기말고사
													</c:if>
													<c:if test="${ct.tType eq 'M'}">
														중간고사
													</c:if>
													</td>
													<td>${ct.cName }</td>
													<td>${ct.tTitle }</td>
													<td>${ct.tType }</td>
													<td>${ct.tType}</td>
													<td  style="width:200px">${ct.startDate} ~<br> ${ct.endDate }</td>
												</tr>
										
											</c:forEach>
										</c:if>
									</tbody>
								</table>
										<a class="btn btn-sm btn-primary float-right" href="prof_testInsertView.do">시험 추가하기</a>
									<div class="card-tools" align="center">
							<ul class="pagination pagination-sm" style="display: inline-flex">
								<!-- 이전데스요 -->
								<c:if test="${ pi.currentPage eq 1 }">
									
										<li class="page-item">
											<a class="page-link" >
												<i class="fas fa-angle-left"></i>
											</a>
										</li>
									
								</c:if>
								<c:if test="${ pi.currentPage ne 1 }">
								   <c:url var="before" value="prof_testList.do">
					                  <c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
					       		   </c:url>
									 	<li class="page-item">
											<a class="page-link" href="${ before }">
												<i class="fas fa-angle-left"></i>
											</a>
										</li>
								</c:if>
								
								<!-- 페이징처리데스요 -->
							  	<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
									<c:if test="${ p eq pi.currentPage }">
									
										<li class="page-item active">
											<a class="page-link" href="${ pagination }">${p}</a>
										</li>
									</c:if>
									<c:if test="${ p ne pi.currentPage }">
									 <c:url var="pagination" value="prof_testList.do">
					                    <c:param name="currentPage" value="${ p }"/>
					                 </c:url>
					                 	<li class="page-item ">
											<a class="page-link" href="${ pagination }">${p}</a>
										</li>
									</c:if>
								</c:forEach>
								<c:if test="${ pi.currentPage eq pi.maxPage }">
								
					              		<li class="page-item">
					              			<a class="page-link" >
												<i class="fas fa-angle-right"></i>
											</a>
										</li>
									
				            	</c:if>	
				            	
<!-- 				            	다음대음다음대음 -->
				            	<c:if test="${pi.currentPage ne pi.maxPage }">
									<c:url var="after" value="prof_testList.do">
						             	<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
						            </c:url> 
									
									<li class="page-item">
										<a class="page-link" href="${after}">
											<i class="fas fa-angle-right"></i>
										</a>
									</li>
								</c:if>
							</ul>
						</div>
							</div>	
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../common/footer.jsp"%>

