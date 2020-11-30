<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.kh.univ.member.model.vo.Student"%>
<%@ page import="com.kh.univ.member.model.vo.Admin"%>
<%@ page import="com.kh.univ.member.model.vo.Professor"%>


<%
	Student loginUser = (Student) session.getAttribute("loginUser");
Professor loginProf = (Professor) session.getAttribute("loginProf");
Admin loginAdmin = (Admin) session.getAttribute("loginAdmin");

String sNo = null;
String pNo = null;
String aId = null;

String sName = null;
String pName = null;
String aName = null;

int type = 0;

if (loginUser != null) {
	sNo = loginUser.getsNo();
	sName = loginUser.getsName();
	type = loginUser.getType();

} else if (loginProf != null) {
	pNo = loginProf.getpNo();
	pName = loginProf.getpName();
	type = loginProf.getType();

} else if (loginAdmin != null) {
	aId = loginAdmin.getaId();
	aName = loginAdmin.getaName();
	type = loginAdmin.getType();

}
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

<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
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
					<h3>학사공지 수정</h3>
					<p class="text-subtitle text-muted">모든 기능은 필요에 의해 이용하여 주시길 바랍니다.</p>
				</div>
				<section class="section">
					<div class="row mb-4">
						<div class="col-md-12">
							<div class="card">
								<div class="card-content">
									<div class="card-body"></div>
									<div class="container py-4">
										<div class="row">
											<div class="col">
												<div class="blog-posts single-post">
													<article class="post post-large blog-single-post border-0 m-0 p-0">
														<div class="post-content ml-0">
															<div class="custom-box-details bg-color-light custom-box-shadow-1 col-lg-12 ml-5 mb-5 mb-lg-4 float-right clearfix">
																<h4>학사공지 수정</h4>
																<form class="contact-form" action="manageNoticeUpdate.do" method="post" enctype="multipart/form-data">
																	<input id="nId" type="hidden" name="nId" value="${n.nId}">
																	<input type="hidden" name="originalFileName" value="${n.originalFileName }">
																	<input type="hidden" name="renameFileName" value="${n.renameFileName }">
																	<input type="hidden" name="nWriter" value="${loginAdmin.aId}">
																	<input type="hidden" name="nName" value="${loginAdmin.aName}">
																	<div>
																		<select class="form-control populate float-left mb-2" name="nType" style="width: 200px;">
																			<option value="${n.nType }">게시글 이동</option>
																			<option value="3">학사공지게시판</option>
																			<option value="4">일반공지게시판</option>
																		</select>
																	</div>
																	<div>
																		<select class="form-control populate float-left ml-2 mb-2" name="nSecret" style="width: 200px;">
																			<option value="${n.nSecret}">공개 설정</option>
																			<option value="N">공개</option>
																			<option value="Y">비공개</option>
																		</select>
																	</div>
																	<div class="form-group">
																		<input class="form-control" name="nTitle" value="${n.nTitle }">
																	</div>
																	<div class="form-row">
																		<div class="form-group col">
																			<div class=" ">
																				<div class="mb-3">
																					<textarea class="textarea" placeholder="Place some text here" name="nContent" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
										                          ${n.nContent }
							                            </textarea>
																				</div>
																			</div>
																			<div>첨부파일</div>
																			<div>
																				<input class="form-control-file" type="file" name="uploadFile">
																				<c:if test="${ !empty n.originalFileName }">
																					<br> 현재 업로드한 파일 :
															<a href="${ contextPath }/resources/uploadFiles/${n.renameFileName}" download="${n.originalFileName}">${n.originalFileName}</a>
																				</c:if>
																			</div>
																		</div>
																	</div>
																	<div>
																		<a href="javascript:history.go(-1)" class="btn btn-dark btn-modern float-left">뒤로가기</a>
																		<input type="submit" value="수정하기" class="btn btn-dark btn-modern float-right">
																	</div>
																</form>
																<script>
																	$(function() {
																		var nId = $(
																				'#nId')
																				.val()
																		$(
																				'#secret')
																				.on(
																						'click',
																						function() {
																							location.href = 'deptNsecret.do?nId='
																									+ $
																							{
																								n.nId
																							}

																						})
																		$(
																				'#publick')
																				.on(
																						'click',
																						function() {
																							location.href = 'deptNpublic.do?nId='
																									+ $
																							{
																								n.nId
																							}

																						})
																	})
																</script>

															</div>
														</div>
													</article>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>

	<div class=" commentList "></div>

	<script>
		$(function() {
			var nId = $('#nId').val()

			$('#secret').on('click', function() {
				location.href = 'deptNsecret.do?nId=' + $
				{
					n.nId
				}

			})
			$('#publick').on('click', function() {
				location.href = 'deptNpublic.do?nId=' + $
				{
					n.nId
				}

			})
		})
	</script>
	<script src="resources/assets/js/feather-icons/feather.min.js"></script>
	<script src="resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script src="resources/assets/js/app.js"></script>

	<script src="resources/assets/vendors/chartjs/Chart.min.js"></script>
	<script src="resources/assets/vendors/apexcharts/apexcharts.min.js"></script>

	<script src="resources/assets/js/main.js"></script>
</body>
</html>
