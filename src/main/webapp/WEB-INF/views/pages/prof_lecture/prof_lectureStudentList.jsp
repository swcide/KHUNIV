<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/professor_header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date"%>
<%@ page import ="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="com.kh.univ.member.model.vo.Professor"%>

<%
	Professor loginProf = (Professor) session.getAttribute("loginProf");
String pNo = null;
pNo = loginProf.getpNo();
%>
<%
	Calendar Now = Calendar.getInstance();
int year = Now.get(Calendar.YEAR);
int month = Calendar.getInstance().get(Calendar.MONTH) + 1;
String semester = "1";
if (month >= 7) {
	semester = "2";
}
%>
<!-- Content Wrapper. Contains page content -->
<div class="body">
	<div role="main" class="main">
		<section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-3" style="background-image: url(resources/img/page-header/KakaoTalk_20201026_130729067.jpg); padding: 70px;">
			<div class="container">
				<div class="row mt-3">
					<div class="col-md-12 align-self-center p-static order-2 text-center">
						<h1 class="text-9 font-weight-bold">내 강의 학생 목록</h1>
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
							<c:forEach var="l" items="${lc}" end="0">
							<h4>${l.className}</h4>
							<label style="display:none" id="classNo">${l.classNo }</label>
							
							</c:forEach>
							<table class="table table-hover">
								<thead>
									<tr>
										<th>학생번호</th>
										<th>이름</th>
										<th>출석횟수</th>
										<th>과제 제출수</th>
										<th>출석률</th>
									</tr>

								</thead>
								<tbody>
									<c:forEach var="lc" items="${lc}">
									<input id="pNo" type="hidden" value="<%=pNo%>"></input>
									<input id="year" style="display:none" name="year" value="<%=year%>">
									<input id="semesterNo" style="display:none" name="semesterNo" value="<%=semester%>">
										<tr onclick="openNew(this); return false;" style="cursor: pointer;">
											<td>${lc.sNo }
											<input type="hidden" value="${lc.sNo}"></td>
											
											<td>${lc.sName}</td>
											<td>${lc.attendRate }</td>
											<td>${lc.assignment }</td>
											<td>
												<c:set var="today" value="<%=new Date()%>" />
												<c:set var="sd" value="${lc.startDate}" />
												<fmt:formatDate var="nowDate" pattern="yyyy-MM-dd" value="${today }" />
												<fmt:formatDate var="startDate" value="${sd}" pattern="yyyy-MM-dd" />
												<fmt:parseNumber var="currentDate" value="${today.time / (1000*60*60*24)}" integerOnly="true"></fmt:parseNumber>
												<fmt:parseNumber var="strDate" value="${sd.time / (1000*60*60*24)}" integerOnly="true"></fmt:parseNumber>

												<c:set var="days" value="${currentDate - strDate }" />
												<c:set var="dr" value="${days/84*100 }" />
												<c:set var="cw" value="${days/7 }" />
												<fmt:parseNumber var="cw" value="${cw }" integerOnly="true" />
												<fmt:parseNumber var="attend" value="${lc.attendRate }" integerOnly="true" />
												<fmt:parseNumber var="sysweek" value="${cw-(cw%1)}" integerOnly="true" />
												<fmt:parseNumber var="attendRate" value="${lc.attendRate }" integerOnly="true" />
												<fmt:parseNumber var="fullweek" value="12" integerOnly="true" />
												
												<c:if test="${attend/sysweek*100>=100.0}">100%</c:if>
												<c:if test="${sysweek ==0.0}">개강일 전입니다.</c:if>
												<c:if test="${attend/sysweek*100<=0.0}">0%</c:if>
												<c:if test="${sysweek >= 12 }"><fmt:parseNumber var="percentage" value="${((attendRate/fullweek)*100)}" integerOnly="true" />${percentage}%</c:if>
												<c:if test="${sysweek < 12 }"><fmt:parseNumber var="percentage" value="${((attendRate/sysweek)*100)}" integerOnly="true" />${percentage}%</c:if>
											</td>
										</tr>
									</c:forEach>
								</tbody>
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
		var sNo = $(obj).find('input').val();
		var classNo = $('#classNo').html();
		console.log(classNo);
		var pNo=$('#pNo').val();
		var semesterNo=$('#semesterNo').val();
		var year=$('#year').val();
		console.log(year);
		console.log(semesterNo);
		location.href="prof_lectureStudentDetail.do?classNo=" + classNo +'&pNo='+ pNo + '&sNo='+ sNo+'&semesterNo='+semesterNo+'&year='+year;
		return false;
		
	};
   </script>
<%@ include file="../common/footer.jsp"%>

