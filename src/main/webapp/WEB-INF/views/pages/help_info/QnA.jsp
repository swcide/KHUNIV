<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@ include file="../common/header.jsp"%>

<div class="body">
	<div role="main" class="main">
		<section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-3" style="background-image: url(img/page-header/page-header-background-transparent.jpg); padding: 70px;">
			<div class="container">
				<div class="row mt-3">
					<div class="col-md-12 align-self-center p-static order-2 text-center">
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

						<div class="custom-box-details bg-color-light custom-box-shadow-1 col-lg-12 ml-5 mb-5 mb-lg-4 float-right clearfix">
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
									<c:forEach var="b" items="${list }">
										<tr>
											<td>${b.qnaId}</td>
											<td>
												<c:if test="${!empty sessionScope }">
													<c:url var="QnA_detail" value="QnA_detail.do">
														<c:param name="qnaId" value="${b.qnaId}" />
														<c:param name="currentPage" value="${pi.currentPage }" />
													</c:url>
													<a href="${QnA_detail }">${b.qnaTitle }</a>
												</c:if>

												<c:if test="${empty sessionScope }">
													${b.qnaTitle }
												</c:if>
											</td>
											<td>${b.qnaWriter }</td>
											<td>
												<c:if test="${!empty refly }">
													<span class="badge badge-dark badge-sm badge-pill text-uppercase px-2 py-1 mr-1">답변완료</span>
												</c:if>
												<c:if test="${empty refly }">
													<span class="badge badge-sm badge-pill text-uppercase px-2 py-1 mr-1">답변대기</span>
												</c:if>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="card-tools" align="center">
							<ul class="pagination pagination-sm" style="display: inline-flex">
								<c:if test="${ pi.currentPage eq 1 }">
								<a class="page-link" href="#"><i class="fas fa-angle-left"></i></a>
						         </c:if>
								<c:if test="${ pi.currentPage ne 1 }">
									<c:url var="before" value="QnA.do">
										<c:param name="currentPage" value="${ pi.currentPage - 1 }" />
									</c:url>
									<li class="page-item">
								<a class="page-link" href="${ before }"><i class="fas fa-angle-left"></i></a>
								</li>
        						   </c:if>

								<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
									<c:if test="${ p eq pi.currentPage }">
									<li class="page-item active">
								<a class="page-link" href="${ pagination }">${ p }</a></li>
									</c:if>

									<c:if test="${ p ne pi.currentPage }">
										<c:url var="pagination" value="QnA.do">
											<c:param name="currentPage" value="${ p }" />
										</c:url>
										<li class="page-item">
								<a class="page-link" href="${ pagination }">${ p }</a></li>
             						  </c:if>
								</c:forEach>

								<c:if test="${ pi.currentPage eq pi.maxPage }">
					               <li class="page-item">
								<a class="page-link" href="#"><i class="fas fa-angle-right"></i></a>
								</li>
					            </c:if>
								<c:if test="${ pi.currentPage ne pi.maxPage }">
									<c:url var="after" value="QnA.do">
										<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
									</c:url>
									<li class="page-item">
								<a class="page-link" href="${ after }"><i class="fas fa-angle-right"></i></a>
								</li>
								</c:if>
								
								</ul>
							<c:if test="${! empty sessionScope.loginUser }">
								<button  type="button" class="btn btn-dark" onclick="location.href= 'QnA_write.do'" style="float: right; margin-bottom: 20px;">
									<i class="fas fa-pencil-alt"></i> 질문작성
								</button>
							</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</div>
<%@ include file="../common/footer.jsp"%>
