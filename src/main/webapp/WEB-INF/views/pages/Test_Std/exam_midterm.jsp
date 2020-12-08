<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
</head>

<body class="stretched side-header">
<c:import url="../common/test_header.jsp"/>

	
		

		<!-- Content
        ============================================= -->
        <section id="page-title" class="page-title-parallax page-title-dark skrollable skrollable-between" style=" background-position: 0px -200.237px;" data-bottom-top="background-position:0px 0px;" data-top-bottom="background-position:0px -300px;">

			<div class="container clearfix">
				<h2>정기 시험</h2>
				
				
			</div>

		</section>

		<section id="content">
			<div class="content-wrap">

                
			

				<div class="container clearfix">
                    
                    
                    <div class="title-block">
						<h4>김진태 님의 중간 고사 목록입니다.</h4>
                    </div>
                    <ul class="iconlist">
                        <li ><i class="icon-bell"></i>응시하기 이후 반드시 제출을 눌러주세요!</li>
                    </ul>
					<div class="row col-mb-50">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th style="text-align: center;">과목명</th>
                                    <th style="text-align: center;">이수</th>
                                    <th style="text-align: center;">시험 종류</th>
                                    <th style="text-align: center;">시험 공개일</th>
                                    <th style="text-align: center;">시험 시간</th>
                                    <th style="text-align: center;">응시</th>                                                                    
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach var ="tl" items="${tl }">
                             <c:if test="${tl.tType eq 'M' }">
                                <tr>                                                             
                                    <td >1</td>
                                    <td style="text-align: center;">${tl.cName }</td>
                                    <td style="text-align: center;">${tl.cType }</td>
                                  	<td style="text-align: center;">중간고사</td>
                                    <td style="text-align: center;">${tl.textDate } </td>
                                    <td style="text-align: center;">${tl.testTime}분</td>     
                                    <td style="text-align: center;">
                                    	<c:url var="test" value="tTest.do">
											<c:param name="cNo" value="${tl.cNo}"/>
											<c:param name="tNo" value="${tl.tNo}"/>
											<c:param name="sNo" value="${tl.sNo}"/>
											<c:param name="pNo" value="${tl.pNo}"/>
											<c:param name="tTime" value="${tl.testTime}"/>
											<c:param name="openDate" value="${tl.openDate}"/>
											<c:param name="rTime" value="${tl.rTime}"/>
										</c:url>
										<input type="hidden" name="date" value="${tl.openDate }">
										<input type="hidden" name="test"value="${test }">
										
	
										<c:if test="${!empty tg }">
											<c:forEach var="tg" end="0" items="${tg}">
											 <c:if test="${tl.tNo eq tg.tNo }">
											   <button type="button" class="btn  btn-secondary button-rounded " style="width:100px;" disabled="disabled">  
		                                            <span>응시완료 </span>
		                                        </button>
	                                        </c:if>
	                                         <c:if test="${tl.tNo ne tg.tNo  }">
		                                        <a  class="button button-rounded button-reveal  button-small button-aqua button-border  text-right" onclick="openTest(this)">
		                                            <i class="icon-line-arrow-right"></i>
		                                            <span>응시하기</span>
		                                        </a>
	                                        </c:if>
	                                        </c:forEach>
                                        </c:if>
	                                         <c:if test="${empty tg }">
		                                        <a  class="button button-rounded button-reveal  button-small button-aqua button-border  text-right" onclick="openTest(this)">
		                                            <i class="icon-line-arrow-right"></i>
		                                            <span>응시하기</span>
		                                        </a>
	                                   		</c:if>
                                    </td>
                                </tr>
                               </c:if>
                           </c:forEach>
                            <c:if test="${empty tl  }">
                                <tr>
									<td colspan="8" align="center">준비된 시험이 없습니다.</td>
								</tr>
                                 </c:if>
                         
                                 
                            </tbody>
                        </table>
					</div>

					<div class="clear"></div><div class="line"></div>
				

				</div>
			</div>
        </section><!-- #content end -->
        
<c:import url="../common/test_std_footer.jsp"/>

<script>


</script>


<script>







 function openTest(obj){
	 
	 var val = $(obj).siblings('input[name=test]').val();
	 var openDate = $(obj).siblings('input[name=date]').val();
	 var tr = $(obj).parent().parent();
	 var textDate = tr.children().eq(4).text();
	 var tTime = (tr.children().eq(5).text());
	 var noHangle ;
	 var regex = /[^0-9]/gi;
	 noHangle =tTime.replace(regex,"")//한글 지우기
	 
	 var toNum = Number(noHangle)//넘버로
	 /// 가져온 값들
	 
	 //opendate date형으로 변경
	 
	 var oYear = openDate.substring(0,4);
	 var oMonth = openDate.substring(5,7);
	 var oDate = openDate.substring(8,10);
	 var oHours = openDate.substring(11,13);
	 var oMinutes = openDate.substring(14,16);
 	 var openDatetoDate = new Date(Number(oYear), Number(oMonth)-1, Number(oDate),Number(oHours),Number(oMinutes));
	 ////////////////////////////////////////////////
	 // 현재 시간
	 var now = new Date();
	//현재시간에 분까지 담음
	 var t = new Date(now.getFullYear(), now.getMonth(), now.getDate(),now.getHours(),now.getMinutes()); 
	 var today =t.getTime();
	
	/////////////////////////////////
	 
	 
	 var cd = new Date(openDatetoDate); //시험 시간
	 var checkDate = cd.getTime();
	 
	 var ld = new Date(openDatetoDate); //마감 시간
	 var limitDate = ld.getTime();
	 

	 
	 
	 var limitTime =ld.setMinutes(cd.getMinutes() +toNum);
	 
	 if(checkDate<=today && today <= limitTime ){
		 alert("시험창으로 이동합니다.")
		  window.open(val,'brank','width=1198,height=1000')
	 }else{
		 alert("시험기간이 아닙니다.")
	 }
	 
	 
	 

	
}

	

</script>


</body>
</html>