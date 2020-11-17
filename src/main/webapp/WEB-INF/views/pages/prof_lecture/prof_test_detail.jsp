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
								<h4 class="text-lg-center">${ct.cName } 시험 정보 </h4> <hr>
									<div id="text">	
										<div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" >과목 명</label>
											<div class="col-lg-6">
												<p class="form-control-static pt-2">${ct.cName }</p>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" >제목</label>
											<div class="col-lg-6">
												<p class="form-control-static pt-2">${ct.tTitle }</p>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" >시험구분 </label>
											<div class="col-lg-6">
												<c:if test="${ct.tType eq 'F'}">
													<p class="form-control-static pt-2">기말고사</p>
												</c:if>
												<c:if test="${ct.tType eq 'M' }">
													<p class="form-control-static pt-2">중간고사</p>
												</c:if>
											</div>
										</div>
										<div class="form-group row" >
											<label class="col-lg-3 control-label text-lg-right pt-2" for="inputHelpText">공개일</label>
											<div class="col-lg-6" style="display: flex;">
												<p class="form-control-static pt-2">${ct.openDate }</p>
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
												<p class="form-control-static pt-2">${ct.tTime }분</p>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" ></label>
											<div class="col-lg-3" >
												<c:url var="tUpSchedule" value="tUpScheduleView.do">
													<c:param name="cNo" value="${ct.cNo}"/>
													<c:param name="tNo" value="${ct.tNo}"/>
												</c:url>
												<a class="btn btn-tertiary btn-with-arrow mb-2 float-right" href="${tUpSchedule }">수정<span><i class="fas fa-chevron-right"></i></span></a>
											</div>
											<div class="form-group col-lg-3">
											</div>
										</div>
<!-- 										<div class="form-group row"> -->
<!-- 											<label class="col-lg-3 control-label text-lg-right pt-2" >시험 문제 출제</label> -->
<!-- 											<div class="col-lg-6" style="display: flex"> -->
<!-- 												<a href='javascript:void(0)' onclick="addTest()"  style="   align-self: center;"> 출제하기</a> -->
<!-- 											</div> -->
<!-- 										</div> -->
										<hr>
										<div class="form-group row">
											<div class="form-group col-lg-3">
											
													<a class="btn btn-sm btn-primary float-right" href="prof_testList.do">목록보기</a>
											</div>
											<div class="form-group col-lg-3">
											</div>
											
											<div class="form-group col-lg-3">
												<c:url var="qList" value="qList.do">
													<c:param name="cNo" value="${ct.cNo}"/>
													<c:param name="tNo" value="${ct.tNo}"/>
												</c:url>
												<a  href='${qList}'class="btn btn-primary btn-sm btn-modern float-right" data-loading-text="Loading...">문제보기</a>
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
</div>
<%@ include file="../common/footer.jsp"%>

