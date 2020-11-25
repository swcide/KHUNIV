<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/professor_header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.table td{
padding:0.35rem;
cursor: pointer; 
padding-left:20px
}
#Evaluation input{
	ackground-color: #fff;   
	background-clip: padding-box;
	
	border: 1px solid #ced4da;
	transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}

</style>
<!-- Content Wrapper. Contains page content -->
<div class="body">
	<div role="main" class="main">
		<section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-3" style="background-image: url(resources/img/page-header/KakaoTalk_20201026_130729067.jpg); padding: 70px;">
			<div class="container">
				<div class="row mt-3">
					<div class="col-md-12 align-self-center p-static order-2 text-center">
						<h1 class="text-9 font-weight-bold">과제 평가</h1>
						<span class="sub-title">my lecture list</span>
					</div>
				</div>
			</div>
		</section>
		<div class="container py-4">
			<div class="row py-4 mb-4">
				<div class="col">
					<div class="image-hotspots">
					<h4>과제 평가</h4>
						<div class="row">

								
								<div class=" col-lg-5 mb-5 mb-lg-0 appear-animation animated fadeInUpShorter appear-animation-visible" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="200" style="animation-delay: 200ms;">
		
									<div class="card">
										<img class="card-img-top" src="resources/img/parallax-bg.jpg" alt="Card Image">
										<div class="card-body" style="padding:0">
											<table class="table table-hover" style="border: 1px solid #dee2e6; margin:0; cursor: pointer;">
												<c:forEach var ="ag" items="${ag }">
												<tr>
													<td  onclick="Evaluation(this);">
														<input type="hidden" value="${ag.sNo }">
														<span class="font-weight-bold">${ag.sName }</span><br>
														<span>${ag.sNo }</span><br>
														<c:if test="${empty ag.assignFile  }">
														<span style="color:red">미제출</span>
														</c:if>
														<c:if test="${!empty ag.assignFile  }">
														<span style="color:red">제출</span>
														<c:if test="${!empty gb }">
														<span class="float-right" style="color:red">평가 완료</span>
														</c:if>
														</c:if>
													</td>
												</tr>
												</c:forEach>
											</table>
										</div>
									</div>
								</div>	
								<div class="col-lg-2"></div>
								
								
								
								<div class="col-lg-5 mb-5 mb-lg-0 appear-animation animated fadeInUpShorter appear-animation-visible" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="200" style="animation-delay: 200ms;">
									<c:forEach var ="ag" items="${ag }">
									<div id="in${ag.sNo}" class="card change" style="display:none">
									<c:if test="${!empty ag.assignFile  }">
									
									<div class="card">
<!-- 										<img class="card-img-top" src="resources/img/parallax-bg.jpg" alt="Card Image"> -->
										
										<div class="card-header">
											<span>${ag.sName }(${ag.sNo })</span> 
											<span class="float-right" style="color:red">제출</span>
										</div>
										
										<div id="Evaluation" class="card-body" style="text-align: center">
											<span>${ag.assignExpl }</span>
											<br>
										
										</div>
										<div class="card-body">
											<a class="float-right" href="/spring/resources/assignmentUploadFile/${ag.assignFile }" download="국ㄱ국.PNG" class="mailbox-attachment-name">
					                    	<i class="fas fa-paperclip"></i>${ag.assignFile }
				                    		</a>
										</div>
									</div>
									<div class="card mt-4">
<!-- 										<img class="card-img-top" src="resources/img/parallax-bg.jpg" alt="Card Image"> -->
										
										<div class="card-header text-4 font-weight-bold" style="background:rgba(0,0,0,0.2)">
											평가
										</div>
										<div class="card-header">
										
											<ul>
												<li>평가 점수를 빈 상태로 저장하면 미평가 상태가 됩니다</li>
												<li>마감일이 지난 후에 평가점수를 입력하세요.</li>
											</ul>
										
										
										</div>
										<br>
										<form action="sEvaluationInsert">
										<div id="Evaluation" class="card-body" style="text-align: center">
											<span>평가 점수</span>
											<input name ="point" type="text">
											<br>
											<br>
											<input type="hidden" name ="sNo" value="${ag.sNo }">
											<input type="hidden" name ="cNo" value="${ag.classNo }">
											<input type="submit" class="btn btn-sm btn-primary float-right " value="저장">
										
										</div>
										</form>
									</div>
										
								
										</c:if>
										
										<c:if test="${empty ag.assignFile  }">
										<div class="card">
											<div class="card-header">
												<span>${ag.sName }(${ag.sNo })</span> 
												<span  class="float-right" style="color:red">미제출</span>
												<br>
												
											</div>
											<div id="Evaluation" class="card-body" style="text-align: center">
												<span class="card-title mb-1 text-4 font-weight-bold">아직 제출하지 않았습니다</span>
											</div>
										</div>
										</c:if>
										
									</div>
									
									
									

									</c:forEach>
										
									
									<div id="before" class="card mt-4">
<!-- 										<img class="card-img-top" src="resources/img/parallax-bg.jpg" alt="Card Image"> -->
										<div class="card-header">
										<span>김진태 (20100321)</span> 
										<span class="float-right">미제출</span>
										<br>
										</div>
											<div class="card-body" style="text-align: center">
												<span class="card-title mb-1 text-4 font-weight-bold">평가할 학생을 선택해 주세요.</span>
											</div>
									</div>
									
									
									
								</div>	
						</div>
					
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>

	function Evaluation(obj){
		var sNo = $(obj).find('input').val();
		console.log(sNo);
		var remove = $('#before');
		remove.remove();
		var none = $('.change');
		var after = $('#in'+sNo);
		none.css("display","none");
		after.css("display","block");
		
		
		
		
	}
</script>

<%@ include file="../common/footer.jsp"%>

