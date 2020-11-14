<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/professor_header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.note-editing-area{
    min-height: 50px;
}
</style>

<!-- Content Wrapper. Contains page content -->
<div class="body">
	<div role="main" class="main">
		<section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-3" style="background-image: url(resources/img/page-header/KakaoTalk_20201026_130729067.jpg); padding: 70px;">
			<div class="container">
				<div class="row mt-3">
					<div class="col-md-12 align-self-center p-static order-2 text-center">
						<h1 class="text-9 font-weight-bold text-lg-right">퀴즈 및 과제 </h1>
						<span class="sub-title">my lecture insert</span>
					</div>
				</div>
			</div>
		</section>
		<div class="container py-4">
			<div class="row py-4 mb-4">
				<div class="col">
					<div class="image-hotspots">
						<div class="row">

							<div class="custom-box-details bg-color-light col-lg-12 ml-5 mb-5 mb-lg-4 float-right clearfix">
								<h4 class="text-lg-center">퀴즈 및 과제 </h4> <hr>
								<form class="form-horizontal form-bordered" action="prof_testInsert.do" method="get">
								
									<div id="text">	
									
										<div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" >과목 명</label>
											<div class="col-lg-6">
												<select class="form-control" id="inputDefault">
													<option>판소리특강</option>
													<option>나라사랑</option>
													<option>국밥 세그릇 뚝딱</option>
												</select>
											</div>
										</div>
										
										<div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" for="inputDefault">주차</label>
											<div class="col-lg-6">
												<select class="form-control" id="inputDefault">
													<option>1주차</option>
													<option>2주차</option>
													<option>3주차</option>
													<option>4주차</option>
													<option>5주차</option>
													<option>6주차</option>
													<option>7주차</option>
													<option>8주차</option>
													<option>9주차</option>
													<option>10주차</option>
													<option>11주차</option>
													<option>12주차</option>
													<option>13주차</option>
													<option>14주차</option>
													<option>15주차</option>
													<option>16주차</option>
													<option>17주차</option>
												</select>
											</div>
										</div>

										<div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" >제목</label>
											<div class="col-lg-6">
												<input class="form-control" name="" type="text" >
											</div>
										</div>

										<div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" >시험구분</label>
											<div class="col-lg-6">
												<select class="form-control">
													<option>퀴즈</option>
													<option>시험</option>
												</select>
											</div>
										</div>

										<div class="form-group row" >
											<label class="col-lg-3 control-label text-lg-right pt-2" for="inputHelpText">공개일</label>
											<div class="col-lg-6" style="display: flex;">
												<input type="date" class="form-control" max="9999-12-31" style=" width: 50%; margin-right: 20px;">
												<input type="time" class="form-control" max="9999-12-31" style=" width: 50%;">
											</div>
										</div>

										<div class="form-group row "style="margin-bottom: 0">
											<label class="col-lg-3 control-label text-lg-right pt-2" for="inputRounded">응시 기간</label>
											<div class="col-lg-6" style="display: flex;">
												<input type="date" class="form-control" max="9999-12-31"   style=" width: 50%; margin-right: 20px;">
												<input type="time" class="form-control" max="9999-12-31"   style=" width: 50%;">
										</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" >부터</label>
											<div class="col-lg-6" style="display: flex;">
													
													<input type="date" class=" form-control" max="9999-12-31"style=" width: 50%; margin-right: 20px;">
													<input type="time" class="form-control" max="9999-12-31"style=" width: 50%;">
													
												
											</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" >시험시간</label>
											<div class="col-lg-6" style="display: flex">
												<input class="form-control" type="text" style="width:50px"><span style="padding-left:20px;align-self: center; font-size: 15px">분</span> 
											</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" >시험 문제 출제</label>
											<div class="col-lg-6" style="display: flex">
												<a href='javascript:void(0);' onclick='rePlace(this);' style="    align-self: center;"> 출제하기</a>
											</div>
										</div>
										<div class="form-group row">
										<div class="form-group col-lg-3">
												<a class="btn btn-sm btn-primary float-right" href="prof_testInsert.do">돌아가기</a>
										</div>
										<div class="form-group col-lg-3">
										</div>
										<div class="form-group col-lg-3">
											<input type="submit" value="저장" class="btn btn-primary btn-sm btn-modern float-right" data-loading-text="Loading...">
										</div>
							    		</div>
						    		</div>
						    		
						    		<div id="exam"style="display:none;" >  
					    		  		<div>		
							    			<div class="form-group row">
												<label class="col-lg-3 control-label text-lg-right pt-2" ></label>
												<div class="col-lg-6">
													<a href='javascript:void(0);' onclick='add(this);' class="btn btn-sm btn-primary float-right">문제 추가</a>
												</div>
											</div>	
										
												
												
										  	<div class="form-group row">
												<label class="col-lg-3 control-label text-lg-right pt-2" >문제 번호</label>
												<div class="col-lg-6">
													<input class="col-lg-5 form-control" type="text" style="width:100px">
												</div>
											</div>
											
							    			<div class="form-group row">
												<label class="col-lg-3 control-label text-lg-right pt-2" >문제 명</label>											<div class="col-lg-6">
												<textarea class="textarea"></textarea>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 control-label text-lg-right pt-2" >보기 1)</label>
												<div class="col-lg-6">
													<input class="form-control" name="" type="text">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 control-label text-lg-right pt-2" >보기 2)</label>
												<div class="col-lg-6">
													<input class="form-control" name="" type="text">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 control-label text-lg-right pt-2" >보기 3)</label>
												<div class="col-lg-6">
													<input class="form-control" name="" type="text">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 control-label text-lg-right pt-2" >보기 4)</label>
												<div class="col-lg-6">
													<input class="form-control" name="" type="text">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 control-label text-lg-right pt-2" > 배점 </label>
												<div class="col-lg-6">
													<input class="col-lg-5 form-control" type="text" style="width:100px">
												</div>
											</div>	
											<div class="form-group row">
												<label class="col-lg-3 control-label text-lg-right pt-2" > 정답 번호 </label>
												<div class="col-lg-6">
													<input class="col-lg-5 form-control" type="text" style="width:100px">
												</div>
											</div>	
							    			<hr>
					    					<div class="form-group row">
												<label class="col-lg-3 control-label text-lg-right pt-2" ></label>
												<div class="col-lg-6">
												<a id="back" href='javascript:void(0);' onclick='back(this);' class="btn btn-quaternary mb-2">뒤로가기</a>
												
												<input id="submit"	type="submit" value="완료"class="btn btn-dark btn-modern float-right">
	
												</div>
											</div>			
										</div>		
						    		</div>
								</form>
							</div>	
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>

	function rePlace(obj){
		var text = $('#text')
		var exam =$('#exam')		
		text.css("display","none");
		exam.css('display','block');
		
			 
		
	}
	

	function add(obj){
		
		alert("zzzzzzz")
		var aa =$('#back').parent().parent();
		var test = 
				'<div>'+
				'	<div class="form-group row">'+
				'		<label class="col-lg-3 control-label text-lg-right pt-2" ></label>'+
				'		<div class="col-lg-6">'+
				'			<a href="javascript:void(0);" onclick="add(this);" class="btn btn-sm btn-primary float-right">문제 추가</a>'+
				'		</div>'+
				'	</div>	'+
				'	<div class="form-group row">'+
				'		<label class="col-lg-3 control-label text-lg-right pt-2" >문제 번호</label>'+
				'		<div class="col-lg-6">'+
				'			<input class="col-lg-5 form-control" type="text" style="width:100px">'+
				'		</div>'+
				'	</div>'+
	    		'	<div class="form-group row">'+
				'		<label class="col-lg-3 control-label text-lg-right pt-2" >문제 명</label>	'+
				'		<div class="col-lg-6">'+
				'			<textarea class="textarea"></textarea>'+
				'		</div>'+
				'	</div>'+
				'	<div class="form-group row">'+
				'		<label class="col-lg-3 control-label text-lg-right pt-2" >보기 1)</label>'+
				'		<div class="col-lg-6">'+
				'			<input class="form-control" name="" type="text">'+
				'		</div>'+
				'	</div>'+
				'	<div class="form-group row">'+
				'		<label class="col-lg-3 control-label text-lg-right pt-2" >보기 2)</label>'+
				'		<div class="col-lg-6">'+
				'			<input class="form-control" name="" type="text">'+
				'		</div>'+
				'	</div>'+
				'	<div class="form-group row">'+
				'		<label class="col-lg-3 control-label text-lg-right pt-2" >보기 3)</label>'+
				'		<div class="col-lg-6">'+
				'			<input class="form-control" name="" type="text">'+
				'		</div>'+
				'	</div>'+
				'	<div class="form-group row">'+
				'		<label class="col-lg-3 control-label text-lg-right pt-2" >보기 4)</label>'+
				'		<div class="col-lg-6">'+
				'			<input class="form-control" name="" type="text">'+
				'		</div>'+
				'	</div>'+
				'	<div class="form-group row">'+
				'		<label class="col-lg-3 control-label text-lg-right pt-2" > 배점 </label>'+
				'		<div class="col-lg-6">'+
				'			<input class="col-lg-5 form-control" type="text" style="width:100px">'+
				'		</div>'+
				'	</div>	'+
				'	<div class="form-group row">'+
				'		<label class="col-lg-3 control-label text-lg-right pt-2" > 정답 번호 </label>'+
				'		<div class="col-lg-6">'+
				'			<input class="col-lg-5 form-control" type="text" style="width:100px">'+
				'		</div>'+
				'	</div>	'+
				'	<div class="form-group row">'+
				'		<label class="col-lg-3 control-label text-lg-right pt-2" ></label>'+
				'		<div class="col-lg-6">'+
				'			<a href="javascript:void(0);" onclick="remove(this);" class="btn btn-sm btn-primary float-right">문제 삭제</a>'+
				'		</div>'+
				'	</div>	'+
				'   <hr>   '+
				'</div>'
		

		
		aa.before(test);
				
		  $('.textarea').summernote();
		
		
	}
	function remove(obj){
		var obj = $(obj).parent().parent().parent();
		
		obj.remove();
		
		
	}
	

	function back(obj){
		var text = $('#text')
		var exam =$('#exam')		
		text.css("display","block");
		exam.css('display','none');
		
			 
		
	}

</script>
<%@ include file="../common/footer.jsp"%>

