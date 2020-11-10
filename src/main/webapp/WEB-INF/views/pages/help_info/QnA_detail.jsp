<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import=" com.kh.univ.member.model.vo.Admin"%>

<%@ include file="../common/header.jsp"%>

<div class="body">
	<div role="main" class="main">
		<section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-3" style="background-image: url(img/page-header/page-header-background-transparent.jpg); padding: 70px;">
			<div class="container">
				<div class="row mt-3">
					<div class="col-md-12 align-self-center p-static order-2 text-center">
						<h1 class="text-9 font-weight-bold">Q&A</h1>
						<span class="sub-title">Question & Answer > Detail</span>
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

								<h2 class="font-weight-bold">
									<a href="blog-post.html">${b.qnaTitle }</a>
								</h2>

								<div class="post-meta">
									<span><i class="far fa-user fl"></i> By ${b.qnaWriter } </span> <span class="date float-right">${b.qnaCreateDate }</span> <span class=" float-right">조회수 : ${b.qnaCount } |</span>
								</div>
								<p>${b.qnaContent}</p>
								<c:url var="qnaUpview" value="qnaUpView.do">
									<c:param name="qnaId" value="${b.qnaId }" />
								</c:url>
								<c:url var="qnaDelete" value="qnaDelete.do">
									<c:param name="qnaId" value="${b.qnaId }" />
								</c:url>
								<c:url var="blist" value="blist.do">
									<c:param name="currentPage" value="${ currentPage }" />
								</c:url>

								<c:if test="${ loginUser.sNo eq b.qnaWriter}">
									<a href="${ qnaUpview }">수정하기</a>&nbsp;            
					               <a href="${ qnaDelete }">삭제하기</a>&nbsp;            
					            </c:if>
								<c:if test="${ loginAdmin.aId eq b.qnaWriter}">
									<a href="${ qnaUpview }">수정하기</a>&nbsp;      
					              <a href="${ qnaDelete }">삭제하기</a>&nbsp;     
					            </c:if>

								<!-- 댓글댓글댓글댓글댓글댓글 -->
								<div id="comments" class="post-block mt-5 post-comments">
									<h4 id="rCount" class="mb-3"></h4>
									<ul class="comments">
									</ul>
								</div>

								<c:if test="${!empty sessionScope.loginAdmin }">
									<div class="post-block mt-5 post-leave-comment">
										<h4 class="mb-3">Leave a comment</h4>
										<div class="p-2">
											<div class="form-row">
												<div class="form-group col">
													<label class="required font-weight-bold text-dark">Comment</label>
													<textarea id="rContent" maxlength="5000" rows="2" class="form-control" name="message"></textarea>
												</div>
											</div>
											<div class="form-row">
												<div class="form-group col mb-0">
													<input id="rSubmit" type="button" value="등록" class="btn btn-dark btn-modern float-right" data-loading-text="Loading...">
													<a href="${nlist}" class="mb-1 mt-1 mr-1 btn btn-primary float-left"> 목록으로 </a>
												</div>
											</div>
										</div>
									</div>
								</c:if>
							</div>
						</article>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	
	<div class=" commentList "></div>

	<script src="resources/vendor/jquery/jquery.min.js"></script>
<script>
$(function(){
	getReplyList();
//		setInterval(function(){
//			getReplyList(); // 타 회원이 댓글들을 작성했을 수도 있으니 지속적으로 댓글 불러오기
//		},3000);
$('#rSubmit').on('click',function(){
		
			 if($("#rContent").val().trim() == ""){
                 alert("내용을 입력하세요");
                 $("#rContent").focus();
                 return false;
             }
			
			 var rContent = $("#rContent").val();
			 var refNid = ${b.qnaId};
			 var rName;
			 var rWriter;
			 
			 if (type != null){
					$.ajax({
						url:"qna_addReply.do",
						data:{
							rContent:rContent,
							refBid:refBid,
							rWriter:rWriter,
							rName:rName

							},
						type:"post",
						success:function(data){
							if(data == "success"){
								getReplyList(); // 등록 성공 시 다시 댓글 리스트를 호출
								$("#rContent").val(""); // 댓글 등록이 성공을 하면 작성한 글은 초기화 시켜준다.
								alert("댓글이 등록되었습니다.");
							}
						},error:function(request,status,errorData){
							console.log(request.status + " : " + errorData);
						}
						
					});
					}else{
					
					}
				})
			});
			
</script>
<%@ include file="../common/footer.jsp"%>
