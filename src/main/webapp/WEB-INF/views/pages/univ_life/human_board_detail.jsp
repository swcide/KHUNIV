<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.kh.univ.member.model.vo.Student"%>
<%@ page import="com.kh.univ.member.model.vo.Admin"%>
<%@ page import="com.kh.univ.member.model.vo.Professor"%>


<%
	Student loginUser = (Student) session.getAttribute("loginUser");
Professor loginProf = (Professor) session.getAttribute("loginProf");
Admin loginAdmin = (Admin) session.getAttribute("loginAdmin");

String sNo = null;
String pNo = null;
String aId = null;

String sName = null;
String pName = null;
String aName = null;

int type = 0;

if (loginUser != null) {
	sNo = loginUser.getsNo();
	sName = loginUser.getsName();
	type = loginUser.getType();

} else if (loginProf != null) {
	pNo = loginProf.getpNo();
	pName = loginProf.getpName();
	type = loginProf.getType();

} else if (loginAdmin != null) {
	aId = loginAdmin.getaId();
	aName = loginAdmin.getaName();
	type = loginAdmin.getType();

}

System.out.println(type);
%>


<%@ include file="../common/header.jsp"%>

<style>
.mailbox-attachment-info {
	background: #f8f9fa;
	padding: 10px;
}

}
.mailbox-attachment-name {
	color: #666;
	font-weight: 700;
}

ul.comments li {
	clear: both;
	padding: 10px 0px 0px 20px !important;
}
}
</style>

