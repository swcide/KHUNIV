<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.kh.univ.member.model.vo.Professor"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../common/administration_header.jsp"%>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- Content Wrapper. Contains page content -->

<style>
.lecRef {
	padding: 0;
	cursor: pointer;
	color: #008995;
}

a:hover {
	color: #008995;
}

.lecRef:hover {
	/* 	color: #005de8; */
	text-decoration: underline;
}

.far {
	color: #008995;
}

.fas {
	color: #008995;
}
</style>
<div class="body">
	<div role="main" class="main">

		<section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-3" style="background-image: url(resources/img/page-header/KakaoTalk_20201026_130729067.jpg); padding: 70px;">
			<div class="container">
				<div class="row mt-3">
					<div class="col-md-12 align-self-center p-static order-2 text-center">
						<h1 class="text-9 font-weight-bold">나의 강의 동영상</h1>
						<span class="sub-title">My Lecture video list</span>
					</div>
				</div>
			</div>
		</section>
		<div class="container py-2">
			<div class="row">
				<div class="col">
					<div class="row">
						<div class="col">

							<!-- **********************************************  강의내역 확인하는 곳 ***************************************** -->
							<hr>
							<h4 class="text-uppercase mt-4">주차별 강의 목록</h4>
							<c:forEach var="aLpw" items="${aLpw }">
								<div class="row mt-lg-3">
									<div class="col">
										<span class="thumb-info thumb-info-side-image thumb-info-no-zoom">
											<span class="thumb-info-side-image-wrapper">
												<video class="embed-responsive-item" style="height: 200px; background-color: black;" width="350px" muted="" loop="" controls="">
													<source src="resources/lectureUploadFile/${aLpw.lecVideo }" type="video/mp4">
												</video>
											</span>
											<span class="thumb-info-caption" style="text-align: right">
												<span class="thumb-info-caption-text">
													<h5 class="text-uppercase mb-5 text-center text-6">${aLpw.lecNo }주차:${aLpw.lecName }</h5>
													<span>${aLpw.lecExplanation }</span>
													<div class="post-meta">
														<span>
															<i class="far fa-user"></i> By <label>${loginProf.pName } 교수&nbsp;</label>
														</span>
														<span>
															<i class="far fa-folder"></i>
															<c:if test="${empty aLpw.lecReference }">
																<label> 자료없음 </label>
															</c:if>
															<c:if test="${!empty aLpw.lecReference }">
																<a href="resources/lectureUploadFile/${aLpw.lecReference}" download="${aLpw.lecReference}"> ${aLpw.lecReference } </a>
															</c:if>
														</span>
														<br>
														<input name="lecNo" value="${aLpw.lecNo }" type="hidden">
														<span>등록일자 : ${aLpw.lecVideoCreateDate }</span>
														<span>
															<div class="toggle toggle-primary toggle-simple" data-plugin-toggle>
																<section class="toggle">
																	<a class="toggle-title" style="background-color: #008995; border-radius: 3px; color:#ffffff; padding: 5px;">과제제출</a> 
																	<!--  ************과제제출하기 **************** -->
																	<div class="toggle-content" style="border: 1px ridge; border-radius: 3px;">
																		<form id="frm" class="col" action="assignmentInsert.do" method="post" enctype="multipart/form-data">
																			<div class="row" style="padding-top: 8px;">
																				<div class="col-md-9">
																					<div class="col-md-12">
																						<span class="text-uppercase mb-4 text-center  text-6 float-left col-md-3" style="font-weight: bold; color: black; margin-top: 3px;">${aLpw.lecNo }주차 과제명 :</span>
																						<input class="text-uppercase mb-4 text-center text-6 float-right col-md-9" style="text-align: right;" id="lecName" name="assignmentName" placeholder="과제명을 입력하세요">
																						<textarea style="width: 100%;" cols="30" rows="4" id="assignExpl" name="assignExpl" placeholder="과제 관련 설명을 입력하세요."></textarea>
																					</div>
																				</div>
																				<div class="col-md-3">
																					<span class="text-uppercase mb-0 text-left  text-4 float-left col-md-12" style="font-weight: bold; color: black;">첨부파일</span>
																					<input class="text-uppercase mb-2 text-center  float-left col-md-12" style="text-align: right;" id="assignmnetInsert" name="assignmnetInsert" type="file" placeholder="안녕안녕">
																					<input type="hidden" id="profNo" name="profNo" value="${loginProf.pNo}">
																					<input type="hidden" id="profName" name="profName" value="${loginProf.pName}">
																					<input type="hidden" name="lecNo" value="${aLpw.lecNo }">
																					<input type="hidden" name="classNo" value="${classNo }">
																					<br><br><br><br><br><br>
																					<input type="submit" id="upSubmit" style="border-radius: 3px" class="btn btn-primary rounded-3 mb-2" value="제출하기">

																				</div>
																			</div>
																		</form>
																	</div>
																</section>
															</div>
														</span>
													</div>
												</span>
											</span>
										</span>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
								$('#updateView')
										.on(
												'click',
												function() {
													if ($('#updatefrm').css(
															'display') == 'none') {
														$('#updatefrm').show();
														$('#updateView').html(
																'숨기기');
													} else {
														$('#updatefrm').hide();
														$('#updateView').html(
																'등록하기');
													}
												});
	</script>
	<%@ include file="../common/footer.jsp"%>