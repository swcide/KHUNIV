<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/professor_header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%


%>

<style>
.note-editing-area{
    min-height: 50px;
}
.modal-dialog {
    max-width: 600px;
}
thead tr th {
	text-align: center;
}
tbody tr td p{
margin:0;}
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
							<c:forEach var="t" begin="0" end="0"  items="${t}">
								<h4 class="text-lg-center">${t.cName } 시험 문제 출제 </h4> <hr>
							</c:forEach>
						    		<form action="prof_testUpdate.do" method="post">
						    		
						    		
						    			<div id="examList" style="display:block;">
						    				
							    			<c:set var="Test" value="${t}"></c:set>
							    			
							    			<div class="form-group row">
													<label class="col-lg-2 control-label text-lg-right pt-2" ></label>
													<div class="col-lg-8">
														<a href='javascript:void(0);' onclick='addQ(this);' class="btn btn-sm btn-primary float-right">문제 추가</a>
														

														<a  href="javascript:void(0)"onclick="takeQ(this);" data-toggle="modal"  data-target="#defaultModal"  class="btn btn-sm btn-primary float-left">문제 가져오기</a>
													</div>
											</div>	
							    			<c:if test="${empty Test  }">
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
														<a id="back" href="tUpScheduleView.do?tNo='${ct.tNo}'"  class="btn btn-quaternary mb-2">뒤로가기</a>
														
														<input 	type="submit" value="완료"class="btn btn-dark btn-modern float-right">
		
													</div>
												</div>
											</c:if>			
											
														
						    				<c:if test="${!empty Test  }">
						    				<c:forEach var="t" items="${t }">
						    				<div class="form-group row">
												<label class="col-lg-2 control-label text-lg-right pt-2" ></label>
												<div class="col-lg-8">
													<div class="card text-center">
														<div class="card-header bg-color-grey text-2">
															<span class="float-left">문제 ${t.qNo }</span>
															<span class="float-right">${t.qWorth }점</span>
															
														</div>
														<div class="card-body" style="padding:0.75rem">
															<div class="text-right">
																<c:url var="qdelete" value="qdelete.do">
																	<c:param name="tNo" value="${t.tNo}"/>
																	<c:param name="qNo" value="${t.qNo}"/>
																	<c:param name="cNo" value="${t.cNo}"/>
																	<c:param name="qId" value="${t.qId}"/>
																</c:url>
																<a href="javascript:void(0)"onclick="update(this);"><i class="icon-wrench icons mr-2"></i></a>
																<a href="${qdelete}"class="close" style="cursor: pointer;" ><span >×</span></a>
															</div>
															<h4 class="card-title mb-1 text-4 font-weight-bold"></h4>
															
															<p class="card-text">${t.qTitle }</p>
														</div>
													</div>
												</div>
											</div>

											</c:forEach>
												
											
											
											<div class="form-group row">
												<label class="col-lg-2 control-label text-lg-right pt-2" ></label>
												<div class="col-lg-8">
												<c:url var="testList" value="prof_testList.do">
													<c:param name="currentPage" value="${ currentPage }"/>
												</c:url>
												
												<a  href='${testList }'  class="btn btn-quaternary mb-2">목록으로</a>
												
												<input 	type="submit" value="완료"class="btn btn-dark btn-modern float-right">
	
												</div>
											</div>
											</c:if>
						    			</div>
						    			
						    		</form>
