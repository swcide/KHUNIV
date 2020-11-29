<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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


int type = 0;

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
	

%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>KHCU | ADMIN</title>

<link rel="stylesheet" href="resources/assets/css/bootstrap.css">

<link rel="stylesheet" href="resources/assets/vendors/chartjs/Chart.min.css">

<link rel="stylesheet" href="resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="resources/assets/css/app.css">
<link rel="shortcut icon" href="resources/assets/images/favicon.svg" type="image/x-icon">

<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
	<div id="app">
		<!-- side bar -->
		<%@include file="adminSideBar.jsp"%>
		<!-- header -->
		<div id="main">
			<%@ include file="adminHeader.jsp"%>
			<!--  contents -->
			<div class="main-content container-fluid">
				<div class="page-title">
					<h3>일반공지</h3>
					<p class="text-subtitle text-muted">모든 기능은 필요에 의해 이용하여 주시길 바랍니다.</p>
				</div>
				<section class="section">
					<div class="row mb-4">
						<div class="col-md-12">
							<div class="card">
								<div class="card-content">
									<div class="card-body"></div>
									<div class="container py-4">

										<div class="row">
											<div class="col">
												<div class="blog-posts single-post">
													<article class="post post-large blog-single-post border-0 m-0 p-0">

														<div class="post-content ml-0">

															<h2 class="font-weight-bold">${ n.nTitle }</h2>

															<div class="post-meta">
																<span> <i class="far fa-user fl"></i> By ${n.nWriter }
																</span> <span class="date float-right">${n.nCreateDate }</span>
															</div>

															<p class="text-5">${n.nContent }</p>

															<div class="mt-5 ">
																<hr>
																<h4>첨부파일</h4>
															</div>


															<c:if test="${ !empty n.originalFileName }">
																<ul class=" d-flex align-items-stretch clearfix" style="list-style: none; padding: 0;">
																	<li>
																		<div class="mailbox-attachment-info">
																			<a href="/spring/resources/uploadFiles/${n.renameFileName}" download="${n.originalFileName }" class="mailbox-attachment-name"> <i class="fas fa-paperclip"></i>${n.originalFileName }
																			</a> <span class="mailbox-attachment-size clearfix mt-"> <a href="#" class="btn btn-default btn-sm float-right"><i class="fas fa-cloud-download-alt"></i></a>
																			</span>

																		</div>
																	</li>
																</ul>


															</c:if>

															<c:if test="${ loginAdmin != null }">
																<div class=" float-right">
																	<div>
																		<c:url var="nupview" value="manageNoticeUpView.do">
																			<c:param name="nId" value="${n.nId }" />
																			<c:param name="nType" value="${n.nType}" />
																		</c:url>
																		<c:url var="nDelete" value="manageNoticeDelete.do">
																			<c:param name="nId" value="${n.nId }" />
																		</c:url>
																		<c:url var="nList" value="manageNotice.do?nType=1">
																			<c:param name="currentPage" value="${ currentPage }" />
																		</c:url>
																		<a href="${nDelete}" class="mb-1 mt-1 mr-1 btn btn-primary"> 삭제하기</a> <a href="${nupview }" class="mb-1 mt-1 mr-1 btn btn-primary"> 수정하기 </a>
																	</div>
																</div>
															</c:if>
															<div id="comments" class="post-block mt-5 post-comments">
																<h4 id="rCount" class="mb-3"></h4>
																<ul class="comments">
																</ul>
															</div>
															<c:if test="${!empty sessionScope  }">
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
																				<a href="${nList }" class="mb-1 mt-1 mr-1 btn btn-primary float-left"> 목록으로 </a>
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
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
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
				url:"NoticeAddReply.do",
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
			$.ajax({
				url:"nRList.do",
				data:{nId:nId},
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
										'						<span class="checkId"> <a href="javascript:void(0);" onclick="reAddReplyView(this);"><i class="fas fa-reply"></i> Reply</a></span>'+
										'				</span>'+
										'			</div>'+
										'		</div>' 
										'	<li>';
									
									
							
	
								
							
							
										
								if(type ==0 ){
									$('.checkId').css('display','none');
									
								}	
	
								$ul.append($div_c);
								
							}
							for(var j in data){
								$refRid =data[j].refRid;
								
								if($refRid != 0){	
								
									var  $li = $('#rId_'+$rId);
// 									var rId_val =$('#rid_'+[z]).val();
									console.log($rId+"rId");
									
									
		// 							$li.html("");
										
									$reRid = data[j].rId
									$rWriter =data[j].rWriter
									$rName = data[j].rName
									$rContent= data[j].rContent
									$rCreateDate= data[j].rCreateDate;
									
									
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
			
			var nId = ${n.nId};
			var rId = $(obj).parent().siblings('input').val();
			
			
			
			$.ajax({
				url:"NoticeDeleteReply.do",
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
			var nId = ${n.nId};
			var rId = $(obj).parent().siblings('input').val();
			var rContent =$(obj).parent().siblings('textarea').val();
			
			
			
			 if(rContent.trim() == ""){
                 alert("내용을 입력하세요");
                 rContent.focus();
                 return false;
             }
			
			
			
			$.ajax({
				url:"noticeUpdateReply.do",
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
			var refNid = ${n.nId};
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
		var refNid = ${n.nId}; // 게시판 번호
		
		
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
				rWriter = "<%=aId%>";
				 console.log(rName)
			 }
		
		 }
		
		$.ajax({
			url:"NoticeAddReply.do",
			data:{
				rContent:rContent,
				refNid:refNid,
				rWriter:rWriter,
				rName:rName,
				refRid:refRid
				},
			type:"post",
			success:function(data){
				if(data =="success"){
					
					
					getReplyList();
					$("#rContent").val(""); // 댓글 등록이 성공을 하면 작성한 글은 초기화 시켜준다.
					alert("댓글이 등록되었습니다.");
				}
			}
			
		});
		
		
	}
	
	function r_rCancle (obj){
		var remove = $(obj).parent().parent().parent().parent();
		
		remove.remove();
		$('.checkId2').css('display','block');
		$('.checkId').css('display','block');
		$('.btnChk').css('display','block');
		
	
		
	}

	
	
	
	
	
	</script>
	<script src="resources/assets/js/feather-icons/feather.min.js"></script>
	<script src="resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script src="resources/assets/js/app.js"></script>

	<script src="resources/assets/vendors/chartjs/Chart.min.js"></script>
	<script src="resources/assets/vendors/apexcharts/apexcharts.min.js"></script>

	<script src="resources/assets/js/main.js"></script>
</body>
</html>
