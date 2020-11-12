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

.lecRef:hover {
	color: #005de8;
	text-decoration: underline;
}

.far{
color: #008995;
}
</style>
<div class="body">
	<div role="main" class="main">

		<section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-3" style="background-image: url(resources/img/page-header/KakaoTalk_20201026_130729067.jpg); padding: 70px;">
			<div class="container">
				<div class="row mt-3">
					<div class="col-md-12 align-self-center p-static order-2 text-center">
						<h1 class="text-9 font-weight-bold">강의 동영상 등록</h1>
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
							<div class="row mt-lg-3">
								<form id="fm" class="col" action="prof_lectureVideoInsert.do" method="post" enctype="multipart/form-data">
									<div class="row">
										<div class="col-md-6">
											<span class="thumb-info thumb-info-side-image thumb-info-no-zoom">
												<span class="thumb-info-side-image-wrapper">
													<video poster="" style="height: 200px; background-color: lightgrey;" width="350px">
														<source src="resources/video/비비쓰담기.mp4" type="video/mp4">
														<!-- 경로수정 -->
													</video>
												</span>
											</span>
										</div>
										<div class="col-md-6">
											<div class="col-md-12">
												<input class="text-uppercase mb-4 text-center text-6 float-left col-md-3" style="text-align: right; border: 1px solid rgb(118, 118, 118); border-radius: 3px; height: 32px;" id="lecNo" name="lecNo" type="number" placeholder="주차">
												<input class="text-uppercase mb-4 text-center text-6 float-right col-md-8" style="text-align: right;" id="lecName" name="lecName" placeholder="단원명">
												<input type="hidden" name="profNo" value="${loginProf.pNo}">
												<input type="hidden" name="profName" value="${loginProf.pName}">
												<br>
												<textarea id="lecExplanation" name="lecExplanation" style="width: 100%;" cols="30" rows="4" placeholder="강의 설명"></textarea>
												<!-- 강의설명 -->
												<br>
												<div class="col-md-12 ">
													<span class="float-right">
														<i class="far fa-user"></i>
														By <label class="profName">${loginProf.pName } 교수&nbsp;</label>
														<i class="far fa-folder"></i>
														<label class="lecRef"> 수업자료 PDF<input type="file" name="lecRef" style="display: none;">
														</label>
													</span>
												</div>
											</div>
										</div>
									</div>
									<label class="btn btn-primary btn-file"> 동영상 업로드 <input type="file" name="lecVideo1" style="display: none;">
									</label>
									<input type="hidden" name="classNo" value="${classNo }">
									<button type="submit" id="videoSubmit" class="btn btn-dark" style="float: right; margin: 0px 14px 20px 0;">
										<i class="fas fa-pencil-alt"></i>
										등록
									</button>
								</form>
							</div>
							<!-- **********************************************  등록한 강의내역 확인하는 곳 ***************************************** -->
							<hr>
							<h4 class="text-uppercase mt-4">등록한 강의</h4>
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
															<i class="far fa-user"></i>
															By <label>${loginProf.pName } 교수&nbsp;</label>
														</span>
														<span>
															<i class="far fa-folder"></i>
															<c:if test="${empty aLpw.lecReference }">
																<label> 참고자료없음 </label>
															</c:if>
															<c:if test="${!empty aLpw.lecReference }">
																<a href="resources/lectureUploadFile/${aLpw.lecReference}" download="${aLpw.lecReference}"> ${aLpw.lecReference } </a>
															</c:if>
															<!-- 수업자료경로넣어야됨 ~ -->
														</span>
														<br>
														<span>업로드 일자 : ${aLpw.lecVideoCreateDate }</span>
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
</div>


<%@ include file="../common/footer.jsp"%>

