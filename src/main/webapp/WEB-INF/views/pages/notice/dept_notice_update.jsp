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
						<h1 class="text-9 font-weight-bold">학사공지 작성하기</h1>
						<span class="sub-title">Department Notice Write</span>
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
									<h4>학사공지 작성</h4>

									<form class="contact-form"	action="nUpdate.do" method="post" enctype="multipart/form-data">
										<input id="nId"type="hidden" name="nId" value="${n.nId}">
										<input type="hidden" name="originalFileName" value="${n.originalFileName }">
										<input type="hidden" name="renameFileName" value="${n.renameFileName }">
										<input type="hidden" name="nWriter" value="${loginAdmin.aId}">
										<input type="hidden" name="nName"value="${loginAdmin.aName}">
										<div>
										<select class ="form-control populate float-left mb-2" name="nType" style="width:200px;">
												<option value="${n.nType }">게시글 이동</option>
												<option value="3">학사공지게시판</option>
												<option value="4">일반공지게시판</option>
										</select>
										</div>
										<div>
										<select class ="form-control populate float-left ml-2 mb-2"name="nSecret" style="width:200px;">
												<option value="${n.nSecret}">공개 설정</option>
												<option value="N">공개</option>
												<option value="Y">비공개</option>
										</select>
										</div>
										<div class="form-group">
											<input class="form-control"  name="nTitle" value="${n.nTitle }">
										
										</div>
										<div class="form-row">

											<div class="form-group col">
										
												  <div class=" ">
										              <div class="mb-3">
										                <textarea class="textarea" placeholder="Place some text here" name="nContent"
										                          style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
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
										 <a href="javascript:history.go(-1)" class="btn btn-quaternary mb-2">뒤로가기</a>
										</div>
										<input	type="submit" value="수정하기"class="btn btn-dark btn-modern float-right">
					
										
										
									</form>
										
									
									<script>
									$(function(){
										var nId = $('#nId').val()
										
										$('#secret').on('click',function(){
											location.href='deptNsecret.do?nId='+${n.nId }
											
										})
										$('#publick').on('click',function(){
											location.href='deptNpublic.do?nId='+${n.nId }
											
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
<%@ include file="../common/footer.jsp"%>