<!-- 						    		인서트 -->
							
					    		
						    		<div id="exam"style="display:none;" >  
						    		<form action="testInsert.do" method="post">
					    		  		<div>		
							    			<div class="form-group row">
												<label class="col-lg-3 control-label text-lg-right pt-2" ></label>
												<div class="col-lg-6">
													<a href='javascript:void(0);' onclick='add(this);' class="btn btn-sm btn-primary float-right">문제 추가</a>
												</div>
											</div>	
											
											<c:choose>
												<c:when  test="${!empty Test }">
													<c:forEach var="t" end="0" items="${t}">
														<input type="hidden" name="tNo" value="${t.tNo }">
														<input type="hidden" name="cNo" value="${t.cNo }">
														<input type="hidden" name="pNo" value="${t.pNo }">
														<input type="hidden" name="cName" value="${t.cName }">
													</c:forEach>
												</c:when>
												<c:otherwise>
												<input type="hidden" name="tNo" value="${ct.tNo }">
												<input type="hidden" name="cNo" value="${ct.cNo }">
												<input type="hidden" name="pNo" value="${ct.pNo }">
												<input type="hidden" name="cName" value="${ct.cName }">
												</c:otherwise>
											</c:choose>
										
												
												
										  	<div class="form-group row">
												<label class="col-lg-3 control-label text-lg-right pt-2" >문제 번호</label>
												<div class="col-lg-6">
													<input class="col-lg-5 form-control" name="qNo"type="text" style="width:100px">
												</div>
											</div>
											
							    			<div class="form-group row">
												<label class="col-lg-3 control-label text-lg-right pt-2" >문제 명</label>											<div class="col-lg-6">
												<textarea name="qTitle" class="textarea"></textarea>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 control-label text-lg-right pt-2" >보기 1)</label>
												<div class="col-lg-6">
													<input class="form-control" name="qContent1" type="text">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 control-label text-lg-right pt-2" >보기 2)</label>
												<div class="col-lg-6">
													<input class="form-control" name="qContent2" type="text">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 control-label text-lg-right pt-2" >보기 3)</label>
												<div class="col-lg-6">
													<input class="form-control" name="qContent3" type="text">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 control-label text-lg-right pt-2" >보기 4)</label>
												<div class="col-lg-6">
													<input class="form-control" name="qContent4" type="text">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-lg-3 control-label text-lg-right pt-2" > 배점 </label>
												<div class="col-lg-6">
													<input class="col-lg-5 form-control" name="qWorth"type="text" style="width:100px">
												</div>
											</div>	
											<div class="form-group row">
												<label class="col-lg-3 control-label text-lg-right pt-2" > 정답 번호 </label>
												<div class="col-lg-6">
													<input class="col-lg-5 form-control" name="qAnswer" type="text" style="width:100px">
												</div>
											</div>	
							    			<hr>
					    					<div class="form-group row">
												<label class="col-lg-3 control-label text-lg-right pt-2" ></label>
												<div class="col-lg-6">
												<a id="back" href='javascript:void(0);' onclick='back(this);' class="btn btn-quaternary mb-2">뒤로가기</a>
												
												<input 	type="submit" value="완료"class="btn btn-dark btn-modern float-right">
												
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
</div>

<div class="modal fade" id="defaultModal" tabindex="-1" aria-labelledby="defaultModalLabel" aria-hidden="true" style="display: none;">
	<div class="modal-dialog">
		<div class="modal-content">
   
			<div class="modal-header"style=" padding-top: 1rem;padding-bottom:0.5rem; border-bottom:none;">
				<h4 class="modal-title" id="defaultModalLabel" >Default Modal Title</h4>
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			</div>
			<div class="modal-body">
				<div id="qList">
					<table class='table table-hover'>
						<thead>
							<tr>
								<th align="center">년도</th>
								<th align='center'>구분</th>
								<th align='center'>과목</th>
								<th >제목</th>
								<th ><i class="icon-plus icons"></i></th>
							</tr>
						</thead>
						<tbody>
							<tr>

							</tr>
						</tbody>
					</table>
				</div>
				
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-light" data-dismiss="modal">Close</button>
				<button onclick="addTakeQ()" type="button" class="btn btn-light" data-dismiss="modal">추가</button>
			</div>
		</div>
	</div>