<div class="body">
	<div role="main" class="main">
		<section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-3" style="background-image: url(img/page-header/page-header-background-transparent.jpg); padding: 70px;">
			<div class="container">
				<div class="row mt-3">
					<div class="col-md-12 align-self-center p-static order-2 text-center">
						<h1 class="text-9 font-weight-bold">학생 게시판</h1>
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

								<h2 class="font-weight-bold">${ h.hTitle }</h2>

								<div class="post-meta">
									<span>
										<i class="far fa-user fl"></i>
										By ${h.hWriter }
									</span>
									<span class="date float-right">${h.hCreateDate }</span>
								</div>

								<p clss="text-5">${h.hContent }</p>
								<span class="date float-right">
									<a href="" data-toggle="modal" data-target="#reportContent">신고하기</a>
								</span>
								<div class="mt-5 ">
									<hr>
									<h4>첨부파일</h4>
								</div>

								<c:if test="${ !empty h.originalFilename }">
									<ul class=" d-flex align-items-stretch clearfix" style="list-style: none; padding: 0;">
										<li>
											<div class="mailbox-attachment-info">
												<a href="/spring/resources/uploadFiles/${h.renameFilename}" download="${n.originalFilename }" class="mailbox-attachment-name">
													<i class="fas fa-paperclip"></i>${h.originalFilename }
												</a>
												<span class="mailbox-attachment-size clearfix mt-">
													<a href="#" class="btn btn-default btn-sm float-right">
														<i class="fas fa-cloud-download-alt"></i>
													</a>
												</span>

											</div>
										</li>
									</ul>


								</c:if>
								<c:if test="${ loginUser != null }">
									<div class=" float-right">
										<div>
											<c:url var="hupview" value="hBoardupView.do">
												<c:param name="hId" value="${h.hId }" />
												<c:param name="hType" value="${h.hType}" />
											</c:url>
											<c:url var="hDelete" value="hBoarddelete.do">
												<c:param name="hId" value="${h.hId }" />
											</c:url>
											<c:url var="hList" value="hList.do?hType=1">
												<c:param name="currentPage" value="${ currentPage }" />
											</c:url>

											<a href="${hDelete}" class="mb-1 mt-1 mr-1 btn btn-primary"> 삭제하기 </a>
											<a href="${hupview }" class="mb-1 mt-1 mr-1 btn btn-primary"> 수정하기 </a>
										</div>
									</div>

								</c:if>
								<c:if test="${ loginUser.sNo eq h.hWriter }">
									<div class=" float-right">
										<div>
											<c:url var="hupview" value="hBoardupView.do">
												<c:param name="hId" value="${h.hId }" />
												<c:param name="hType" value="${h.hType}" />
											</c:url>
											<c:url var="hDelete" value="hDelete.do?hType=1">
												<c:param name="hId" value="${h.hId }" />
											</c:url>
											<c:url var="hList" value="huamn.do">
												<c:param name="currentPage" value="${ currentPage }" />
											</c:url>

											<c:set var="test" value="${h.hType }" />


											<a href="${hDelete}" class="mb-1 mt-1 mr-1 btn btn-primary"> 삭제하기 ${test } </a>
											<a href="${hupview }" class="mb-1 mt-1 mr-1 btn btn-primary"> 수정하기 </a>
										</div>
									</div>

								</c:if>

								<div id="comments" class="post-block mt-5 post-comments">
									<h4 id="rCount" class="mb-3"></h4>

									<ul class="comments">
									</ul>
								</div>


								<c:if test="${!empty sessionScope.loginUser }">
									<div class="post-block mt-5 post-leave-comment">
										<h4 class="mb-3">댓글을 입력하세요.</h4>
										<div class="p-2">
											<div class="form-row">
												<div class="form-group col">
													<label class="required font-weight-bold text-dark">댓글</label>
													<textarea id="rContent" maxlength="5000" rows="2" class="form-control" name="message"></textarea>
												</div>
											</div>
											<div class="form-row">

												<div class="form-group col mb-0">
													<input id="rSubmit" type="button" value="등록" class="btn btn-dark btn-modern float-right" data-loading-text="Loading...">
													<a href="${hList }" class="mb-1 mt-1 mr-1 btn btn-primary float-left"> 목록으로 </a>
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
	<!-- 	댓글모달 -->
	<div class="modal fade" id="reportReply" tabindex="-1" role="dialog" aria-labelledby="formModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="formModalLabel">게시글 신고</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<form id="demo-form" class="mb-4" novalidate="novalidate">
					<div class="modal-body">
						<thead>
							<tr>
								<th colspan="2">게시물 신고 사유 선택</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<div class="form-group row align-items-center">
										<input class="col-sm-3 text-left text-sm-right mb-0" type="radio" name="categoryName" style="margin-left: 140px; margin-right: -50px" />
										<label class="col-sm-3 text-left text-sm-right mb-0" style="text-align: left !important">욕설/비방</label>
										<div class="col-sm-9"></div>
									</div>
								</td>
							</tr>
							<div class="form-group row align-items-center">
								<input class="col-sm-3 text-left text-sm-right mb-0" type="radio" name="categoryName" style="margin-left: 140px; margin-right: -50px" />
								<label class="col-sm-3 text-left text-sm-right mb-0" style="text-align: left !important">광고/홍보물</label>
								<div class="col-sm-9"></div>
							</div>
							<div class="form-group row align-items-center">
								<input class="col-sm-3 text-left text-sm-right mb-0" type="radio" name="categoryName" style="margin-left: 140px; margin-right: -50px" />
								<label class="col-sm-3 text-left text-sm-right mb-0" style="text-align: left !important">저작권침해</label>
								<div class="col-sm-9"></div>
							</div>
							<div class="form-group row align-items-center">
								<input class="col-sm-3 text-left text-sm-right mb-0" type="radio" name="categoryName" style="margin-left: 140px; margin-right: -50px" />
								<label class="col-sm-3 text-left text-sm-right mb-0" style="text-align: left !important">음란성게시물</label>
								<div class="col-sm-9"></div>
							</div>
							<div class="form-group row align-items-center">
								<input class="col-sm-3 text-left text-sm-right mb-0" type="radio" name="categoryName" style="margin-left: 140px; margin-right: -50px" />
								<label class="col-sm-3 text-left text-sm-right mb-0" style="text-align: left !important">기타</label>
								<div class="col-sm-9"></div>
							</div>
						</tbody>
						<div class="form-group row">
							<label class="col-sm-3 text-left text-sm-right mb-0">신고내용 입력(필수)</label>
							<div class="col-sm-9">
								<textarea rows="5" class="form-control" placeholder="Type your comment..." required></textarea>
							</div>
						</div>
						<p>
							<i class="fas fa-exclamation-triangle"></i>
							<b>주의:</b> :신고된 게시물은 운영자의 확인 후 게시판에서 삭제될 수 있으며 게시물 작성자는 경고 / 이용 제한 등의 제재를 받게 됩니다. 상습적으로 잘못된 신고를 할 경우, 신고한 회원에게 불이익이 가해질 수 있습니다.
						</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" onclick="reportP()">신고접수</button>
						<button type="button" class="btn btn-light" data-dismiss="modal">취소</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- 	게시글 모달 -->
	<div class="modal fade" id="reportContent" tabindex="-1" role="dialog" aria-labelledby="formModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="formModalLabel">게시글 신고</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
					<form id="demo-form" class="mb-4" action="reportInsert.do" method="post" novalidate="novalidate">
						<div class="modal-body">
							<thead>
								<tr>
									<th colspan="2">게시물 신고 사유 선택</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<div class="form-group row align-items-center">
											<input class="col-sm-3 text-left text-sm-right mb-0" type="radio" name="categoryName" value="욕설/비방" style="margin-left: 140px; margin-right: -50px" />
											<label class="col-sm-3 text-left text-sm-right mb-0" style="text-align: left !important">욕설/비방</label>
											<div class="col-sm-9"></div>
										</div>
									</td>
								</tr>
								<div class="form-group row align-items-center">
									<input class="col-sm-3 text-left text-sm-right mb-0" type="radio" name="categoryName" value="광고/홍보물" style="margin-left: 140px; margin-right: -50px" />
									<label class="col-sm-3 text-left text-sm-right mb-0" style="text-align: left !important">광고/홍보물</label>
									<div class="col-sm-9"></div>
								</div>
								<div class="form-group row align-items-center">
									<input class="col-sm-3 text-left text-sm-right mb-0" type="radio" name="categoryName" value="저작권침해" style="margin-left: 140px; margin-right: -50px" />
									<label class="col-sm-3 text-left text-sm-right mb-0" style="text-align: left !important">저작권침해</label>
									<div class="col-sm-9"></div>
								</div>
								<div class="form-group row align-items-center">
									<input class="col-sm-3 text-left text-sm-right mb-0" type="radio" name="categoryName" value="음란성게시물" style="margin-left: 140px; margin-right: -50px" />
									<label class="col-sm-3 text-left text-sm-right mb-0" style="text-align: left !important">음란성게시물</label>
									<div class="col-sm-9"></div>
								</div>
								<div class="form-group row align-items-center">
									<input class="col-sm-3 text-left text-sm-right mb-0" type="radio" name="categoryName" value="기타" style="margin-left: 140px; margin-right: -50px" />
									<label class="col-sm-3 text-left text-sm-right mb-0" style="text-align: left !important">기타</label>
									<div class="col-sm-9"></div>
								</div>
							</tbody>
							<div class="form-group row">
								<label class="col-sm-3 text-left text-sm-right mb-0">신고내용 입력(필수)</label>
								<div class="col-sm-9">
									<textarea rows="5" class="form-control" name="rpContent" placeholder="내용을 작성하세요" required></textarea>
								</div>
							</div>
							<p>
								<i class="fas fa-exclamation-triangle"></i>
								<b>주의:</b> :신고된 게시물은 운영자의 확인 후 게시판에서 삭제될 수 있으며 게시물 작성자는 경고 / 이용 제한 등의 제재를 받게 됩니다. 상습적으로 잘못된 신고를 할 경우, 신고한 회원에게 불이익이 가해질 수 있습니다.
							</p>
						</div>


						<div class="form-group col">
							<input id="hId" type="hidden" name="hId" value="${ h.hId}">
							<input type="hidden" name="rpWriter" value="${loginUser.sNo}">
							<input type="hidden" name="rpName" value="${loginUser.sName}">
						</div>
						<div class="modal-footer">
							<button type="submit" class="btn btn-primary">신고접수</button>
							<button type="button" class="btn btn-light" data-dismiss="modal">취소</button>
						</div>
					</form>
			</div>
		</div>
	</div>

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
			 var refHid = ${h.hId};
			 var hType =${h.hType}; 
			 var rWriter;
			 var rName;
			 var type= "<%=type%>";
