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
												<tr>
													
													<td  onclick="Evaluation();">
														
														<span class="font-weight-bold">김진태</span><br>
														<span>국어국문학과</span><br>
														<span style="color:red">미제출</span>
													</td>
												
												</tr>
												<tr>
														<td  onclick="Evaluation();">
														
														<span class="font-weight-bold">김진태</span><br>
														<span>국어국문학과</span><br>
														<span style="color:red">미제출</span>
													</td>
												
												</tr>
												<tr>
														<td  onclick="Evaluation();">
														
														<span class="font-weight-bold">김진태</span><br>
														<span>국어국문학과</span><br>
														<span style="color:red">미제출</span>
													</td>
												
												</tr>
												<tr>
														<td  onclick="Evaluation();">
														
														<span class="font-weight-bold">김진태</span><br>
														<span>국어국문학과</span><br>
														<span style="color:red">미제출</span>
													</td>
												
												</tr>
											</table>
										</div>
									</div>
								</div>	
								<div class="col-lg-2"></div>
								
								
								
								<div class="col-lg-5 mb-5 mb-lg-0 appear-animation animated fadeInUpShorter appear-animation-visible" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="200" style="animation-delay: 200ms;">
		
									<div class="card" style="display:block">
<!-- 										<img class="card-img-top" src="resources/img/parallax-bg.jpg" alt="Card Image"> -->
										<div class="card-header">
										<span>김진태 (20100321)</span> 
										<span class="float-right">제출</span>
										<br>
										<span> 국어국문학과</span>
										
										
										</div>
										<div id="Evaluation" class="card-body" style="text-align: center">
											
											
											<a href="/spring/resources/uploadFiles/20201113151113.PNG" download="국ㄱ국.PNG" class="mailbox-attachment-name">
					                    	<i class="fas fa-paperclip"></i>국ㄱ국.PNG
				                    	</a>
											
											
											
										</div>
									</div>
										<div class="card" style="display:block">
<!-- 										<img class="card-img-top" src="resources/img/parallax-bg.jpg" alt="Card Image"> -->
										<div class="card-header">
										<span>김진태 (20100321)</span> 
										<span class="float-right">미제출</span>
										<br>
										<span> 국어국문학과</span>
										
										
										</div>
										<div id="Evaluation" class="card-body" style="text-align: center">
											
											<span class="card-title mb-1 text-4 font-weight-bold">아직 제출하지 않았습니다</span>
											
											
										</div>
									</div>
										
										
										<div class="card mt-4">
<!-- 										<img class="card-img-top" src="resources/img/parallax-bg.jpg" alt="Card Image"> -->
										<div class="card-header">
										<span>김진태 (20100321)</span> 
										<span class="float-right">미제출</span>
										<br>
										<span> 국어국문학과</span>
										
										
										</div>
										<div id="Evaluation" class="card-body" style="text-align: center">
											
											
											
											
											<span class="card-title mb-1 text-4 font-weight-bold">평가할 학생을 선택해 주세요.</span>
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
										<div id="Evaluation" class="card-body" style="text-align: center">
											<span>평가 점수</span>
											<input  type="text">
											<br>
											<br>
											<a class="btn btn-sm btn-primary float-right " href="prof_homeworkInsert.do">저장</a>
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

	function Evaluation(){
		var remove = $('#Evaluation').children();
		remove.remove();
		
		
		
	}
</script>

<%@ include file="../common/footer.jsp"%>

