<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/professor_header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%


%>

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
						<h1 class="text-9 font-weight-bold text-lg-right">시험</h1>
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
								<h4 class="text-lg-center">시험 </h4> <hr>
								<form class="form-horizontal form-bordered" action="prof_testInsert.do" method="get">
								
									<div id="text">	
									
										<div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" >과목 명</label>
											<div class="col-lg-6">
												<select class="form-control" name="tType" id="inputDefault">
												<c:forEach var="lc" items="${lc}">
													<option value="${lc.className}">${lc.className }</option>
												</c:forEach>
												</select>
											</div>
										</div>
										
										
										<div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" >제목</label>
											<div class="col-lg-6">
												<input class="form-control" name="tTitle" type="text" >
											</div>
										</div>

										<div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" >시험구분</label>
											<div class="col-lg-6">
												<select name="tType"class="form-control">
													<option value="m">중간고사</option>
													<option value="f">기말고사</option>
												</select>
											</div>
										</div>

										<div class="form-group row" >
											<label class="col-lg-3 control-label text-lg-right pt-2" for="inputHelpText">공개일</label>
											<div class="col-lg-6" style="display: flex;">
												<input type="date" name="openDate" class="form-control" max="9999-12-31" style=" width: 50%; margin-right: 20px;">
												<input type="time" name="openTime" class="form-control" max="9999-12-31" style=" width: 50%;">
											</div>
										</div>

<!-- 										<div class="form-group row "style="margin-bottom: 0"> -->
<!-- 											<label class="col-lg-3 control-label text-lg-right pt-2" for="inputRounded">응시 기간</label> -->
<!-- 											<div class="col-lg-6" style="display: flex;"> -->
<!-- 												<input type="date" name="startDate1"  class="form-control" max="9999-12-31"   style=" width: 50%; margin-right: 20px;"> -->
<!-- 												<input type="time" name="startTime"class="form-control" max="9999-12-31"   style=" width: 50%;"> -->
<!-- 										</div> -->
<!-- 										</div> -->
<!-- 										<div class="form-group row"> -->
<!-- 											<label class="col-lg-3 control-label text-lg-right pt-2" >부터</label> -->
<!-- 											<div class="col-lg-6" style="display: flex;"> -->
													
<!-- 													<input type="date"	name="endDate1" class=" form-control" max="9999-12-31"style=" width: 50%; margin-right: 20px;"> -->
<!-- 													<input type="time" name="endTime"class="form-control" max="9999-12-31"style=" width: 50%;"> -->
													
												
<!-- 											</div> -->
<!-- 										</div> -->
										<div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" >시험시간</label>
											<div class="col-lg-6" style="display: flex">
												<input name="tTime"class="form-control" type="text" style="width:50px"><span style="padding-left:20px;align-self: center; font-size: 15px">분</span> 
											</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" >시험 문제 출제</label>
											<div class="col-lg-6" style="display: flex">
												<a href='javascript:void(0);' onclick='rePlace();' style="   align-self: center;"> 출제하기</a>
											</div>
										</div>
										<div class="form-group row">
										<div class="form-group col-lg-3">
												<a class="btn btn-sm btn-primary float-right" href="prof_testList.do">목록보기</a>
										</div>
										<div class="form-group col-lg-3">
										</div>
										<div class="form-group col-lg-3">
											<input type="submit" value="저장" class="btn btn-primary btn-sm btn-modern float-right" data-loading-text="Loading...">
										</div>
							    		</div>
						    		</div>
						    		</form>
