<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.kh.univ.member.model.vo.Professor"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../common/professor_header.jsp"%>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- Content Wrapper. Contains page content -->
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
							<hr class="solid my-5">
						</div>
					</div>
					<div class="row">
						<div class="col">
							<div class="row mt-lg-3">
								<form id="fm" class="col" action="#" method="post" enctype="multipart/form-data">
									<div class="row">
										<div class="col-md-6">
											<span class="thumb-info thumb-info-side-image thumb-info-no-zoom"> <span class="thumb-info-side-image-wrapper"> <video poster="" style="height: 200px; background-color: lightgrey;" width="350px">
														<source src="resources/video/비비쓰담기.mp4" type="video/mp4">
														<!-- 경로수정 -->
													</video>
											</span>
											</span>
										</div>
										<div class="col-md-6">
											<div class="col-md-12">
												<input class="text-uppercase mb-4 text-center text-6 float-right col-md-9" style="text-align: right;" id="lecName" name="lecName" placeholder="이름">
												<input class="text-uppercase mb-4 text-center text-6 float-right col-md-3" style="text-align: right;" id="lecNo" name="lecNo" placeholder="주차">
												<input type="hidden" name="classNo" value="${loginAdmin.aId}">
											<input type="hidden" name="lecNo"value="${loginAdmin.aName}">
												<br>
												<textarea id="lecExplanation" name="lecExplanation" style="width: 100%;" cols="30" rows="4" placeholder="강의 설명"></textarea>
												<!-- 강의설명 -->
												<br>
													<div class="col-md-12 ">
														<span class='float-right'> <i class="far fa-user"></i> By <a href="#">${loginProf.pName } 교수&nbsp;</a> <i class="far fa-folder"></i><a href="#" type="file" name="lecReference"> 수업자료 pdf </a>
														</span>
													</div>
											</div>
										</div>
									</div>
									<label class="btn btn-primary btn-file"> 동영상 업로드 <input type="file" id="lecVideo" name="lecVideo" style="display: none;">
									</label>
									<button type="button" id="videoSubmit" class="btn btn-dark" style="float: right; margin-bottom: 20px;">
										<i class="fas fa-pencil-alt"></i> 등록
									</button>
								</form>
							</div>
							<!-- **********************************************  등록한 강의내역 확인하는 곳 ***************************************** -->
							<hr>
							<h4 class="text-uppercase mt-4">등록한 강의</h4>
							<c:forEach var="aLpw" items="${aLpw }">
								<div class="row mt-lg-3">
									<div class="col">
										<span class="thumb-info thumb-info-side-image thumb-info-no-zoom"> <span class="thumb-info-side-image-wrapper"> <video poster="" style="height: 200px; background-color: black;" width="350px">
													<source src="video/memory-of-a-woman.mp4" type="video/mp4">
													<!-- 비디오경로넣어야됨~ -->
												</video>
										</span> <span class="thumb-info-caption" style="text-align: right"> <span class="thumb-info-caption-text">
													<h5 class="text-uppercase mb-5 text-center text-6">${aLpw.lecNo }주차: ${aLpw.lecName }</h5> <span>${aLpw.lecExplanation }</span>
													<div class="post-meta">
														<span> <i class="far fa-user"></i> By <a href="#">${loginProf.pName } 교수&nbsp;</a>
														</span> <span> <i class="far fa-folder"></i><a href="${aLpw.lecReference }"> 수업자료 등록 </a> <!-- 수업자료경로넣어야됨 ~ -->
														</span><br> <span>업로드 일자 : ${aLpw.lecVideoCreateDate }</span>
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
<!--  파일업로드부터 진행 ! -->
<script> 
$(function(){
// 	prof_lectureVideo();
	
	//등록 ajax
	$("#videoSubmit").on("click",function(){
		var lecName = $("#lecName").val();
		var lecNo = $("#lecNo").val();
		var lecExplanation = $("#lecExplanation").val();
		var lecVideo = $("#lecVideo").val();
		var formData = new FormData($('#fm')[0]);

							$.ajax({
								enctype: 'multipart/form-data',
						   	    processData: false,
							    contentType: false,
							    data: formData,
								url : "prof_lectureVideoInsert.do",
								type : "post",
								success : function(data) {
									if (data == "success") {
										// 등록 성공 시 다시 리스트를 호출
										prof_lectureVideo(); 
										
										// 등록이 성공을 하면 작성한 글을 초기화 시켜준다.
										$("#lecName").val(""); 
										$("#lecNo").val("");  
										$("#lecExplanation").val(""); 
										$("#lecVideo").val("");  
									}
								},
								error : function(request, status, errorData) {
									console.log(request.status + " : "
											+ errorData);
								}
							});
						});
	});

// 	function prof_lectureVideo() {

// 		$.ajax({
// 			url : "prof_lectureVideo.do",
// 			data : {
// 				classNo : classNo
// 			},
// 			dataType : "json",
// 			success : function(data) {
// 				console.log(data);
// 				$tableBody = $("#rtb tbody");
// 				$tableBody.html("");

// 				var $tr;
// 				var $rWriter;
// 				var $rContent;
// 				var $rCreateDate;

// 				$("#rCount").text("댓글(" + data.length + ")"); // 댓글(5)

// 				if (data.length > 0) { //댓글이 있을 경우
// 					for ( var i in data) {
// 						$tr = $("<tr>");
// 						$rWriter = $("<td width = '100'>")
// 								.text(data[i].rWriter);
// 						$rContent = $("<td>").text(data[i].rContent);
// 						$rCreateDate = $("<td width='100'>").text(
// 								data[i].rCreateDate);

// 						$tr.append($rWriter);
// 						$tr.append($rContent);
// 						$tr.append($rCreateDate);
// 						$tableBody.append($tr);

// 					}
// 				} else {
// 					$tr = $("<tr>");
// 					$rContent = $("<td colspan='3'>").text("등록된 댓글이 없습니다.");

// 					$tr.append($rContent);
// 					$tableBody.append($tr);
// 				}
// 			},
// 			error : function(request, status, errorData) {
// 				console.log(request.status + " : " + errorData);
// 			}
// 		});
// 	}
</script>
<%@ include file="../common/footer.jsp"%>

