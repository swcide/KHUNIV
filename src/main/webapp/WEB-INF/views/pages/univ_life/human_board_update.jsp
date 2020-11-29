<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../common/header.jsp"%>
<style>
.note-editing-area{
    min-height: 200px;
}



</style>

<div class="body">
	<div role="main" class="main">
		<section
			class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-3"
			style="background-image: url(img/page-header/page-header-background-transparent.jpg); padding: 70px;">
			<div class="container">
				<div class="row mt-3">
					<div
						class="col-md-12 align-self-center p-static order-2 text-center">
						<h1 class="text-9 font-weight-bold">학생게시판 수정</h1>
						<span class="sub-title">Student Board Update</span>
					</div>
				</div>
			</div>
		</section>

		<div class="container py-4">

			<div class="row">
				<div class="col">
					<div class="blog-posts single-post">
						<article class="post post-large blog-single-post border-0 m-0 p-0">

							<div class="post-content ml-0">


								<div class="custom-box-details bg-color-light custom-box-shadow-1 col-lg-12 ml-5 mb-5 mb-lg-4 float-right clearfix">
									<h4>학생게시판 수정</h4>

									<form class="contact-form"	action="hboardupdate.do" method="post" enctype="multipart/form-data">
										<input id="hId"type="hidden" name="hId" value="${ h.hId}">
										<input type="hidden" name="originalFilename" value="${h.originalFilename }">
										<input type="hidden" name="renameFilename" value="${h.renameFilename }">
										<input type="hidden" name="nWriter" value="${loginUser.sNo}">
										<input type="hidden" name="nName"value="${loginUser.sName}">
										<div>
										<select class ="form-control populate float-left mb-2" name="hType" style="width:200px;">
												<option value="${h.hType }">게시글 이동</option>
												<option value="3">학사공지게시판</option>
												<option value="4">일반공지게시판</option>
										</select>
										</div>
										<div>
										</div>
										<div class="form-group">
											<input class="form-control"  name="hTitle" value="${h.hTitle }">
										
										</div>
										<div class="form-row">

											<div class="form-group col">
										
												  <div class=" ">
										              <div class="mb-3">
										                <textarea class="textarea" placeholder="Place some text here" name="hContent"
										                          style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
										                          ${h.hContent }
							                            </textarea>
										              </div>
										            
										            </div>
										            <div>첨부파일</div>
													<div>
													
													
													
													<input class="form-control-file" type="file" name="uploadFile">
														<c:if test="${ !empty h.originalFilename }">
															<br> 현재 업로드한 파일 :
															<a href="${ contextPath }/resources/uploadFiles/${h.renameFilename}" download="${h.originalFilename}">${h.originalFilename}</a>
														</c:if>
													</div>
											
											</div>
										</div>
										<div>
										 <a href="javascript:history.go(-1)" class="btn btn-quaternary mb-2">뒤로가기</a>
										</div>
										<input	type="submit" value="수정하기"class="btn btn-dark btn-modern float-right">
					
										
										
									</form>
										
									
									
								</div>
							</div>
						</article>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../common/footer.jsp"%>