<!-- 						    		리스트 +업데이트 -->
						    		<form>
						    			<div id="examList" style="display:none;">
							    			<c:set var="Test" value="${Test}"></c:set>
							    			<c:if test="${empty Test }"></c:if>	
							    			
							    			
							    			<div class="form-group row">
													<label class="col-lg-2 control-label text-lg-right pt-2" ></label>
													<div class="col-lg-8">
														<a href='javascript:void(0);' onclick='addQ(this);' class="btn btn-sm btn-primary float-right">문제 추가</a>
														<a href='javascript:void(0);' onclick='takeQ(this);' class="btn btn-sm btn-primary float-left">문제 가져오기</a>
													</div>
											</div>	
							    		
											<div class="form-group row">
													<label class="col-lg-2 control-label text-lg-right pt-2" ></label>
													<div class="col-lg-8">
													<div class="card text-center">
														<div class="card-body" >
															<h4 class="card-title mb-1 text-4 font-weight-bold">현재 준비된 문제가 없습니다.</h4>
														</div>
													</div>
													</div>
											</div>							
						    			
						    				<div class="form-group row">
												<label class="col-lg-2 control-label text-lg-right pt-2" ></label>
												<div class="col-lg-8">
													<div class="card text-center">
														<div class="card-header bg-color-grey text-2">
															<span class="float-left">문제</span>
															<span class="float-right">1점</span>
															
														</div>
														<div class="card-body" style="padding:0.75rem">
															<div class="text-right">
																<a href="javascript:void(0)"onclick="update(this)"><i class="icon-wrench icons mr-2"></i></a>
																<a href="javascript:void(0)"onclick="close()"class="close" style="cursor: pointer;" ><span >×</span></a>
															</div>
															<h4 class="card-title mb-1 text-4 font-weight-bold">Card Title</h4>
															
															<p class="card-text">문제가여기에 표시됩니다.</p>
														</div>
													</div>
												</div>
											</div>
												<div class="form-group row">
												<label class="col-lg-2 control-label text-lg-right pt-2" ></label>
												<div class="col-lg-8">
												<a id="back" href='javascript:void(0);' onclick='back(this);' class="btn btn-quaternary mb-2">뒤로가기</a>
												
												<input id="submit"	type="submit" value="완료"class="btn btn-dark btn-modern float-right">
	
												</div>
											</div>
						    			</div>
						    		</form>
