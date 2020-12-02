<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
						<h4>김진태 님의 기말 고사 목록입니다.</h4>
                    
                        
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
                                    <th style="text-align: center;">시험 기간</th>
                                    <th style="text-align: center;">시험 시간</th>
                                    <th style="text-align: center;">응시</th>                                                                    
                                </tr>
                            </thead>
                            <tbody>
                             
                            <c:forEach var ="tl" items="${tl }">
                             <c:if test="${tl.tType eq 'F' }">
                                <tr>                                                             
                                    <td >1</td>
                                    <td style="text-align: center;">${tl.cName }</td>
                                    <td style="text-align: center;">${tl.cType }</td>
                                  	<td style="text-align: center;">중간고사</td>
                                    <td style="text-align: center;">${tl.openDate } </td>
                                    <td style="text-align: center;">${tl.testTime }분</td>     
                                    <td style="text-align: center;">
                                    	<c:url var="test" value="tMidtermTest.do">
											<c:param name="cNo" value="${tl.cNo}"/>
											<c:param name="tNo" value="${tl.tNo}"/>
											<c:param name="sNo" value="${tl.sNo}"/>
											<c:param name="pNo" value="${tl.pNo}"/>
										</c:url>
                                        <a  class="button button-rounded button-reveal  button-small button-aqua button-border  text-right" onclick="(window.open('${test}','brank','width=1198,height=1000'))">
                                            <i class="icon-line-arrow-right"></i>
                                            <span>응시하기</span>
                                        </a>
                                    </td>
                                </tr>
                               </c:if>
                                 <c:if test="${tl.tType eq 'M' }">
                                 <tr>
                                 <td>
                                 	준비된 시험이 없습니다.
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



</body>
</html>