</div>
<script>
	function takeQ(){
		
		var cNo = $('input[name=cNo]').val()
		var tNo = $('input[name=tNo]').val()
		
	
		console.log(cNo)
		
		
		$.ajax({
			url:"takeQList.do",
			data:{
				  tNo:tNo,
				  cNo:cNo
			},
			dataType:"json",
			success:function(data){
				$tableBody = $('#qList tbody');
				$tableBody.html("");
				
				var year;
				var $tr;
				
				var tType;
				var $cName;
				var $tTitle;
				var $qNo;
				
				
				if(data.length>0){
					for(var i in data){
						console.log(cNo+"22")
						year = data[i].tNo;
						
						var $year= year.charAt(1)+year.charAt(2)+year.charAt(3)+year.charAt(4)
						var $tType =year.charAt(0);
						
						if($tType=="M"){
							$tType= $("<td width='100'align='center'>").text("중간고사");
							$tr = $("<tr>");
							$year = $("<td width='20px'align='center'>").text($year);
							$cName=$("<td align='center'>").text(data[i].cName);
							$qTitle=$("<td align='center'>").html(data[i].qTitle);
							$qNo=$("<td width='10px' align='center'><input type='checkbox' name='check' value='"+data[i].qId+"'></td>");
							var hidden =$("<input type='hidden' name='cNo1' value='"+data[i].cNo+"'>");
							var hidden3 =$("<input type='hidden' name='qId1' value='"+data[i].qId+"'>");
							
							$tr.append($year);
							$tr.append($tType);
							$tr.append($cName);
							$tr.append($qTitle);
							$tr.append($qNo);
							$tr.append(hidden);
							$tr.append(hidden3);
							$tableBody.append($tr);
						
						}else if($tType=="F"){
							$tType= $("<td width='80' align='center'>").text("기말고사");
							$tr = $("<tr>");
							$year = $("<td width='20px' align='center'>").text($year);
							$cName=$("<td width='120px' align='center'> ").text(data[i].cName);
							$qTitle=$("<td width='200px' align='center'>").html(data[i].qTitle);
							$qNo=$("<td width='10px' align='center'><input name='check' type='checkbox' value='"+data[i].qId+"'></td>");
							var hidden =$("<input type='hidden' name='cNo1' value='"+data[i].cNo+"'>");
							
							
							$tr.append($year);
							$tr.append($tType);
							$tr.append($cName);
							$tr.append($qTitle);
							$tr.append($qNo);
							$tr.append(hidden);
							$tr.append(hidden3);
							$tableBody.append($tr);
						}
					}
					
				}else{
					alert("야 2오류나")
				}
			},error:function(request,status,errorData){
				alert("야 오류나 걍 에러임 엘스말고")
				console.log(request.status + " : " + errorData);
			}
		})
		
	}
		
	
	function addTakeQ(){
		
	
		
	
		var qId = $("input:checkbox[name='check']:checked").val()

		var tNo = $('input[name=tNo]').val();
		
		console.log(qId);
		console.log(tNo)
		
		$.ajax({
			url:"takeQListAdd.do",
			data:{
				qId:qId,
				tNo:tNo
			},
			dataType:"text",
			success:function(data){
				
				
				if(data=="success"){
					
					
					
					alert('불러오기 완료');
					re()
				
				}
			
			},error:function(request,status,errorData){
				alert("야 오류나 걍 에러임 엘스말고")
				console.log(request.status + " : " + errorData);
			}
		})
		
	}


</script>


