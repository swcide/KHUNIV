<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/professor_header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.note-editing-area{
    min-height: 50px;
}

.filebox input[type="file"] {
position: absolute;
width: 0;
height: 0;
padding: 0;
overflow: hidden;
border: 0;
}

.filebox label {
margin:0;
display: inline-block;
padding: 10px 20px;
color: #999;
vertical-align: middle;
background-color: #fdfdfd;
cursor: pointer;
border: 1px solid #ebebeb;
border-radius: 5px;
}

/* named upload */
.filebox .upload-name {
display: inline-block;
  height: 35px;
  font-size:18px; 
  padding: 0 10px;
vertical-align: middle;
background-color: #f5f5f5;
  border: 1px solid #ebebeb;
  border-radius: 5px;

}
</style>

<!-- Content Wrapper. Contains page content -->
<div class="body">
	<div role="main" class="main">
		<section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-3" style="background-image: url(resources/img/page-header/KakaoTalk_20201026_130729067.jpg); padding: 70px;">
			<div class="container">
				<div class="row mt-3">
					<div class="col-md-12 align-self-center p-static order-2 text-center">
						<h1 class="text-9 font-weight-bold text-lg-right"> 과제 </h1>
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
								<h4 class="text-lg-center"> 과제 </h4> <hr>
								<form class="form-horizontal form-bordered" action="hInsert.do" method="post" enctype="multipart/form-data">
								
									<div id="text">	
									<input type="hidden" name ="pNo" value="${lh.pNo }">
									<input type="hidden" name ="cNo" value="${lh.cNo }">
										
										<div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" for="inputDefault">주차</label>
											<div class="col-lg-6">
												<select class="form-control" name="lecNo" id="inputDefault">
													<option value="1">1주차</option>
													<option value="2">2주차</option>
													<option value="3">3주차</option>
													<option value="4">4주차</option>
													<option value="5">5주차</option>
													<option value="6">6주차</option>
													<option value="7">7주차</option>
													<option value="8">8주차</option>
													<option value="9">9주차</option>
													<option value="10" >10주차</option>
													<option value="11">11주차</option>
													<option value="12">12주차</option>
												</select>
											</div>
										</div>

										<div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" >과제 명</label>
											<div class="col-lg-6">
												<input class="form-control" name="hTitle" type="text" >
											</div>
										</div>


										<div class="form-group row" >
											<label class="col-lg-3 control-label text-lg-right pt-2" for="inputHelpText">공개일</label>
											<div class="col-lg-6" style="display: flex;">
												<input type="date" name="openDate"class="form-control" max="9999-12-31"   >
											</div>
										</div>

										<div class="form-group row "style="margin-bottom: 0">
											<label class="col-lg-3 control-label text-lg-right pt-2" for="inputRounded">마감일 </label>
											<div class="col-lg-6" style="display: flex;">
												<input type="date" name="endDate"class="form-control" max="9999-12-31"   >
											</div>
										</div>
										<div class="form-group row "style="margin-bottom: 0">
											<label class="col-lg-3 control-label text-lg-right pt-2" for="inputRounded">과제 내용 </label>
											<div class="col-lg-6" style="display: flex;">
												<textarea name="hContent" class="textarea"></textarea>
											</div>
										</div>
									
										
										
										<hr>
											<div class="form-group row">
												<label class="col-lg-3 control-label text-lg-right pt-2" >배점</label>
												<div class="col-lg-6" style="display: flex">
													<input name="hPoint"class="form-control" type="text" style="width:50px"><span style="padding-left:20px;align-self: center; font-size: 15px">점</span> 
												</div>
											</div>
											<div class="form-group row "style="margin-bottom: 0">
													<label class="col-lg-3 control-label text-lg-right pt-2" for="inputRounded">첨부 파일 </label>
													<div class="col-lg-6" style="display: flex;">
														<div class="filebox">
														<label class ="btn btn-md btn-modern"for="file" >업로드</label> 
														<input name="uploadFile" type="file" id="file"> 
														<input class="upload-name" value="파일선택" disabled="disabled">
														</div>
													</div>
											</div>
									
										<hr>
										<div class="form-group row">
											<div class="form-group col-lg-3">
													<a class="btn btn-sm btn-primary float-right" href="hWeekList.do">돌아가기</a>
											</div>
											<div class="form-group col-lg-3">
											</div>
											<div class="form-group col-lg-3">
												<input type="submit" value="저장" class="btn btn-primary btn-sm btn-modern float-right" data-loading-text="Loading...">
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

	
	
	$(document).ready(function(){ 
		  var fileTarget = $('#file'); 
		  fileTarget.on('change', function(){ // 값이 변경되면
		      var cur=$(".filebox input[type='file']").val().replace(/c:\\fakepath\\/i,"");
		    $(".upload-name").val(cur);
		  }); 
		}); 

	
	  $(function () {
		    // Summernote
		    $('.textarea').summernote()
		  })
</script>
<%@ include file="../common/footer.jsp"%>

