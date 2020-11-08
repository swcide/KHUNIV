
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.kh.univ.member.model.vo.Student"%>
<%@ page import="com.kh.univ.member.model.vo.Admin"%>
<%@ page import="com.kh.univ.member.model.vo.Professor"%>


<%



Student loginUser = (Student)session.getAttribute("loginUser");
Professor loginProf = (Professor)session.getAttribute("loginProf");
Admin loginAdmin = (Admin)session.getAttribute("loginAdmin");
String sNo = null;
String pNo = null;
String aId = null;

String sName =null;
String pName =null;
String aName = null;

Integer type = null;

	if(loginUser !=null){
	 sNo =loginUser.getsNo(); 
	 sName =loginUser.getsName();
	 type = loginUser.getType();
	
	}else if(loginProf !=null){	
	 pNo =loginProf.getpNo();
	 pName=loginProf.getpName();
	 type = loginProf.getType();
	
	}else if (loginAdmin !=null){
	 aId = loginAdmin.getaId();
	 aName = loginAdmin.getaName();
	 type = loginAdmin.getType();
	
	}
	
System.out.println(type);	


     

%>



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
ul.comments li {
	clear: both;
    padding: 10px 0px 0px 20px!important;
}}
</style>



<div class="body">
	<div role="main" class="main">

		<section
			class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-3"
			>
			<div class="container">
				<div class="row mt-3">
					<div
						class="col-md-12 align-self-center p-static order-2 text-center">
						<h1 class="text-9 font-weight-bold">학사공지${n.nId}${type2 }</h1>
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
								<c:if test="${ loginAdmin.aId eq n.nWriter }">
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
								<c:if test="${ loginProf.pNo eq n.nWriter and loginAdmin.sNo eq n.nWriter}">
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
								<c:if test="${ lgoinUser.sNo eq n.nWriter and loginAdmin.sNo eq n.nWriter }">
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
								
								<div id="comments" class="post-block mt-5 post-comments">
											<h4 id ="rCount"class="mb-3"></h4>

											<ul class="comments">
												<li>

											</ul>

										</div>
							
							
							
							
							
							
							
							
							
							
							
							
							
						
 								<c:if test="${!empty sessionScope  }">
 								<div class="post-block mt-5 post-leave-comment">
 									<h4 class="mb-3">Leave a comment</h4> 									
 										<div class="p-2"> 
 											<div class="form-row"> 
 												<div class="form-group col"> 
 													<label class="required font-weight-bold text-dark">Comment</label> 
 													<textarea id="rContent" maxlength="5000" rows="2" class="form-control" name="message" ></textarea> 
											</div> 
 											</div> 
 											<div class="form-row"> 
 												<div class="form-group col mb-0">
													<input id="rSubmit"type="button" value="등록"  class="btn btn-dark btn-modern float-right" data-loading-text="Loading..."> 
												<a href="${nlist}" class="mb-1 mt-1 mr-1 btn btn-primary float-left">
												목록으로
										</a>
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
	
	<div class=" commentList "></div>
	

	<script src="resources/vendor/jquery/jquery.min.js"></script>
