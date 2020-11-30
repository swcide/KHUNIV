<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/professor_header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date"%>
<%@ page import="com.kh.univ.member.model.vo.Professor"%>

<%
Professor loginProf = (Professor)session.getAttribute("loginProf");
String pNo = null;
pNo =loginProf.getpNo();
%>

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
										<th>강의번호</th>
										<th>강의구분</th>
										<th width="500px" style="text-align:center;">과목명</th>
										<th>개강일</th>
										<th>진행 주차</th>
										<th>수업진행률</th>
										
									</tr>
								</thead>
								<c:forEach var="ls" items="${ls}">
								<input id="pNo" type="hidden" value="<%=pNo%>"></input>
									<tbody>
									
										<tr onclick="openNew(this); return false;" style="cursor: pointer;">

											<td >${ls.classNo}													
											<input type="hidden" value="${ls.classNo}"></td>
											<td>${ls.classType }</td>
											<td style="text-align:center;">${ls.className}</td>
											<td>${ls.startDate }</td>
											<td>
												<c:set var="today" value="<%=new Date()%>" />
												<c:set var="sd" value="${ls.startDate}" />
												<fmt:formatDate var="nowDate" pattern="yyyy-MM-dd" value="${today }" />
												<fmt:formatDate var="startDate" value="${sd}" pattern="yyyy-MM-dd" />
												<fmt:parseNumber var="currentDate" value="${today.time / (1000*60*60*24)}" integerOnly="true"></fmt:parseNumber>
												<fmt:parseNumber var="strDate" value="${sd.time / (1000*60*60*24)}" integerOnly="true"></fmt:parseNumber>

												<c:set var="days" value="${currentDate - strDate }" />
												<c:set var="dr" value="${days/84*100 }" />
												<c:set var="cw" value="${days/7 }" />
												<fmt:parseNumber var="cw" value="${cw }" integerOnly="true" />
												<c:if test="${(cw-(cw%1))>= 12}">12</c:if>/12주

											</td>
											<td><c:if test="${dr-(dr%1) >= 100}">100%</c:if></td>
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
<script>
	function openNew(obj){
		var classNo = $(obj).find('input').val();
		console.log(classNo);
		var pNo=$('#pNo').val();
		location.href="prof_lectureStudentList.do?classNo=" + classNo +'&pNo='+ pNo;
		return false;
		
	};
   </script>
<%@ include file="../common/footer.jsp"%>