<script>



	function rePlace(){
		var text = $('#text')
		var exam =$('#examList')		
		text.css("display","none");
		exam.css('display','block');
		
		var test = $('#select').val()
		
	

			
		
				 
		
	}
	
	
	function examList(){
		var text = $('#text')
		var exam =$('#exam')		
		text.css("display","none");
		exam.css('display','block');
		
			 
		
		
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
		var exam =$('#exam')		
		var examList =$("#examList")
		exam.css('display','none');
		examList.css('display','block');


		
			 
		
	}

	
	function addQ(obj){
		alert("zzzzzzz")
		var examList = $('#examList');
		var exam = $('#exam');
		examList.css("display","none");
		exam.css('display','block');

		
	}
	
	
	function update(obj){
		console.log('ggg')
	
		var me = $(obj).parent().parent().parent().parent().parent();
		var fm =$('#examList')
		
		<c:forEach items="${t}" var="t">
		

		var update =
				'<form id="fm" action="prof_testUpdate.do" method="post">'+
				'	<div class="form-group row">'+
				'		<label class="col-lg-2 control-label text-lg-right pt-2" ></label>'+
				'		<div class="col-lg-8">'+
				'			<div class="card text-center">'	+
				'				<div class="card-header bg-color-grey text-2">'+
				'					<span class="float-left">문제 </span>'+
				'					<span class="float-right">배점<input style="width:50px" type="text" name="qWorth"value="${t.qWorth}">점</span>'+					
				'				</div>'+
				'				<div class="card-body" style="padding:0.75rem">'+
				'	<div class="form-group row">'+
				'		<label class="col-lg-2 control-label text-lg-right pt-2" >문제 번호</label>'+
				'		<div class="col-lg-9">'+
				'			<input class="col-lg-5 form-control"value="${t.qNo}" name="qNo" type="text" style="width:100px">'+
				'		</div>'+
				'	</div>'+
	    		'	<div class="form-group row">'+
				'		<label class="col-lg-2 control-label text-lg-right pt-2" >문제 명</label>	'+
				'		<div class="col-lg-9">'+
				'			<textarea name="qTitle" class="textarea">${t.qTitle}</textarea>'+
				'		</div>'+
				'	</div>'+
				'	<div class="form-group row">'+
				'		<label class="col-lg-2 control-label text-lg-right pt-2" >보기 1)</label>'+
				'		<div class="col-lg-9">'+
				'			<input class="form-control" name="qContent1" value="${t.qContent1}" type="text">'+
				'		</div>'+
				'	</div>'+
				'	<div class="form-group row">'+
				'		<label class="col-lg-2 control-label text-lg-right pt-2" >보기 2)</label>'+
				'		<div class="col-lg-9">'+
				'			<input class="form-control"name="qContent2" value="${t.qContent2}" type="text">'+
				'		</div>'+
				'	</div>'+
				'	<div class="form-group row">'+
				'		<label class="col-lg-2 control-label text-lg-right pt-2" >보기 3)</label>'+
				'		<div class="col-lg-9">'+
				'			<input class="form-control" name="qContent3" value="${t.qContent3}" type="text">'+
				'		</div>'+
				'	</div>'+
				'	<div class="form-group row">'+
				'		<label class="col-lg-2 control-label text-lg-right pt-2" >보기 4)</label>'+
				'		<div class="col-lg-9">'+
				'			<input class="form-control" name="qContent4" value="${t.qContent4}"type="text">'+
				'		</div>'+
				'	</div>'+
				'	<div class="form-group row">'+
				'		<label class="col-lg-2 control-label text-lg-right pt-2" > 정답 번호 </label>'+
				'		<div class="col-lg-9">'+
				'			<input class="col-lg-5 form-control" name="qAnswer" value="${t.qAnswer}" type="text" style="width:100px">'+
				'		</div>'+
				'	</div>	'+
				'	<div class="form-group row">'+
				'		<label class="col-lg-2 control-label text-lg-right pt-2" ></label>'+
				'		<div class="col-lg-9">'+
				'			<input value="${t.qNo},${t.cNo},${t.tNo},${t.qId}"  type="hidden" style="width:100px">'+
				'			<a href="javascript:void(0)" onclick="update2(this)" class="btn btn-sm btn-primary float-right">저장</a>'+
				'			<a href="javascript:void(0)" onclick="cancle(this)" class="btn btn-sm btn-primary float-left">취소</a>'+
				'		</div>'+
				'	</div>	'+
				'				</div>'+
				'			</div>'+
				'		</div>'+
				'	</div>'+
				'</form>';
		
		</c:forEach>
		fm.after(update);
		  $('.textarea').summernote();
		fm.css('display','none');
		
		
		
		
	}
	
function cancle(obj){
	var me = $('#examList');
	$('#fm').remove();
	me.css('display','block');
	
	
}

function update2(obj){
		
		console.log('hhhhhh')
		var values = $(obj).siblings('input').val()
		
		var arr =values.split(",");
		
		console.log(arr[0]+"??????");
		console.log(values);
		
		var qNo = arr[0];
		var cNo = arr[1];
		var tNo = arr[2];
		var qId = arr[3];


		var qWorth = $('input[name=qWorth]').val()
		var qTitle = $('textarea[name=qTitle]').val()
		var qContent1 = $('input[name=qContent1]').val()
		var qContent2 = $('input[name=qContent2]').val()
		var qContent3 = $('input[name=qContent3]').val()
		var qContent4 = $('input[name=qContent4]').val()
		var qAnswer = $('input[name=qAnswer]').val()
		
		$.ajax({
			url:"prof_testUpdate.do",
			data:{
				
				  qNo:qNo,
				  cNo:cNo,
				  tNo:tNo,
				  qWorth:qWorth,
				  qTitle:qTitle,
				  qContent1:qContent1,
				  qContent2:qContent2,
				  qContent3:qContent3,
				  qContent4:qContent4,
				  qAnswer:qAnswer,
				  qId:qId
			},
			dataType:"text",
			success:function(data){
				if(data=="success"){
					alert("저장되었습니다.")
					re();
					
				}else{
					alert("야 오류나")
				}
			},error:function(request,status,errorData){
				console.log(request.status + " : " + errorData);
			}
		})
		
	}

	function re(){
		location.reload();
	}
	

</script>
<%@ include file="../common/footer.jsp"%>

