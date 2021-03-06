<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
%>
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
									<span>${b.qnaTitle }</span>
									<!-- 제목 -->
								</h2>
								<div class="post-meta">
								<!--  작성 정보 -->
									<span><i class="far fa-user fl"></i> By ${b.qnaName} </span> 
									<span class="date float-right">${b.qnaCreateDate }</span> 
									<span class=" float-right">조회수 : ${b.qnaCount } |</span>
								</div>
								<p>${b.qnaContent}</p>
								<!--  내용 -->

								<!-- c태그 url로 매핑주소 미리 선언 -->
								<c:url var="qnaUpview" value="qnaUpView.do">
									<c:param name="qnaId" value="${b.qnaId }" />
								</c:url>
								<c:url var="qnaDelete" value="qnaDelete.do">
									<c:param name="qnaId" value="${b.qnaId }" />
								</c:url>
								<c:url var="blist" value="blist.do">
									<c:param name="currentPage" value="${ currentPage }" />
								</c:url>
								<!-- 작성자이거나 관리자일 때만 수정 삭제 버튼 출력 -->
								<c:if test="${ loginUser.sName eq b.qnaName}">
									<a href="${ qnaUpview }">수정하기</a>&nbsp;            
					               <a href="${ qnaDelete }">삭제하기</a>&nbsp;            
					            </c:if>
								<c:if test="${!empty sessionScope.loginAdmin}">
									<a href="${ qnaUpview }">수정하기</a>&nbsp;      
					              <a href="${ qnaDelete }">삭제하기</a>&nbsp;     
					            </c:if>

								<!-- 댓글 -->
								<c:if test="${!empty sessionScope.loginAdmin ||!empty sessionScope.loginUser  }">
									<div id="comments" class="post-block mt-5 post-comments">
										<h4 id="rCount" class="mb-3"></h4>
										<ul class="comments">
										</ul>
									</div>
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
													<a href="javascript:history.back()" class="mb-1 mt-1 mr-1 btn btn-primary float-left"> 목록으로 </a>
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

<script>

$(function(){
	getReplyList();
	$('#rSubmit').on('click',function(){
		 if($("#rContent").val().trim() == ""){
             alert("내용을 입력하세요");
             $("#rContent").focus();
             return false;
         }
		 var rContent = $("#rContent").val();
		 var refQid = ${b.qnaId};
		 var rWriter;
		 var rName;
		 var type= "<%=type%>";
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
			url:"qna_addReply.do",
			data:{
				rContent:rContent,
				refQid:refQid,
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
		var qnaId = ${b.qnaId};
		$.ajax({
			url:"qnarList.do",
			data:{qnaId:qnaId},
			dataType:"json",
			success:function(data){
				$ul = $('#comments ul');
				$li1 = $('#comments ul li');
				$ul.html("");
				
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
								console.log($rId+"rId");
									
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
												'     				<strong >'+$rName+'</strong>'+
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
								if ($rWriter == pNo) {
									$dupReply = $('<span  class=" float-right">'
											+ '<button onclick="rDelete(this);" class="btnChk btn btn-xs btn-light" style=" margin-right: 10px; ">삭제</button>'
											+ '</span>'
											+ '<span class=" float-right">'
											+ '<button onclick="rUpdateView(this);" class="btnChk btn btn-xs btn-primary" style=" margin-right: 10px;" >수정</button>'
											+ '</span>');
									$('.comment-block').append($dupReply);
								}
							} else if (type == 3) {
								$dupReply = $('<span  class=" float-right">'
										+ '<button onclick="rDelete(this);" class="btnChk btn btn-xs btn-light" style=" margin-right: 10px; ">삭제</button>'
										+ '</span>'
										+ '<span class=" float-right">'
										+ '<button onclick="rUpdateView(this);" class="btnChk btn btn-xs btn-primary" style=" margin-right: 10px;" >수정</button>'
										+ '</span>');
								$('.comment-block ').append($dupReply);
							}
						}
						//if 문
					},
					error : function(result) {
						console.log(result)
					}
				});
	};

	function rDelete(obj) {
		var qnaId = $
		{
			b.qnaId
		}
		;
		var rId = $(obj).parent().siblings('input').val();

		$.ajax({
			url : "qna_DeleteReply.do",
			data : {
				rId : rId
			},
			type : "post",
			success : function(data) {
				if (data == "success") {
					alert("삭제가 완료되었습니다.");
					getReplyList();
				}
			},
			error : function(result) {
				console.log(result)
			}
		});
	}
	//수정하기 뷰
	function rUpdateView(obj) {
		$('.checkId').css('display', 'none');
		var rId = $(obj).parent().siblings('input').val();
		var rName = $('.comment-by').children().siblings('span').html().trim();
		var rCreateDate = $('.comment-by').children().siblings('strong').html()
				.trim();

		var changeBtn;
		changeBtn = '<button onclick="rUpdate(this);" class="btn btn-xs btn-primary" style=" margin-right: 10px; ">수정하기</button>'
				+ '<button  onclick="rCancle(this);" class="btn btn-xs btn-primary" style=" margin-right: 10px; ">취소하기</button>';
		var changeContent;
		changeContent = $(obj).parent().siblings('p').css('display', 'none');
		var changeContent2;
		changeContent = $(obj).parent().siblings('textarea').css('display',
				'block');
		var edit = $(obj).parent().append(changeBtn);
		var remove = $(obj).remove();
	}
	// 수정하기 ajax
	function rUpdate(obj) {
		var qnaId = $
		{
			b.qnaId
		}
		;
		var rId = $(obj).parent().siblings('input').val();
		var rContent = $(obj).parent().siblings('textarea').val();

		if (rContent.trim() == "") {
			alert("내용을 입력하세요");
			rContent.focus();
			return false;
		}

		$.ajax({
			url : "qna_UpdateReply.do",
			data : {
				rId : rId,
				rContent : rContent
			},
			type : "post",
			success : function(data) {
				if (data == "success") {
					getReplyList();
					alert("수정이 완료되었습니다.");
				}
			},
			error : function(result) {
				console.log(result)
			}
		});
	}
	// 수정하기 안에 있는 취소 버튼
	function rCancle(obj) {
		var update = '<button onclick="rUpdateView(this);" class="btn btn-xs btn-primary" style=" margin-right: 10px;" >수정</button>';
		$('.checkId').css('display', 'block');

		var remove2 = $(obj).siblings('button').remove();

		var changeContent2;
		changeContent = $(obj).parent().siblings('textarea').css('display',
				'none');

		var changeContent;
		changeContent = $(obj).parent().siblings('p').css('display', 'block');

		$btnBack = $(obj).parent().append(update);
		var remove = $(obj).remove();

	}
</script>
<%@ include file="../common/footer.jsp"%>
