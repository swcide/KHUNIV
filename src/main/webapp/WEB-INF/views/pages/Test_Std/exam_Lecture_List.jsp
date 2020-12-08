<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>

<meta charset="UTF-8">
<head>

</head>

<body class="stretched side-header">
	<c:import url="../common/test_header.jsp"/>

		

		<section id="page-title" class="page-title-parallax page-title-dark skrollable skrollable-between" style=" background-position: 0px -200.237px;" data-bottom-top="background-position:0px 0px;" data-top-bottom="background-position:0px -300px;">
		<div class="container clearfix">
			<h2>강의 목록 조회</h2>
		</div>
	</section>

		<section id="content">
			<div class="content-wrap">
				<div class="container clearfix">
                    <div class="title-block">
						<h4>${s.sNo } 님의 강의 목록 입니다.</h4>
                    </div>
                    <ul class="iconlist">
                        <li ><i class="icon-bell"></i> 시험 응시 여부를 꼭 확인하세요!</li>
                    </ul>
					<div class="row col-mb-50">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                   <th>No</th>
                                   <th style="text-align: center;">과목명</th>
                                   <th style="text-align: center;">이수</th>
                                   <th style="text-align: center;">담당교수</th>
                                   <th style="text-align: center;">시험 종류</th>
                                   <th style="text-align: center;">시험 응시</th>
                                </tr>
                            </thead>
                            <tbody>
                             <c:forEach var="tl" items="${tl }" varStatus="status">
                                <tr>
                                   <td style="text-align: center;">${status.index+1 }</td>
                                   <td style="text-align: center;">${tl.cName }</td>
                                   <td style="text-align: center;">${tl.pName }</td>
                                   <td style="text-align: center;">${tl.cType }</td>
                                 
                                   <c:if test="${tl.tType eq 'M' }">
	                                   <td style="text-align: center;">중간고사</td>
	                                     <c:if test="${empty tg  }">
	                                   		<td style="text-align: center;"> 미응시</td>
	                                   </c:if>
	                                  <c:forEach var ="tg" end="0" items="${tg }">
	                                   <c:if test="${tl.tNo ne tg.tNo }">
	                                   		<td style="text-align: center;"> 미응시</td>
	                                   </c:if>
	                                   </c:forEach>
	                                    <c:forEach var ="tg" end="0" items="${tg }">
	                                   <c:if test="${tl.tNo eq tg.tNo}">
	                                   		<td style="text-align: center;">응시완료</td>
                                  	   </c:if>
                                  	   </c:forEach>
                                   </c:if>
                                    <c:forEach var ="tg" end="0" items="${tg }">
                                   <c:if test="${tl.tType eq 'F' }">
	                                   <td style="text-align: center;">기말고사</td>
	                                   <c:if test="${ tl.tNo ne tg.tNo }">
	                                   		<td style="text-align: center;"> 미응시</td>
	                                   </c:if>
	                                   <c:if test="${tl.tNo eq tg.tNo}">
	                                   		<td style="text-align: center;">응시완료</td>
                                  	   </c:if>
                                   </c:if>
                                   </c:forEach>
                                
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        
					</div>
					<div class="clear"></div>
					<div class="line"></div>
				</div>
			</div>
        </section><!-- #content end -->
	<c:import url="../common/test_std_footer.jsp"/>

</body>
</html>