<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 



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
						<h1 class="text-9 font-weight-bold">공지사항</h1>
						<span class="sub-title">Notice</span>
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
							<h4>학사공지</h4>
							
							<table class="table table-hover">
								<thead>
									<tr>
										<th>#</th>
										<th>제목</th>
										<th>작성자</th>
										<th>작성일</th>
										<th>조회수</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="n" items="${list}">
									<c:set var="nSecret" value="${n.nSecret}"/>
										<c:choose>
											<c:when test="${nSecret == 'N' }">
												<tr>
													<td>${n.nId}</td>
													<td>
														<c:url var="nDetail" value="nDetail.do">
															<c:param name="nId" value="${n.nId}"/>
															<c:param name="currentPage" value="${ pi.currentPage }"/>
															<c:param name="nType" value="${n.nType }"/>
														</c:url>
														<a class="ntitle" href="${nDetail}">${n.nTitle}</a>
													</td>
													
													<td>${n.nName }</td>
													<td>${n.nCreateDate}</td>
													<td>${n.nCount}</td>											
												</tr>	
											</c:when>
											<c:when test="${admin!=null}">
												<tr>
													<td>${n.nId }</td>
													<td>
														<c:url var="nDetail" value="nDetail.do">
															<c:param name="nId" value="${n.nId }"/>
															<c:param name="currentPage" value="${ pi.currentPage }"/>
															<c:param name="nType" value="${n.nType }"/>
														</c:url>
														
													<!-- 	비밀글  -->
														<c:if test="${nSecret eq 'N'}">
															<a id="ntitle" href="${nDetail}">
																${n.nTitle }
															</a>
														</c:if>
														
														<c:if test="${nSecret eq 'Y'}">
															<a id="ntitle" href="${nDetail}">
																<span style="color:red">(비밀글)</span>${n.nTitle }
															</a>
														</c:if>
													</td>
													
													<td>${n.nName }}</td>
													<td>${n.nCreateDate}</td>
													<td>${n.nCount}</td>
																							
												</tr>	
											</c:when>
										</c:choose>
									</c:forEach>
									
								</tbody>
							</table>
					
				
							<c:if test="${!empty sessionScope.loginAdmin }">
								<button type="button" class="btn btn-dark"onclick="location.href='nInsertView.do?nType=1'"style="float: right; margin-bottom: 20px;">
									<i class="fas fa-pencil-alt"></i> 공지작성
								</button> 
							</c:if>
						</div>
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
								   <c:url var="before" value="nList.do?nType=1">
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
									 <c:url var="pagination" value="nList.do?nType=1">
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
									<c:url var="after" value="nList.do?nType=1">
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
		</section>
		<script>
		
		</script>
	</div>
</div>
<%@ include file="../common/footer.jsp"%>


