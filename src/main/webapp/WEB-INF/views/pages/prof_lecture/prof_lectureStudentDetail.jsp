<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/professor_header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<!DOCTYPE html>
<html>
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
							<c:forEach var="lc" items="${lc}" end="0">
								<h3>${lc.sName}</h3>
								<button onclick="openNew();" class="date float-right" style="margin-bottom: 20px">출석점수부여</button>
								<table class="table table-striped table-bordered" cellspacing="0" width="100%">
									<thead>
										<tr>
											<th>이름</th>
											<th>학생번호</th>
											<th>강의번호번호</th>
											<th>강의명</th>
											<th>중간고사점수</th>
											<th>기말고사점수</th>
											<th>과제점수</th>
											<th>출석점수</th>
											<th>총점</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>${lc.sName}</th>
											<th>${sp.sNo}</th>
											<th>${sp.classNo}</th>
											<th>${lc.className}</th>
											<th>${sp.midTestPoints}</th>
											<th>${sp.finalTestPoints}</th>
											<th>${sp.reportPoints}</th>
											<th>${sp.attendancePoints}</th>
											<th>${sp.totalPoints}</th>
										</tr>
									</tfoot>
								</table>
							</c:forEach>
							<table class="table table-hover table-bordered">
								<thead>
									<tr>
										<th>주차</th>
										<th>출석날짜</th>
										<th>과제 제출일</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="lc" items="${lc }">
										<tr>
											<td>${lc.lecNo}</td>
											<td>${lc.attendDate }</td>
											<td>${lc.assignSubmitDate }</td>
										<tr>
									</c:forEach>
								</tbody>
							</table>
							<input type="hidden" id="year" name="year" value="<%=year%>">
							<input type="hidden" id="semesterNo" name="semesterNo" value="<%=semester%>">
							<input type="hidden" id="pNo" name="pNo" value="<%=pNo%>">
							<input type="hidden" id="classNo" name="classNo" value="${sp.classNo }">
							<input type="hidden" id="sNo" name="sNo" value="${sp.sNo}">
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</div>
<script>
	function openNew() {
		var classNo = $('#classNo').val();
		var pNo = $('#pNo').val();
		var sNo = $('#sNo').val();
		var semesterNo=$('#semesterNo').val();
		var year=$('#year').val();
		console.log(pNo)
		window.open(this.href = 'prof_lectureStudentAttPointPopup.do?classNo='
			+ classNo +'&pNo='+ pNo + '&sNo='+ sNo+'&semesterNo='+semesterNo+'&year='+year, '',
				'resizable=yes, width=900, height=500 left=700px top=100px');
		return false;

	};
</script>
<%@include file="../common/footer.jsp"%>
</html>