//	 			 var refRid = $(obj).
				
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
				url:"hBoardAddReply.do",
				data:{
					rContent:rContent,
					refHid:refHid,
					rWriter:rWriter,
					rName:rName,
					hType:hType

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
	
		

	
		
		function getReplyList() {
			var hId = ${h.hId};
			$.ajax({
				url:"huamnboardrList.do",
				data:{hId:hId},
				dataType:"json",
				success:function(data){
					$ul = $('#comments ul');
					$li1 = $('#comments ul li');
					$ul.html("");
// 					$li1.html("");
					
					
					

					
					var $dupReply;
					var $rWriter;
					
					var $refRid ;
					var $rName;
					var $rContent;
					var $rCreateDate;
					var type= "<%=type%>";
					
					var $rIdCheck;  //참조 댓글의 rid
					var $rId;
					var $div_c;
					var $rePlace;
					

					$("#rCount").text("댓글("+data.length+")");
					
					if(data.length>0){
						
						for(var i  in data){
							
							$rId = data[i].rId;
							$rIdCheck = $('<input type="hidden" value="'+data[i].rId+'">') //참조 댓글의 rid
							
							$rWriter =$('<input type"hidden" "value="'+data[i].rWriter+'">').val();
							$rName =$('<input type"hidden" value="'+data[i].rName+'">').val();
							$rContent=$('<input type"hidden"  value="'+data[i].rContent+'">').val();
							$rCreateDate=$('<input type"hidden"  value="'+data[i].rCreateDate+'">').val();
					
							if(data[i].refRid==0){
										
								
								$div_c = 
										'	<li id="rId_'+$rId+'">'+
										'		<div class="comment">'+													
										'			<div class="comment-block">'+
										'				<div class="comment-arrow"></div>'+
										'				<input type="hidden" value="'+$rId+'">'+		
										'				<input type="hidden" value="'+data[i].refRid+'">'+		
										'				<span class="comment-by">'+
										'					<strong >'+$rName+'</strong>'+
										'				<span class="date float-right" style=" margin-left: 10px;">'+$rCreateDate+'</span>'+			
										'				</span>'+
										'				<p style="margin-bottom:15px;">'+$rContent+'</p>'+ 
										'				<textarea style="width:85%; display: none;"></textarea>'+
										' 				<span class="float-right">'+
										'                       <span class="date float-right"><a href="javascript:void(0);" data-toggle="modal" data-target="#reportReply">&nbsp;신고하기</a></span>'+			
										'						<span class="checkId"> <a href="javascript:void(0);" onclick="reAddReplyView(this);"><i class="fas fa-reply"></i> Reply | </a></span>'+
										'				</span>'+
										'			</div>'+
										'		</div>' 
										'	<li>';
									
									
							
	
							<uL>	
							
							</Ul>
										
								if(type ==0 ){
									$('.checkId').css('display','none');
									
								}	
	
								$ul.append($div_c);
								
							}
							for(var j in data){
								$refRid =data[j].refRid;
							
								if($refRid != 0){	
									
									var  $li = $('#rId_'+$rId);
									console.log($rId+"rId");
									
									
// 									$li.html("");
										
									$reRid = data[j].rId
									$rWriter =data[j].rWriter
									$rName = data[j].rName
									$rContent= data[j].rContent
									$rCreateDate= data[j].rCreateDate;
									console.log("refrid"+$refRid+"----"+$rId+"rId");
									
										if($refRid ==$rId){
		
											console.log("refrid"+$refRid+"----"+$rId+"rId");
											
											$rePlace=$(	
													'<ul class="comments reply">'+
													'    <li >'+
													'   	<div class="comment">'+				
													'			<i class="fas fa-chevron-up"></i>'+
													'     		<div class="comment-block">'+
													'     			<input type="hidden" value="'+$reRid+'">'+		
													'     			<span class="comment-by">'+
													'     				<strong >수정한거'+$rName+'</strong>'+
													'     			<span class="date float-right" style=" margin-left: 10px;">'+$rCreateDate+'</span>'+			
													'     			</span>'+
													'     			<p style="margin-bottom:15px;">'+$rContent+'</p>'+ 
													'     			<textarea style="width:85%; display: none;"></textarea>'+
													'     		</div>'+
													'     	</div>' +
													'	<li>'+
													'<ul>'
											
													);
											
											$li.append($rePlace);
										}
									
									
									
									
								
								}
							}
								

								
						}

				
						
					
						
					
					//for문
						

						if (type==1){
							var sNo= "<%=sNo%>";
							
							$
						
								if($rWriter==sNo){	
									$dupReply = $(	
													'<span  class=" float-right">'+
														'<button onclick="rDelete(this);" class="btn btn-xs btn-light btnChk" style=" margin-right: 10px; ">삭제</button>'+
													'</span>'+
													'<span class=" float-right">'+
														'<button onclick="rUpdateView(this);"class="btn btn-xs btn-primary btnChk" style=" margin-right: 10px;" >수정</button>'+
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
													
														'<button onclick="rDelete(this);" class="btnChk btn btn-xs btn-light" style=" margin-right: 10px; ">삭제</button>'+
													'</span>'+
													'<span class=" float-right">'+
														'<button onclick="rUpdateView(this);" class="btnChk btn btn-xs btn-primary" style=" margin-right: 10px;" >수정</button>'+
													'</span>'
												  );	

							  	$('.comment-block').append($dupReply);
								}
							}else if(type==3){
						
								$dupReply = $(	
												'<span  class=" float-right">'+
												
													'<button onclick="rDelete(this);" class="btnChk btn btn-xs btn-light" style=" margin-right: 10px; ">삭제</button>'+
												'</span>'+
												'<span class=" float-right">'+
													'<button onclick="rUpdateView(this);" class="btnChk btn btn-xs btn-primary" style=" margin-right: 10px;" >수정</button>'+
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
			
			var hId = ${h.hId};
			var rId = $(obj).parent().siblings('input').val();
			
			
			
			$.ajax({
				url:"HuamnBoardDeleteReply.do",
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
			$('.checkId').css('display','none');	
// 			var rContent =$(obj).parent().siblings('p').html().trim();
			var rId =$(obj).parent().siblings('input').val();
			var rName = $('.comment-by').children().siblings('span').html().trim();
			var rCreateDate = $('.comment-by').children().siblings('strong').html().trim();
			
		
			

			
			
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
			
			

		   
			
			
			
			

		}
		
		function rUpdate(obj){
			var hId = ${h.hId};
			var rId = $(obj).parent().siblings('input').val();
			var rContent =$(obj).parent().siblings('textarea').val();
			
			
			
			 if(rContent.trim() == ""){
                 alert("내용을 입력하세요");
                 rContent.focus();
                 return false;
             }
			
			
			
			$.ajax({
				url:"hBoardUpdateReply.do",
				data:{
					rId:rId,
					rContent:rContent},
				type:"post",
				success:function(data){
					if(data =="success"){
// 						var test ;
							getReplyList();
						
						alert("수정이 완료되었습니다.");
					
						
						
					}
				},error: function(result){
					console.log(result)
				}
				
				
			});
		}
	
		function rCancle(obj){
			var update = '<button onclick="rUpdateView(this);" class="btn btn-xs btn-primary" style=" margin-right: 10px;" >수정</button>';
			$('.checkId').css('display','block');

			var remove2 =$(obj).siblings('button').remove();
			
			var changeContent2;
			changeContent= $(obj).parent().siblings('textarea').css('display','none');
	
			var changeContent;
			changeContent= $(obj).parent().siblings('p').css('display','block');
	
			$btnBack=$(obj).parent().append(update);
			var remove =$(obj).remove();
			
			
		
			
		}
	
		function reAddReplyView(obj){
			
			var refRid = $(obj).parent().parent().siblings('input').val(); //null 이면 그냥 null 아니면 댓글
			var refHid = ${h.hId};
			var rName;
			var rWriter;
			var type= "<%=type%>";
			var $tr;
			var $test;

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
			console.log(rName)
			console.log(refRid);
		
			if(refRid !=null ){
				
				$
				$tr  = $(obj).parent().parent().parent();;
				$test = $(
						
						'<ul class="comments reply">'+
						'	<li>'+
						'		<div class="comment">'+
						'			<i class="fas fa-chevron-up"></i>'+
						'			<div class="comment-block">'+
						'			<span class="comment-by">'+
						'				<strong>'+rName+'</strong>'+
						'			</span>'+
						'				<textarea id ="reRContent"style="width:85%; hight:40px"></textarea>'+
						'				<input type="hidden" value="'+refRid+'">'+	
						'				<button onclick="r_rCancle(this);" class="btn btn-light btn-sm float-right" style="margin-left:10px" >취소</button>'+
						'				<button onclick="r_addReply(this);" class="btn btn-light btn-sm float-right" style="margin-left:10px">등록</button>'+
						'			</div>'+
						'		</div>'+
						'	</li>'+
						'</ul>'	
				);
				
				$tr.after($test);
				
				$('.checkId2').css('display','none');
				$('.checkId').css('display','none');
				$('.btnChk').css('display','none');
				console.log(rName)
				console.log(type)
				console.log(refRid)

			}

	}

	function r_addReply (obj){
		
		if($("#reRContent").val().trim() == ""){
             alert("내용을 입력하세요");
             $("#reRContent").focus();
             return false;
        }
		
		
		var rContent = $("#reRContent").val();
		var refHid = ${h.hId}; // 게시판 번호
		var hType = ${h.hType};
		
		var refRid = $(obj).siblings('input').val(); //댓글달 댓글 번호
		
		var rWriter ; // 아이디
		var rName; // 이름
		var type= "<%=type%>";

			
			 console.log(rContent)
			 if(type!=null){
				if (type==1){
					rName = "<%=sName%>";
				rWriter = "<%=sNo%>";
			 }
			 else if(type==2){
				rName = "<%=pName%>";
				rWriter = "<%=pNo%>";
	    	 }else if(type==3){
				rName = "<%=aName%>";
				rWriter = "<%=aId%>
		";
					console.log(rName)
				}

			}

			$.ajax({
				url : "hBoardAddReply.do",
				data : {
					rContent : rContent,
					refHid : refHid,
					rWriter : rWriter,
					rName : rName,
					refRid : refRid,
					hType : hType
				},
				type : "post",
				success : function(data) {
					if (data == "success") {

						getReplyList();
						$("#rContent").val(""); // 댓글 등록이 성공을 하면 작성한 글은 초기화 시켜준다.
						alert("댓글이 등록되었습니다.");
					}
				}

			});

		}

		function r_rCancle(obj) {
			var remove = $(obj).parent().parent().parent().parent();

			remove.remove();
			$('.checkId2').css('display', 'block');
			$('.checkId').css('display', 'block');
			$('.btnChk').css('display', 'block');

		}

	</script>




</div>

<%@ include file="../common/footer.jsp"%>



















