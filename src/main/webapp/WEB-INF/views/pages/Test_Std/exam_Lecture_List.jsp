<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Content Wrapper. Contains page content -->
	<c:import url="../common/Test_std_header.jsp"/>
<div class="body">
	<section id="page-title" class="page-title-parallax page-title-dark skrollable skrollable-between" style=" background-position: 0px -200.237px;" data-bottom-top="background-position:0px 0px;" data-top-bottom="background-position:0px -300px;">
		<div class="container clearfix">
			<h2>강의 목록 조회</h2>
		</div>
	</section>

		<section id="content">
			<div class="content-wrap">

                
			

				<div class="container clearfix">
                    
                    
                    <div class="title-block">
						<h4>${s.sName } 님의 강의 목록 입니다.</h4>
                    
                        
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
                                   <th style="text-align: center;">시험 종류</th>
                                   <th style="text-align: center;">담당교수</th>
                                   <th style="text-align: center;">시험 응시</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                   <td>1</td>
                                   <td style="text-align: center;">중독학</td>
                                   <td style="text-align: center;">전공선택</td>
                                   <td style="text-align: center;">중간고사</td>
                                   <td style="text-align: center;">김진태</td>
                                   <td style="text-align: center;">제출 완료</td>
                                </tr>
                            </tbody>
                        </table>
					</div>
					<div class="clear"></div>
					<div class="line"></div>
				</div>
			</div>
        </section><!-- #content end -->
        

		<!-- Footer
		============================================= -->

</div>
<%@ include file="../common/footer.jsp"%>