<script>

	$(function(){
		getReplyList();
// 		setInterval(function(){
// 			getReplyList(); // 타 회원이 댓글들을 작성했을 수도 있으니 지속적으로 댓글 불러오기
// 		},3000);


		
		
		$('#rSubmit').on('click',function(){
		
			 if($("#rContent").val().trim() == ""){
                 alert("내용을 입력하세요");
                 $("#rContent").focus();
                 return false;
             }
			
			
			
			
			
			
			var rContent = $("#rContent").val();
			var refNid = ${n.nId};
			var rName;
			var rWriter;
			var type= "<%=type%>";
			
			console.log(rContent)
			if(type !=null){
				if (type==1){
					rName = "<%=sName%>";
					rWriter = "<%=sNo%>";
				}
				else if(type==2){
					rName = "<%=pName%>";
					rWriter = "<%=pNo%>";
				}else if(type==3){
					rName = "<%=aName%>";
					rWriter = "<%=aId%>";
				}
			
			}
		
			
			if (type != null){
			$.ajax({
				url:"addReply.do",
				data:{
					rContent:rContent,
					refNid:refNid,
					rWriter:rWriter,
					rName:rName

					},
				type:"post",
				success:function(data){
					if(data == "success"){
						getReplyList(); // 등록 성공 시 다시 댓글 리스트를 호출
						$("#rContent").val(""); // 댓글 등록이 성공을 하면 작성한 글은 초기화 시켜준다.
						alert("댓글이 등록되었습니다.");
						console.log(data);
					}
				},error:function(request,status,errorData){
					console.log(request.status + " : " + errorData);
				}
				
			});
			}else{
			
			}
		})
	});
	
		

	
		
		function getReplyList() {
			var nId = ${n.nId};
				console.log(nId)
			$.ajax({
				url:"nrList.do",
				data:{nId:nId},
				dataType:"json",
				success:function(data){
					$li = $('#comments ul li');
					$li.html("");
				
					
					

					
					var $dupReply;
					var $rWriter;
					
					var $rName;
					var $rContent;
					var $rCreateDate;
					var type= "<%=type%>";
					var $rId;
					

					$("#rCount").text("댓글("+data.length+")");
					
					if(data.length>0){
						for(var i  in data){

							$rWriter =$('<input type"hidden" "value="'+data[i].rWriter+'">').val();
							$rName =$('<input type"hidden" value="'+data[i].rName+'">').val();
							$rContent=$('<input type"hidden"  value="'+data[i].rContent+'">').val();
							$rCreateDate=$('<input type"hidden"  value="'+data[i].rCreateDate+'">').val();
							
							$rId = data[i].rId;
							
							
							
							$div_c = $(
									
									'<div class="comment">'+													
									'	<div class="comment-block">'+
									'		<div class="comment-arrow"></div>'+
									'		<input type="hidden" value="'+$rId+'">'+		
									'		<span class="comment-by">'+
									'			<strong >'+$rName+'</strong>'+
									'		<span class="date float-right" style=" margin-left: 10px;">'+$rCreateDate+'</span>'+			
									'		</span>'+
									'		<p style="margin-bottom:15px;">'+$rContent+'</p>'+ 
									'		<textarea style="width:85%; display: none;"></textarea>'+
// 									' 		<span class="float-right">'+
// 									'				<span> <a href="javascript:void(0);" onclick="reAddReply(this);"><i class="fas fa-reply"></i> Reply</a></span>'+
// 									'		</span>'+
									'	</div>'+
									'</div>' );
								
						$li.append($div_c);
						
						
						
						}
						
						//for문

						if (type==1){
							var sNo= "<%=sNo%>";
							
							$
						
								if($rWriter==sNo){	
									$dupReply = $(	
													'<span  class=" float-right">'+
														'<button onclick="rDelete(this);" class="btn btn-xs btn-light" style=" margin-right: 10px; ">삭제</button>'+
													'</span>'+
													'<span class=" float-right">'+
														'<button onclick="rUpdateView(this);"class="btn btn-xs btn-primary" style=" margin-right: 10px;" >수정</button>'+
													'</span>'											 
												);
							
								 $('.comment-block').append($dupReply);
								}
							}
							else if(type==2){
							var pNo = "<%=pNo%>";
							
								if($rWriter==pNo){
									$dupReply = $(	
													'<span  class=" float-right">'+
													
														'<button onclick="rDelete(this);" class="btn btn-xs btn-light" style=" margin-right: 10px; ">삭제</button>'+
													'</span>'+
													'<span class=" float-right">'+
														'<button onclick="rUpdateView(this);" class="btn btn-xs btn-primary" style=" margin-right: 10px;" >수정</button>'+
													'</span>'
												  );	

							  	$('.comment-block').append($dupReply);
								}
							}else if(type==3){
						
								$dupReply = $(	
												'<span  class=" float-right">'+
												
													'<button onclick="rDelete(this);" class="btn btn-xs btn-light" style=" margin-right: 10px; ">삭제</button>'+
												'</span>'+
												'<span class=" float-right">'+
													'<button onclick="rUpdateView(this);" class="btn btn-xs btn-primary" style=" margin-right: 10px;" >수정</button>'+
												'</span>'						
											);	
					
								$('.comment-block ').append($dupReply);
							}
						
					}
					//if 문
				
				},error: function(result){
					console.log(result)
				}
			});
		};
	
		
		
		function rDelete(obj){
			
			var nId = ${n.nId};
			var rId = $(obj).parent().siblings('input').val();
			
			
			console.log(rId);
			
			$.ajax({
				url:"deleteReply.do",
				data:{
					rId:rId},
				type:"post",
				success:function(data){
					if(data =="success"){
						
						alert("삭제가 완료되었습니다.");
						getReplyList();
						
					}
				},error: function(result){
					console.log(result)
				}
				
				
			});
		}
		function rUpdateView(obj){
			
// 			var rContent =$(obj).parent().siblings('p').html().trim();
			var rId =$(obj).parent().siblings('input').val();
			var rName = $('.comment-by').children().siblings('span').html().trim();
			var rCreateDate = $('.comment-by').children().siblings('strong').html().trim();
			
			var $test;
			$tset = '<span>테스트 입니다.</span>';
		
			
			
			var changeBtn;
			changeBtn=
				'<button onclick="rUpdate(this);" class="btn btn-xs btn-primary" style=" margin-right: 10px; ">수정하기</button>'+
				'<button  onclick="rCancle(this);" class="btn btn-xs btn-primary" style=" margin-right: 10px; ">취소하기</button>';
			
			var changeContent;
			changeContent= $(obj).parent().siblings('p').css('display','none');
			var changeContent2;
			changeContent= $(obj).parent().siblings('textarea').css('display','block');
					
			
			var edit = $(obj).parent().append(changeBtn);
			
			
			var remove =$(obj).remove();
			
			
// 		   var rUpdateView = 
// 			   $(
						  
				   
// 	   			)
		   
			
			
			
			

		}
		
		function rUpdate(obj){
			
			
				
			
		
			
			var nId = ${n.nId};
			var rId = $(obj).parent().siblings('input').val();
			var rContent =$(obj).parent().siblings('textarea').val();
			
			 if(rContent.trim() == ""){
                 alert("내용을 입력하세요");
                 rContent.focus();
                 return false;
             }
			
			
			console.log(rId);
			console.log(rContent);
			
			$.ajax({
				url:"updateReply.do",
				data:{
					rId:rId,
					rContent:rContent},
				type:"post",
				success:function(data){
					if(data =="success"){
						
						alert("수정이 완료되었습니다.");
						getReplyList();
						
					}
				},error: function(result){
					console.log(result)
				}
				
				
			});
		}
	
	function rCancle(obj){
		var update = '<button onclick="rUpdateView(this);" class="btn btn-xs btn-primary" style=" margin-right: 10px;" >수정</button>';
		var $btnBack;
		
		var remove2 =$(obj).siblings('button').remove();
		
		var changeContent2;
		changeContent= $(obj).parent().siblings('textarea').css('display','none');

		var changeContent;
		changeContent= $(obj).parent().siblings('p').css('display','block');

		$btnBack=$(obj).parent().append(update);
		var remove =$(obj).remove();
		
	
		
	}
	
	
	
	
	
	
	
	
	
	</script>

</div>

<%@ include file="../common/footer.jsp"%>
