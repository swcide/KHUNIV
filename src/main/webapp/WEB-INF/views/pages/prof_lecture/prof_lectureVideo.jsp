<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.kh.univ.member.model.vo.Professor"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../common/professor_header.jsp"%>
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
						<h1 class="text-9 font-weight-bold">강의 동영상 관리</h1>
						<span class="sub-title">Adding Lecture video list</span>
					</div>
				</div>
			</div>
		</section>
		<div class="container py-2">
			<div class="row">
				<div class="col">
					<div class="row">
						<div class="col">
							<label class="btn btn-primary btn-file" id="updateView">등록하기</label>
							<div id="updatefrm" class="row mt-lg-3" style="display: none;">
								<form id="fm" class="col" action="prof_lectureVideoInsert.do" method="post" enctype="multipart/form-data">
									<div class="row">
										<div class="col-md-6">
											<img alt="Porto" width="350px" height="200px" style="border: 1px solid rgb(118, 118, 118); border-radius: 3px;" data-sticky-width="150" data-sticky-height="40" src="resources/img/playButton.png">
										</div>
										<div class="col-md-6">
											<div class="col-md-12">
												<input class="text-uppercase mb-4 text-center text-6 float-left col-md-3" style="text-align: right; border: 1px solid rgb(118, 118, 118); border-radius: 3px; height: 32px;" id="lecNo" name="lecNo" type="number" placeholder="주차">
												<input class="text-uppercase mb-4 text-center text-6 float-right col-md-8" style="text-align: right;" id="lecName" name="lecName" placeholder="단원명">
												<input type="hidden" name="profNo" value="${loginProf.pNo}">
												<input type="hidden" name="profName" value="${loginProf.pName}">
												<br>
												<textarea id="lecExplanation" name="lecExplanation" style="width: 100%;" cols="30" rows="4" placeholder="강의 설명"></textarea>
												<br>
												<div class="col-md-12 ">
													<span class="float-right">
														<i class="far fa-user"></i> By <label class="profName">${loginProf.pName } 교수&nbsp;</label> <i class="far fa-folder"></i> <label class="lecRef"> 수업자료 PDF<input type="file" name="lecReferenceInsert" style="display: none;">
														</label>
													</span>
												</div>
											</div>
										</div>
									</div>
									<label class="btn btn-primary btn-file"> 동영상 업로드 <input type="file" name="lecVideoInsert" style="display: none;">
									</label>
									<input type="hidden" name="classNo" value="${classNo }">
									<button type="submit" id="videoSubmit" class="btn btn-dark" style="float: right; margin: 0px 14px 20px 0;">
										<i class="fas fa-pencil-alt" style="color: white"></i> 등록
									</button>
								</form>
								<p>
									&nbsp;&nbsp;&nbsp;&nbsp;강의 등록 후 동영상이 나오지 않으면 <a href="https://convert-video-online.com/ko/">해당 사이트</a>에서 변환하여 등록 바랍니다. <strong style="color: #008995">(Video Codec - H.264 | Audio Codec - AAC)</strong>
								</p>
							</div>
							<!-- **********************************************  등록한 강의내역 확인하는 곳 ***************************************** -->
							<hr>
							<h4 class="text-uppercase mt-4">강의 업로드 현황</h4>
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
																	<i class="fas fa-sync"></i><a class="toggle-title" style="padding: 0;">수정하기</a> |
																	<c:url var="lecDelete" value="prof_lectureVideoDelete.do">
																		<c:param name="lecNo" value="${aLpw.lecNo }" />
																		<c:param name="classNo" value="${classNo }" />
																	</c:url>
																	<a href="${lecDelete}"><i class="far fa-trash-alt"></i>삭제하기</a>
																	<!--  ************ 수정하기 **************** -->
																	<div class="toggle-content" style="border: 1px ridge; border-radius: 3px;">
																		<form id="frm" class="col" action="prof_lectureVideoUpdate.do" method="post" enctype="multipart/form-data">
																			<div class="row" style="padding-top: 8px;">
																				<div class="col-md-9">
																					<div class="col-md-12">
																						<span class="text-uppercase mb-4 text-center  text-6 float-left col-md-3" style="font-weight: bold; color: black; margin-top: 3px;">${aLpw.lecNo }주차 강의명 :</span>
																						<input class="text-uppercase mb-4 text-center text-6 float-right col-md-9" style="text-align: right;" id="lecName" name="lecName" placeholder="${aLpw.lecName  }">
																						<textarea style="width: 100%;" cols="30" rows="4" id="lecExplanation" name="lecExplanation" placeholder="${aLpw.lecExplanation  }"></textarea>
																					</div>
																				</div>
																				<div class="col-md-3">
																					<span class="text-uppercase mb-0 text-left  text-4 float-left col-md-12" style="font-weight: bold; color: black;">강의영상</span>
																					<c:if test="${!empty aLpw.lecVideo }">
																						<span class="text-uppercase mb-0 text-left  text-2 float-left col-md-12">
																							현재 업로드한 파일 : <a href="${contextPath }/resources/lectureUploadFile/${aLpw.lecVideo}">${aLpw.lecVideo }</a>
																						</span>
																					</c:if>
																					<input class="text-uppercase mb-1 text-center  float-left col-md-12" style="text-align: right;" id="lecVideoUpdate" name="lecVideoUpdate" type="file" placeholder="${aLpw.lecVideo  }">
																					<span class="text-uppercase mb-0 text-left  text-4 float-left col-md-12" style="font-weight: bold; color: black;">첨부자료</span>
																					<c:if test="${!empty aLpw.lecReference }">
																						<span class="text-uppercase mb-0 text-left  text-2 float-left col-md-12">
																							현재 업로드한 파일 : <a href="${contextPath }/resources/lectureUploadFile/${aLpw.lecReference  }">${aLpw.lecReference  }</a>
																						</span>
																					</c:if>
																					<input class="text-uppercase mb-2 text-center  float-left col-md-12" style="text-align: right;" id="lecReferenceUpdate" name="lecReferenceUpdate" type="file" placeholder="${aLpw.lecReference  }">
																					<input type="hidden" id="profNo" name="profNo" value="${loginProf.pNo}">
																					<input type="hidden" id="profName" name="profName" value="${loginProf.pName}">
																					<input type="hidden" name="lecNo" value="${aLpw.lecNo }">
																					<input type="hidden" name="classNo" value="${classNo }">

																					<input type="submit" id="upSubmit" style="border-radius: 3px" class="btn btn-primary rounded-3 mb-2" value="수정하기">

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