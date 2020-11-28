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
								<form  onsubmit="return check()" class="form-horizontal form-bordered" action="prof_testScheduleInsert.do" method="get">
									<div id="text">	
										<div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" >과목 명</label>
											<div class="col-lg-6">
												<input type="hidden" name ="pNo" value="${p.pNo }">
												<select id ="select"class="form-control" name="cName" id="inputDefault">
													<c:forEach var="lc" items="${lc}">
														<option value="${lc.className},${lc.classNo }">${lc.className }	</option>
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
													<option value="M">중간고사</option>
													<option value="F">기말고사</option>
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

										<div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" >시험시간</label>
											<div class="col-lg-6" style="display: flex">
												<input name="tTime"class="form-control" type="text" style="width:50px"><span style="padding-left:20px;align-self: center; font-size: 15px">분</span> 
											</div>
										</div>
										<div class="form-group row">
										<div class="form-group col-lg-3">
												<a class="btn btn-sm btn-primary float-right" href="prof_testList.do">목록보기</a>
										</div>
										<div class="form-group col-lg-3">
										</div>
										<div class="form-group col-lg-3">
											<input type="submit" value="저장 후 시험문제 출제하기" class="btn btn-primary btn-sm btn-modern float-right" data-loading-text="Loading...">
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


	
    function check (){
    	var test = $('#select').val().split(",");
    	var cNo = test[1];
    	var empty1 =$('input[name=tTitle]').val();
    	var empty2 =$('input[name=openDate]').val();
    	var empty3 =$('input[name=openTime]').val();
    	var empty4 =$('input[name=tTime]').val();
    	
    	console.log(test[1]);
    	console.log(empty1);
    	if(empty1==""){
    		
    		alert("제목을 작성해주세요!");
    		return false;
    	}else if(empty2==""){
    		alert("공개일을 작성해주세요!");
    		return false;
    	}else if(empty3==""){
    		alert("공개시간을 작성해주세요!");
    		return false;
    	}else if(empty4==""){
    		alert("시험시간을 작성해주세요!");
    		return false;
    	}else{
    	
    	}
    }
		
	




</script>
<%@ include file="../common/footer.jsp"%>

