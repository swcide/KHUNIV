<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.kh.univ.member.model.vo.Student"%>
<%@ page import="com.kh.univ.member.model.vo.Admin"%>
<%@ page import="com.kh.univ.member.model.vo.Professor"%>
<%@ include file="../common/header.jsp"%>

<style>
.mailbox-attachment-info{
	background: #f8f9fa;
    padding: 10px;
	}
}
.mailbox-attachment-name{
    color: #666;
    font-weight: 700;
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
						<h1 class="text-9 font-weight-bold">학사공지</h1>
						<span class="sub-title">Department Notice</span>
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
									${ n.nTitle }    
								</h2>

								<div class="post-meta">
									<span><i class="far fa-user fl"></i> By ${n.nWriter }
									</span> <span class="date float-right">${n.nCreateDate }</span>
								</div>

								<p class="text-5">${n.nContent }</p>
								
								<div class="mt-5 ">
									<hr>
									<h4 >첨부파일</h4>
								</div>
								
								
								<c:if test="${ !empty n.originalFileName }">
								<ul class=" d-flex align-items-stretch clearfix" style="list-style:none; padding: 0;">
					                <li>		
					                  <div class="mailbox-attachment-info">
					                    <a href="/spring/resources/uploadFiles/${n.renameFileName}" download="${n.originalFileName }" class="mailbox-attachment-name">
					                    	<i class="fas fa-paperclip"></i>${n.originalFileName }
				                    	</a>
					                        <span class="mailbox-attachment-size clearfix mt-">
					                          <a href="#" class="btn btn-default btn-sm float-right"><i class="fas fa-cloud-download-alt"></i></a>
					                        </span>
					                    
					                  </div>
					                </li>
								</ul>
								
								
								</c:if>
							
								<c:if test="${ loginAdmin != null }">
								<div class=" float-right">											
											<div>
												<c:url var="nupview" value="nupView.do">
													<c:param name="nId" value="${n.nId }"/>
												</c:url>
												<c:url var="ndelete" value="ndelete.do">
													<c:param name="nId" value="${n.nId }"/>
												</c:url>
												<c:url var="nlist" value="dept_notice.do">
													<c:param name="currentPage" value="${ currentPage }"/>
												</c:url>
											
											
												<a href="${ndelete}" class="mb-1 mt-1 mr-1 btn btn-primary">
													삭제하기
												</a>
												<a href="${nupview }" class="mb-1 mt-1 mr-1 btn btn-primary">
													수정하기
												</a>											
											</div>
										</div>
										
								</c:if>
								<a href="${nlist}" class="mb-1 mt-1 mr-1 btn btn-primary float-left">
												목록으로
										</a>
<!-- 								<div id="comments" class="post-block mt-5 post-comments"> -->
								


<!-- 									<ul class="comments" > -->
<!-- 										<li> -->
<!-- 											<div class="comment" id="rtb"> -->
<!-- 												<div id ="rImg"class="img-thumbnail img-thumbnail-no-borders d-none d-sm-block"> -->
<!-- 													<img class="avatar" alt="" src="img/avatars/avatar-2.jpg"> -->
<!-- 												</div> -->
<!-- 												<div class="comment-block"> -->
<!-- 													<div class="comment-arrow"></div> -->
<!-- 													<span id="rWt" class="comment-by"> <strong>댓글 작성자 이름이 여기 들어감</strong> <span -->
<!-- 														class="float-right"> <span> <a href="#"><i -->
<!-- 																	class="fas fa-reply"></i> Reply</a></span> -->
<!-- 													</span> -->
<!-- 													</span> -->
<!-- 													<p id="rCt">댓글 내용이 여기 들어감</p> -->
<!-- 													<span id="rDate" class="date float-right">2020-10-29 13:38 </span> -->
<!-- 												</div> -->
<!-- 											</div> -->
<!-- 										</li> -->
<!-- 									</ul> -->
<!-- 								</div> -->
<!-- 								<div class="post-block mt-5 post-leave-comment"> -->
<!-- 									<h4 class="mb-3">Leave a comment</h4> -->

									
<!-- 										<div class="p-2"> -->
<!-- 											<div class="form-row"> -->
<!-- 												<div class="form-group col"> -->
<!-- 													<label class="required font-weight-bold text-dark">Comment</label> -->
<!-- 													<textarea id="rContent" maxlength="5000" data-msg-required="Please enter your message." rows="2" class="form-control" name="message" required=""></textarea> -->
<!-- 												</div> -->
<!-- 											</div> -->
<!-- 											<div class="form-row"> -->
<!-- 												<div class="form-group col mb-0"> -->
<!-- 													<input id="rSubmit"type="button" value="등록"  class="btn btn-dark btn-modern float-right" data-loading-text="Loading..."> -->
<!-- 												</div> -->
<!-- 											</div> -->
<!-- 										</div> -->
								
<!-- 								</div> -->

								

							</div>
						</article>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<table align="center" width="500" border="1" cellspacting="0">
		<tr>
			<td><textarea rows="3" cols="55" id="rContent"></textarea></td>
			<td>
				<button id="rSubmit">등록하기</button>
			</td>
		</tr>
	</table>
	
	
	<table align="center" width="500" border="1" cellspacting="0" id="rtb">
		<thead>
			<tr>
				<td colspan="3"><b id="rCount"></b></td>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	
	<script>
// 		$(function() {
// 			getReplyList();
			
// 			setInterval(function(){
// 				getReplyList(); // 타 회원이 댓글들을 작성했을 수도 있으니 지속적으로 댓글 불러오기
// 			},3000);
			
			// 댓글 등록 ajax
// 			$("#rSubmit").on("click",function(){
// 				var rContent = $("#rContent").val();
// 				var refNid = ${n.nId};
<%-- 				var rWriter = "<%=((Admin)session.getAttribute("loginAdmin")).getaId()%>"; --%>
				
// 				console.log(rWriter)
// 				$.ajax({
// 					url:"addReply.do",
// 					data:{
// 						rContent:rContent,
// 						refNid:refNid,
// 						rWriter:rWriter
// 						},
// 					type:"get",
// 					success:function(data){
// 						if(data =="success"){
// 							getReplyList(); // 등록 성공 시 다시 댓글 리스트를 호출
							
// 							$("#rContent").val(""); // 댓글 등록이 성공을 하면 작성한 글은 초기화 시켜준다.
// 						}
// 					}
					
// 				});
// 			});
			
			
// 		});
		
		function getReplyList() {
			var nId = ${n.nId};
				console.log(nId)
			$.ajax({
				url:"nrList.do",
				data:{nId:nId},
				dataType:"json",
				success:function(data){
					console.log(data);
					$tableBody = $("#rtb tbody");
					$tableBody.html("");
					console.log(data);
					var $tr;
					var $rWriter;
					var $rContent;
					var $rCreateDate;
					var $a
					
					$("#rCount").text("댓글("+data.length+")");
					
					if(data.length>0){
						for(var i  in data){
							$tr = $("<tr>");
							$rWriter=$("<td width='100' >").text(data[i].rWriter+"");

							$rContent=$("<td>").text(data[i].rContent);
							$rCreateDate=$("<td width='100'>").text(data[i].rCreateDate);
							
							$tr.append($rWriter);
							$tr.append($rContent);
							$tr.append($rCreateDate);
							$tableBody.append($tr);
						}
					}else{
						$tr = $("<tr>");
						$rContent = $("<td colspan='3'>").text("등록된 댓글이 없습니다."); // 응용-> 검색시 
						
						$tr.append($rContent);
						$tableBody.append($tr);
					}
					
				},error:function(request,status,errorData){
					console.log(request.status + " : " + errorData);
				}
			});
		}
	</script>
<%-- 	<input type="hidden" value="${loginAdmin}" id="ii"> --%>
<%-- 	<input type="hidden" value="${loginUser}" id="ll"> --%>
<%-- 	<input type="hidden" value="${loginProf}" id="dd"> --%>
</div>

<%@ include file="../common/footer.jsp"%>
