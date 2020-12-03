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
												
												<c:if test="${empty ag }">
												
													<div class="card-body" style="text-align: center">
														<span class="card-title mb-1 text-4 font-weight-bold">평가할 학생이 없습니다.</span>
													</div>
												</c:if>
												<c:if test="${!empty ag }">
												
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
														<c:forEach var="hg"  items="${hg }">
															<c:if test="${hg.sNo eq ag.sNo &&!empty hg.sNo  }">
															<span class="check float-right" style="color:red">평가 완료</span>
															</c:if>
															<c:if test="${hg.sNo ne ag.sNo&&empty hg.sNo}">
															<span class="check float-right" style="color:red">미 평가</span>
															</c:if>
															
														</c:forEach>
														</c:if>
													</td>
												</tr>
												</c:forEach>
												</c:if>
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
										<form id="fm" action="sEvaluationInsert.do" onsubmit="return checkPoint(this);">
										<div id="Evaluation" class="card-body" style="text-align: center">
											<span>평가 점수</span>
											<input id ="point${ag.sNo}" type="text">
											<br>
											<br>
											<input type="hidden" name ="lecNo" value="${ag.lecNo }">
											<input type="hidden" name ="sNo" value="${ag.sNo }">
											<input type="hidden" name ="cNo" value="${ag.classNo }">
											<input type="hidden" name ="hNo" value="${lh.hNo }">
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
		
		var check = $(obj).find(".check").text();
		var sNo = $(obj).find('input').val();
		var remove = $('#before');
		var none = $('.change');
		
		var after = $('#in'+sNo);
		
		if (check == "평가 완료"){
			alert("이미 평가한 학생입니다")
			
			remove.css("display","block");
			
			
			
			
			none.css("display","none");
			after.css("display","none");
		}else if (check =="미 평가"){
		
	
		console.log(sNo);
		
		remove.css("display","none");
		
		
		
		
		none.css("display","none");
		after.css("display","block");
		}
		
		
		
		
	}
	
	function checkPoint(obj){
		
		var sNo = $(obj).find('input[name=sNo]').val()
		
		
		console.log(sNo)
		
		var point = $("#point"+sNo).val()
		
// 		console.log(point)
		if(point >20){
// 			fm.attr('onsubmit','false') 
// 			console.log(point)
			alert('점수는 20점을 넘을 수 없습니다.')
			return false;
		}else if(point ==""){
			alert('평가점수는 꼭 입력하셔야 합니다.')
			return false;
		}
		else{
			
			alert('저장이 완료되었습니다!')
			return true;
		}
			
	}
	

	
	
	
</script>

<%@ include file="../common/footer.jsp"%>

