<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../common/header.jsp"%>

<div class="body">
	<div role="main" class="main">
		<section
			class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-3"
			style="background-image: url(img/page-header/page-header-background-transparent.jpg); padding: 70px;">
			<div class="container">
				<div class="row mt-3">
					<div
						class="col-md-12 align-self-center p-static order-2 text-center">
						<h1 class="text-9 font-weight-bold">학생 게시판 작성하기</h1>
						<span class="sub-title">Student Board</span>
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


								<div class="post-block mt-5 post-leave-comment">
									<h4>학생 게시판 작성</h4>

									<form id="fm"class="contact-form"action="hBoardInsert.do" method="post" enctype="multipart/form-data">

										<div class="form-group">
											<input id="htitle" class="form-control" name="hTitle" placeholder="제목">
										</div>
										<div class="form-row">

											<div class="form-group col">
											
											
 										<input type="hidden" name="hWriter" value="${loginUser.sNo}">
											<input type="hidden" name="hName"value="${loginUser.sName}">
											<input type="hidden" name="hType"value="2">
												 <div class=" ">
										              <div class="mb-3">
												<textarea maxlength="5000"
													data-msg-required="Please enter your message." rows="10"
													class="form-control" name="hContent" required></textarea>
												 </div>
										            
										            </div>
													<div>첨부파일</div>
													<div><input class="form-control-file" type="file" name="uploadFile"></div>
											</div>
										</div>
										<input  type="button" onclick="location.href='javascript:history.go(-1)'" value="뒤로가기"	class="btn btn-quaternary mb-2">
										
										<input id="submit"	type="submit" value="완료"class="btn btn-dark btn-modern float-right">
									</form>
											</div>
										</div>
								</div>
							</div>
						</article>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
$(function(){
	
	
		
	$('#submit').on('click',function(){
		 if($('#Content').val().trim() == ""){
	         alert("내용을 입력하세요");
	         $('#Content').focus();
	         return false;
	     }else if($("#ntitle").val().trim() == ""){
	         alert("제목을 입력하세요");
	         $("#Content").focus();
	         return false;
		 
		}
		 console.log("hohoho")
	
	})
})

</script>
<%@ include file="../common/footer.jsp"%>