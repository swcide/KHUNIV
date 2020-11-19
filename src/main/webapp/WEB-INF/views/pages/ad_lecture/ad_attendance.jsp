<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


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
						<h1 class="text-9 font-weight-bold">출석 현황</h1>
						<span class="sub-title">attendance</span>
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
									<th>과목명</th>
									<th>나의출석률</th>
									<th>총결석일</th>
									<th>제출과제수</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="a" items="${al}">
										<tr>
												<td>${a. classType }</td>
												<td>${a. className }</td>
												<td>
												<c:set var= "ar" value="${a.attendRate/12*100}"/>
												<c:set var= "ac" value="${a.attendRate}"/>
												<fmt:formatNumber  value="${ar-(ar%1)}"/>%(${a. attendRate }/12주)</td>
												<td><fmt:formatNumber  value="${12-ac}"/>일</td>
												<td>${a. assignment }/6회</td>
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