<!-- 						    		인서트 -->
					    		<form>
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

	function rePlace(){
		var text = $('#text')
		var exam =$('#examList')		
		text.css("display","none");
		exam.css('display','block');
		
			 
		
	}
	
	
	function examList(){
		var text = $('#text')
		var exam =$('#exam')		
		text.css("display","none");
		exam.css('display','block');
		
			 
		
		
	}

	function addQ(obj){
		alert("zzzzzzz")
		var examList = $('#examList');
		var exam = $('#exam');
		examList.css("display","none");
		exam.css('display','block');
		
		
		
		
// 		var aa =$(obj).parent().parent();
// 		var test = 
// 				'<div>'+
// 				'	<div class="form-group row">'+
// 				'		<label class="col-lg-3 control-label text-lg-right pt-2" ></label>'+
// 				'		<div class="col-lg-6">'+
// 				'			<a href="javascript:void(0);" onclick="add(this);" class="btn btn-sm btn-primary float-right">문제 추가</a>'+
// 				'		</div>'+
// 				'	</div>	'+
// 				'	<div class="form-group row">'+
// 				'		<label class="col-lg-3 control-label text-lg-right pt-2" >문제 번호</label>'+
// 				'		<div class="col-lg-6">'+
// 				'			<input class="col-lg-5 form-control" type="text" style="width:100px">'+
// 				'		</div>'+
// 				'	</div>'+
// 	    		'	<div class="form-group row">'+
// 				'		<label class="col-lg-3 control-label text-lg-right pt-2" >문제 명</label>	'+
// 				'		<div class="col-lg-6">'+
// 				'			<textarea class="textarea"></textarea>'+
// 				'		</div>'+
// 				'	</div>'+
// 				'	<div class="form-group row">'+
// 				'		<label class="col-lg-3 control-label text-lg-right pt-2" >보기 1)</label>'+
// 				'		<div class="col-lg-6">'+
// 				'			<input class="form-control" name="" type="text">'+
// 				'		</div>'+
// 				'	</div>'+
// 				'	<div class="form-group row">'+
// 				'		<label class="col-lg-3 control-label text-lg-right pt-2" >보기 2)</label>'+
// 				'		<div class="col-lg-6">'+
// 				'			<input class="form-control" name="" type="text">'+
// 				'		</div>'+
// 				'	</div>'+
// 				'	<div class="form-group row">'+
// 				'		<label class="col-lg-3 control-label text-lg-right pt-2" >보기 3)</label>'+
// 				'		<div class="col-lg-6">'+
// 				'			<input class="form-control" name="" type="text">'+
// 				'		</div>'+
// 				'	</div>'+
// 				'	<div class="form-group row">'+
// 				'		<label class="col-lg-3 control-label text-lg-right pt-2" >보기 4)</label>'+
// 				'		<div class="col-lg-6">'+
// 				'			<input class="form-control" name="" type="text">'+
// 				'		</div>'+
// 				'	</div>'+
// 				'	<div class="form-group row">'+
// 				'		<label class="col-lg-3 control-label text-lg-right pt-2" > 배점 </label>'+
// 				'		<div class="col-lg-6">'+
// 				'			<input class="col-lg-5 form-control" type="text" style="width:100px">'+
// 				'		</div>'+
// 				'	</div>	'+
// 				'	<div class="form-group row">'+
// 				'		<label class="col-lg-3 control-label text-lg-right pt-2" > 정답 번호 </label>'+
// 				'		<div class="col-lg-6">'+
// 				'			<input class="col-lg-5 form-control" type="text" style="width:100px">'+
// 				'		</div>'+
// 				'	</div>	'+
// 				'	<div class="form-group row">'+
// 				'		<label class="col-lg-3 control-label text-lg-right pt-2" ></label>'+
// 				'		<div class="col-lg-6">'+
// 				'			<a href="javascript:void(0);" onclick="remove(this);" class="btn btn-sm btn-primary float-right">문제 삭제</a>'+
// 				'		</div>'+
// 				'	</div>	'+
// 				'   <hr>   '+
// 				'</div>'
		

		
// 		aa.after(test);
				
// 		  $('.textarea').summernote();
		
		
	}
	
	function add(obj){
		
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
	
	function remove2(obj){
		var obj = $(obj).parent().parent().parent().parent();
		
		obj.remove();
		
		
	}
	

	function back(obj){
		var text = $('#text')
		var exam =$('#exam')		
		var examList =$("#examList")
		text.css("display","block");
		exam.css('display','none');
		examList.css('display','none');


		
			 
		
	}

	
	
	
	function update(obj){
		alert("zzzz")
		var me = $(obj).parent().parent().parent().parent().parent();
		var update =
				'	<div class="form-group row">'+
				'		<label class="col-lg-2 control-label text-lg-right pt-2" ></label>'+
				'		<div class="col-lg-8">'+
				'			<div class="card text-center">'	+
				'				<div class="card-header bg-color-grey text-2">'+
				'					<span class="float-left"><input type="text" value="문제"></span>'+
				'					<span class="float-right">배점<input style="width:50px" type="text" value=""></span>'+
				'				</div>'+
				'				<div class="card-body" style="padding:0.75rem">'+
				'	<div class="form-group row">'+
				'		<label class="col-lg-3 control-label text-lg-right pt-2" >문제 번호</label>'+
				'		<div class="col-lg-8">'+
				'			<input class="col-lg-5 form-control" type="text" style="width:100px">'+
				'		</div>'+
				'	</div>'+
	    		'	<div class="form-group row">'+
				'		<label class="col-lg-3 control-label text-lg-right pt-2" >문제 명</label>	'+
				'		<div class="col-lg-8">'+
				'			<textarea class="textarea"></textarea>'+
				'		</div>'+
				'	</div>'+
				'	<div class="form-group row">'+
				'		<label class="col-lg-3 control-label text-lg-right pt-2" >보기 1)</label>'+
				'		<div class="col-lg-8">'+
				'			<input class="form-control" name="" type="text">'+
				'		</div>'+
				'	</div>'+
				'	<div class="form-group row">'+
				'		<label class="col-lg-3 control-label text-lg-right pt-2" >보기 2)</label>'+
				'		<div class="col-lg-8">'+
				'			<input class="form-control" name="" type="text">'+
				'		</div>'+
				'	</div>'+
				'	<div class="form-group row">'+
				'		<label class="col-lg-3 control-label text-lg-right pt-2" >보기 3)</label>'+
				'		<div class="col-lg-8">'+
				'			<input class="form-control" name="" type="text">'+
				'		</div>'+
				'	</div>'+
				'	<div class="form-group row">'+
				'		<label class="col-lg-3 control-label text-lg-right pt-2" >보기 4)</label>'+
				'		<div class="col-lg-8">'+
				'			<input class="form-control" name="" type="text">'+
				'		</div>'+
				'	</div>'+
				'	<div class="form-group row">'+
				'		<label class="col-lg-3 control-label text-lg-right pt-2" > 배점 </label>'+
				'		<div class="col-lg-8">'+
				'			<input class="col-lg-5 form-control" type="text" style="width:100px">'+
				'		</div>'+
				'	</div>	'+
				'	<div class="form-group row">'+
				'		<label class="col-lg-3 control-label text-lg-right pt-2" > 정답 번호 </label>'+
				'		<div class="col-lg-8">'+
				'			<input class="col-lg-5 form-control" type="text" style="width:100px">'+
				'		</div>'+
				'	</div>	'+
				'	<div class="form-group row">'+
				'		<label class="col-lg-3 control-label text-lg-right pt-2" ></label>'+
				'		<div class="col-lg-8">'+
				'			<a href="updateTest.do" class="btn btn-sm btn-primary float-right">저장</a>'+
				'		</div>'+
				'	</div>	'+
				'				</div>'+
				'			</div>'+
				'		</div>'+
				'	</div>';	
		
		me.after(update);
		  $('.textarea').summernote();
		me.remove();
		
		
	}

</script>
<%@ include file="../common/footer.jsp"%>

