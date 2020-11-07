<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import = " com.kh.univ.member.model.vo.Admin"%>

<%@ include file="../common/header.jsp"%>

<div class="body">
	<div role="main" class="main">
		<
		<section
			class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-3"
			style="background-image: url(img/page-header/page-header-background-transparent.jpg); padding: 70px;">
			<div class="container">
				<div class="row mt-3">
					<div
						class="col-md-12 align-self-center p-static order-2 text-center">
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
									<span><i class="far fa-user fl"></i> By ${b.qnaWriter }
									</span> 
									<span class="date float-right">${b.qnaCreateDate }</span>
								<span class=" float-right">조회수 : ${b.qnaCount } |</span>
								</div >
								<p>${b.qnaContent}</p>
								<c:url var="bupview" value="bupView.do">
					               <c:param name="bId" value="${b.qnaId }"/>
					            </c:url>
					            <c:url var="bdelete" value="bdelete.do">
					               <c:param name="bId" value="${b.qnaId }"/>
					            </c:url>
					            <c:url var="blist" value="blist.do">
					               <c:param name="currentPage" value="${ currentPage }"/>
					            </c:url>

								<c:if test="${ loginAdmin.aId eq b.qnaWriter }">
					               <a href="${ qnaUpview }">수정하기</a>&nbsp;            
					               <a href="${ bdelete }">삭제하기</a>&nbsp;            
					            </c:if>
					            
					            <!-- 댓글댓글댓글댓글댓글댓글 -->
<!-- 								<div id="comments" class="post-block mt-5 post-comments"> -->
<!-- 									<ul class="comments"> -->
<!-- 										<li> -->
<!-- 											<div class="comment"> -->
<!-- 												<div class="comment-block"> -->
<!-- 													<span class="comment-by">  -->
<!-- 													<strong>관리자</strong>  -->
<!-- 													</span> -->
<!-- 													<p>짜친다 이 말은 쪼들린다 혹은 몹시 궁핍하여 생활하기에 곤란하다는 뜻의 경상도 지방의 -->
<!-- 														말입니다. 대충 촌스럽다거나 구리다는 뜻으로 생각하시면 될 거 같습니다.</p> -->
<!-- 													<span class="date float-right">2020-10-29 13:38 </span> -->
<!-- 												</div> -->
<!-- 											</div> -->
<!-- 										</li> -->
<!-- 									</ul> -->
<!-- 								</div> -->
								<c:if test="${!empty sessionScope.loginAdmin }">
<!-- 								<div class="post-block mt-5 post-leave-comment"> -->
<!-- 										<h4 class="mb-3">댓글</h4> -->
<!-- 										<form> -->
<!-- 											<div class="p-2"> -->
<!-- 												<div class="form-row"> -->
<!-- 													<div class="form-group col"> -->
<!-- 														<label -->
<!-- 															class="required font-weight-bold text-dark">내용</label> -->
<!-- 														<textarea maxlength="5000" -->
<!-- 															data-msg-required="Please enter your message." rows="2" -->
<!-- 															class="form-control" name="message" required></textarea> -->
<!-- 													</div> -->
<!-- 												</div> -->
<!-- 												<div class="form-row"> -->
<!-- 													<div class="form-group col mb-0"> -->
<!-- 														<input type="submit" value="뒤로가기" -->
<!-- 															class="btn btn-quaternary btn-modern" -->
<!-- 															onclick="history.back()"> -->
<!-- 														<input type="submit" value="등록" -->
<!-- 															class="btn btn-dark btn-modern float-right" -->
<!-- 															data-loading-text="Loading..."> -->
<!-- 													</div> -->
<!-- 												</div> -->
<!-- 											</div> -->
<!-- 										</form> -->
<!-- 									</div> -->

<table align="center" width="500" border="1" cellspacting="0">
		<tr>
			<td><textarea rows="3" cols="55" id="rContent"></textarea></td>
			<td>
				<button id="rSubmit">등록하기</button>
			</td>
		</tr>
	</table>
	
	<table align="center" width="500" border="1" cellspacing="0" id="rtb">
		<thead>
			<tr>
				<td colspan="3"><b id="rCount"></b></td>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
</c:if>
							</div>
						</article>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
// 		$(function(){
// 			getReplyList();
// // 			setInterval(function(){
// // 					getReplyList(); // 타회원이 댓글을 작성했을 수 도 있으니 지속적으로 댓글 불러오기
// // 			},3000);
			
// 			//댓글등록 ajax
// 			$("#rSubmit").on("click",function(){
// 				var rContent = $("#rContent").val();
// 				var refBid = ${b.qnaId};
<%-- 				var rWriter = "<%=((Admin)session.getAttribute("loginAdmin")).getaId() %>"; --%>
// 				$.ajax({
// 					url:"addReply.do",
// 					data:{
// 						rContent:rContent,
// 						refBid:refBid,
// 						rWriter:rWriter
// 					},
// 					type:"post",
// 					success:function(data){
// 						if(data == "success"){
// 							getReplyList(); // 등록 성공 시 다시 댓글 리스트를 호출
							
// 							$("#rContent").val(""); // 댓글 등록이 성공을 하면 작성한 글을 초기화 시켜준다.
// 						}
// 					},
// 					error:function(request,status,errorData){
// 						console.log(request.status + " : " + errorData);
// 					}
// 				});
// 			});
// 		});
		
// 		function getReplyList(){
// 			var bId = ${b.qnaId};
			
// 			$.ajax({
// 				url:"rList.do",
// 				data:{bId:bId},
// 				dataType:"json",
// 				success:function(data){
// 					console.log(data);
// 					$tableBody = $("#rtb tbody");
// 					$tableBody.html("");
					
// 					var $tr;
// 					var $rWriter;
// 					var $rContent;
// 					var $rCreateDate;
					
// 					$("#rCount").text("댓글(" + data.length+")"); // 댓글(5)
					
// 					if(data.length > 0) { //댓글이 있을 경우
// 						for(var i in data){
// 							$tr = $("<tr>");
// 							$rWriter = $("<td width = '100'>").text(data[i].qna_rWriter);
// 							$rContent = $("<td>").text(data[i].qna_rContent);
// 							$rCreateDate = $("<td width='100'>").text(data[i].qna_rCreateDate);
							
// 							$tr.append($rWriter);
// 							$tr.append($rContent);
// 							$tr.append($rCreateDate);
// 							$tableBody.append($tr);
							
// 						}
// 					}else{
// 						$tr = $("<tr>");
// 						$rContent = $("<td colspan='3'>").text("등록된 댓글이 없습니다.");
						
// 						$tr.append($rContent);
// 						$tableBody.append($tr);
// 					}
// 				},
// 				error:function(request,status,errorData){
// 					console.log(request.status + " : " + errorData);
// 				}
// 			});
// 		}
	</script>
<%@ include file="../common/footer.jsp"%>
