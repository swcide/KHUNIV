<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	System.out.println(session.getAttribute("loginAdmin"));
%>

<%@ page import="com.kh.univ.member.model.vo.Admin"%>


<%
Admin loginAdmin = (Admin) session.getAttribute("loginAdmin");

String aId = null;

String aName = null;

int type = 0;

if (loginAdmin != null) {
	aId = loginAdmin.getaId();
	aName = loginAdmin.getaName();
	type = loginAdmin.getType();

}

System.out.println(type);
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>KHCU | ADMIN</title>

<link rel="stylesheet" href="resources/assets/css/bootstrap.css">
<link rel="stylesheet" href="resources/assets/vendors/chartjs/Chart.min.css">
<link rel="stylesheet" href="resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="resources/assets/css/app.css">
<link rel="shortcut icon" href="resources/assets/images/favicon.svg" type="image/x-icon">

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script src="http://malsup.github.com/jquery.form.js"></script>
</head>
<body>
	<div id="app">
		<!-- side bar -->
		<%@include file="adminSideBar.jsp"%>
		<!-- header -->
		<div id="main">
			<%@ include file="adminHeader.jsp"%>
			<!--  contents -->
			<div class="main-content container-fluid">
				<div class="page-title">
					<h3>관리자 전용 화면입니다.</h3>
					<p class="text-subtitle text-muted">모든 기능은 필요에 의해 이용하여 주시길 바랍니다.</p>
				</div>
				<section class="section">
					<div class="row mb-4">
						<div class="col-md-7">
							<div class="card" style="height: 94%;">
								<div class="card-header d-flex justify-content-between align-items-center">
									<h4 class="card-title">게시글 현황</h4>
								</div>
								<div class="card-body px-0 pb-0">
									<div id="test"class="table-responsive">
										<table id="datatable" class='table mb-0' id="table1">
											<thead>
												<tr>
													<th>신고유형</th>
													<th>게시글제목</th>
													<th>신고내용</th>
													<th>신고날짜</th>
													<th>신고자</th>
													<th>처리상태</th>
												</tr>
											</thead>
											<tbody id="tbody">

											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-5">

							<div class="card widget-todo" style="height: 62%;">
								<div class="card-header border-bottom d-flex justify-content-between align-items-center">
									<h4 class="card-title d-flex">
										<i class='bx bx-check font-medium-5 pl-25 pr-75'></i>
										댓글신고현황
									</h4>
								</div>
								<div class="card-body px-0 pb-0">
									<div class="table-responsive">
										<table class='table mb-0' id="table1">
											<thead>
												<tr>
													<th>이름</th>
													<th>신고 사유</th>
													<th>연락처</th>
													<th>처리 상태</th>
												</tr>
											</thead>
											<tbody>
												</tr>
												<tr>
													<td>Dale</td>
													<td>fringilla.euismod.enim@quam.ca</td>
													<td>0500 527693</td>
													<td>
														<span class="badge bg-success">Active</span>
													</td>
												</tr>
												<tr>
													<td>Nathaniel</td>
													<td>mi.Duis@diam.edu</td>
													<td>(012165) 76278</td>
													<td>
														<span class="badge bg-danger">Inactive</span>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-header d-flex justify-content-between align-items-center" style="margin-top: -4%;">
									<h4>바로가기</h4>
								</div>
								<div class="btn-group mb-2 float-center" role="group" aria-label="Basic example" style="margin: 0 6px 0 6px;">
									<button type="button" class="btn btn-primary" style="border: 1px solid;">학생 관리</button>
									<button type="button" class="btn btn-primary" style="border: 1px solid;">홈페이지</button>

								</div>
								<div class="btn-group mb-4" role="group" aria-label="Basic example" style="margin: 0 6px 0 6px;">
									<button type="button" class="btn btn-primary" style="border: 1px solid;">학생 등록</button>
									<button type="button" class="btn btn-primary" style="border: 1px solid;">교수 등록</button>
									<button type="button" class="btn btn-primary" style="border: 1px solid;">강의 등록</button>
									<button type="button" onclick="t()" class="btn btn-primary" style="border: 1px solid;">강ssss의 등록</button>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<script src="resources/assets/js/feather-icons/feather.min.js"></script>
	<script src="resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script src="resources/assets/js/app.js"></script>

	<script src="resources/assets/vendors/chartjs/Chart.min.js"></script>
	<script src="resources/assets/vendors/apexcharts/apexcharts.min.js"></script>
	<!-- 	<script src="resources/assets/js/pages/dashboard.js"></script> -->

	<script src="resources/assets/js/main.js"></script>
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
	<script src="resources/js/bs-datatable.js"></script>
	<script>
		//페이지가 불러 졌을때
		$(document).ready(function() {
		
			t();

		})
		

		//비동기 통신

		function t(){
			
     $.ajax({
										//type: "POST", //GET 타입
						url : "reportList.do", //URL 선언
						dataType : "json",
						success : function(data) { //성공시 매개변수로 DATA를 받음
							//12번 눌러서 콘솔로 이동하면 json형태의 데이터 확인
							$tableBody = $("#tbody");
							$tableBody.html("");

							var $tr;
							var $categoryName;
							var $hTitle;
							var $rpContent;
							var $input;
							var $rpCreateDate;
							var $rpName;
							var $status;
							//데이터의 크기만큼 돌려줌
							for ( var str in data) {
								//tr 태그를 생성해서 id에 tobody에 추가
									$tr = $("<tr>");
									$categoryName = $("<td>").text(data[str].categoryName);
									$hTitle = $("<td >").text( data[str].hTitle);
									$input =$("<input type='hidden' value='"+data[str].rpId+"'>" )
									$rpContent=$("<td>").text(data[str].rpContent);
									$rpCreateDate = $("<td>").text(data[str].rpCreateDate);
									$rpName =$("<td>").text(data[str].rpName);

									
									$tr.append($categoryName);
									$tr.append($input);
									$tr.append($hTitle);
									$tr.append($rpContent);
									$tr.append($rpCreateDate);
									$tr.append($rpName);
								
								

								if (data[str].status == "Y") {
									$status = "<td><span class='badge bg-success' >처리완료</span></td>";
									$tr.append($status);
									$tableBody.append($tr);

								} else if(data[str].status=="N") {
									$status = "<td><span class='badge bg-danger' type='button' onclick='reportDone(this)'>처리예정</span></td>";
									$tr.append($status);
									$tableBody.append($tr);

								}
								
							}
							$('#datatable').dataTable()
						},
						error : function(error) {
							alert("오류 발생" + error);
						}
					})
		}

		function reportDone(obj) {
			
			var rpId = $(obj).parent().siblings('input').val();
			var td= $(obj).parent()
			var check = confirm("완료 처리 하시겠습니까?")

			if (check == true){    //확인
				$.ajax({
					url :"reportDone.do", //URL 선언
					type:'POST',
					data : {
						rpId : rpId
					},
					success : function(data) {
						

						
						$(obj).remove();
						
					var active ="<span class='badge bg-success' >처리완료</span>"

						
						td.append(active);
						
					}
					
				})

			}else  {   //취소

			    return false;
			
			
			
		}
	
		}
		
	</script>
</body>
</html>
