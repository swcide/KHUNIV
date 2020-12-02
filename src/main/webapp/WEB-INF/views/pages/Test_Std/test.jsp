<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시험 응시 페이지</title>

<!-- Theme style -->
<link rel="stylesheet" href="resources/css/bootstrap.css"
	type="text/css" />
<link rel="stylesheet" href="resources/css/style.css" type="text/css" />
<link rel="stylesheet" href="resources/css/swiper.css" type="text/css" />
<link rel="stylesheet" href="resources/css/dark.css" type="text/css" />
<link rel="stylesheet" href="resources/css/font-icons.css"
	type="text/css" />
<link rel="stylesheet" href="resources/css/animate.css" type="text/css" />
<link rel="stylesheet" href="resources/css/magnific-popup.css"
	type="text/css" />
<link rel="stylesheet" href="resources/css/theme.css">

<link rel="stylesheet" href="resources/css/custom.css" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- overlayScrollbars -->

<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">

<style>
.container-test {
	margin-left: 10px;
	margin-right: 10px;
}

.sb-msg>ul>li {
	line-height: 25px;
	padding-bottom: 5px !important;
}
</style>


</head>

<body >
	<header id="header" class="full-header">
		<div id="header-wrap">
			<div class="container-test">
				<div class="header-row justify-content-between">

					<!-- Logo
                    ============================================= -->
					<div id="logo" style="margin: 0;">
						<a class="standard-logo"><img src="resources/img/big-logo.png"
							style="height: 100px;"></a> <a class="retina-logo"><img
							src="images/logo.png"></a>


					</div>
					<!-- #logo end -->

					<div class="header-misc">


						<!-- Top Cart
                        ============================================= -->

						<div style="height: 100px; border-left: 1px solid #EEE;"></div>
						<div id="top-cart" class="header-misc-icon d-none d-sm-block">
							<button onclick="moveP1()"
								class="button button-border button-reveal button-small button-leaf text-right">
								<i class="icon-line-bag"></i>처음으로
							</button>
						</div>
						<!-- #top-cart end -->

					</div>




					<!-- Primary Navigation
                    ============================================= -->
					
					<dl id="head" class="row mb-0">
						<dt class="col-md-4 mb-0 pl-0 pr-0 ">응시자 :</dt>
						<dd class="col-md-5 mb-0 pl-0 pr-0 ">${t.sNo}</dd>
						<dt class="col-sm-4 mb-0 pl-0 pr-0 ">과목 명 :</dt>
						<dd class="col-sm-5 mb-0 pl-0 pr-0 ">${t.cName }</dd>
					</dl>
					<dl id="head" class="row mb-0">
						<dt class="col-md-5 mb-0 pl-0 pr-0">잔여시간 :</dt>
						<dd id="tTime" class="col-md-5 mb-0 pl-0 pr-0"></dd>
						<dt class="col-sm-5 mb-0 pl-0 pr-0">잔여 문제 :</dt>
						<dd id="t" class="col-sm-5 mb-0 pl-0 pr-0">${fn:length(tList)}/${fn:length(tList)}</dd>
					</dl>
					<input type="hidden" id="length" value="${fn:length(tList)}">

				</div>
			</div>
		</div>
		<div class="header-wrap-clone"></div>
	</header>
	<!-- #header end -->


	<input type='hidden' id='current_i' value='0' size='3'>
	<input type='hidden' id='current_j' value='0' size='3'>
	<input type='hidden' id='current_startNum' value='' size='3'>
	<input type='hidden' id='current_questionTotal' value='' size='3'>
	<input type='hidden' id='current_mode' value='' size='3'>
	<c:if test=""></c:if>
	<input type="hidden" id="time" value="${t.testTime }">
	
	<input type="hidden" id="openDate" value="${t.openDate }">

	<form id="fm"name='test_form' method='post' action="tInsert.do">
		<input type="hidden" name="tNo" value="${t.tNo }">
		<input type="hidden" name="sNo" value="${t.sNo }">
		<input type="hidden" name="pNo" value="${t.pNo }">
		<input type="hidden" name="cNo" value="${t.cNo }">
		<input type="hidden" id="rTime" name="rTime" value="">
		
		<input type='hidden' name='examUid' value='3779'> 
		<input	type='hidden' name='mode' value=''> 
		<input type='hidden' name='targetDiv' value=''> 
		<input type='hidden' name='ansTryList' value=''>
	</form>

	<section id="index_div" class="index_div">
		<div class="content-wrap">
			<div class="container clearfix">
				<div class="row gutter-40 col-mb-80 justify-content-center">
					<div class="card style-msg2"
						style="width: 650px; height: 600px; background-color: #EEE;">
						<div class="msgtitle">시험시 유의사항</div>
						<div class="sb-msg">
							<ul>
								<li>시험화면 안내 잔여시간 잔여시간이 표시됩니다. <br> 잔여시간이 모두 경과되면 답안지가
									자동으로 제출됩니다.
								</li>

								<li>답안제출 및 나가기 답안이 정상적으로 제출되었다는 메시지를 확인하면 <br> 모든 응시
									절차가 정상적으로 종료된 것입니다.
								</li>
								<li>본 시험의 시간은 50분이며, <br> 반드시 정해진 시간 내에 모든 답안을 제출 하신 후
									<br> <a class="button" style="cursor: auto;">저장</a> 버튼을 꼭
									눌러주세요.
								</li>
								<li>저장하지 않고 시험을 종료 하였을 경우 <br> <strong>그 시험은
										무효처리 되며 다시 보실수 없습니다.</strong>
								</li>
							</ul>
						</div>
						<div class="sb-msg text-center">

							<h2>
								준비가 완료된 분들은 아래의 <br>응시하기 버튼을 눌러주세요
							</h2>

						</div>
						<div class="text-center">
							<button onclick="start_test(1,'First', 1, ${fn:length(tList)})"
								class="button button-rounded button-reveal button-large button-dirtygreen button-dirtygreen text-right">
								<span>응시하기 </span> <i class="icon-circle-arrow-right"></i>
							</button>
						</div>
					</div>



				</div>

			</div>

		</div>
	</section>





	<table width='100%' align='center' cellspacing='0' cellpadding='0'
		style='margin: 0px' border='0'>
		<tr>
			<td align='left' valign='top'>
			 <c:forEach var="tl" items="${tList }" end="${fn:length(tList)/ 5 -1}"	varStatus="status">
				

					<div id='div0${status.index}'
						style='display: none; width: 100%; height: 100%'>
						<table width='100%' cellspacing='0' cellpadding='0'
							style='margin-top: 0px;' border='0'>

							<c:if test="${status.index == 0 }">


								<tr>
									<td width='50%' valign='top' class='ed'
										style='padding-top: 5px;'><c:forEach var="tl2"
											items="${tList }" end="2" varStatus="status2">

												<div id='ques_ox${status2.count }'
													style='margin: 0px; position: absolute; width: 55px; height: 45px;'>
													<img src='resources/img/test/blank.gif'
														style='width: 55px; height: 45px;' />
												</div>


												<table
													style='margin-bottom: 10px; width: 100%; height: 150px; border: 0'
													cellspacing='0' cellpadding='5'>


													<tr>
														<td
															style='padding-left: 8px; width: 25px; text-align: right'
															valign='top' class='count_qpass'>${tl2.qNo }.</td>
														<td style='width: 98%' valign='top'
															class='question01_qpass'>${tl2.qTitle }<br /> <span
															id='rate1' class='rightRate' style='display: none'>
																[정답률: %] </span>
														</td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count }1'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count }, 1)'>
																① ${tl2.qContent1 } </a></td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count }2'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count }, 2)'>
																② ${tl2.qContent2 } </a></td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count }3'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count }, 3)'>
																③ ${tl2.qContent3 } </a></td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count }4'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count }, 4)'>
																④ ${tl2.qContent4} </a></td>
													</tr>

												</table>

										</c:forEach></td>


									<td valign='top' class='ed'
										style='padding-top: 5px; border-left: none'><c:forEach
											var="tl2" items="${tList }" begin="3" end="4" varStatus="status2">
												<div id='ques_ox${status2.count+3 }'
													style='margin: 0px; position: absolute; width: 55px; height: 45px;'>
													<img src='resources/img/test/blank.gif'
														style='width: 55px; height: 45px;' />
												</div>


												<table
													style='margin-bottom: 10px; width: 100%; height: 150px; border: 0'
													cellspacing='0' cellpadding='5'>


													<tr>
														<td
															style='padding-left: 8px; width: 25px; text-align: right'
															valign='top' class='count_qpass'>${tl2.qNo }.</td>
														<td style='width: 98%' valign='top'
															class='question01_qpass'>${tl2.qTitle }<br /> <span
															id='rate1' class='rightRate' style='display: none'>
																[정답률: %] </span>
														</td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count+3 }1'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+3 }, 1)'>
																① ${tl2.qContent1 } </a></td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count+3 }2'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+3 }, 2)'>
																② ${tl2.qContent2 } </a></td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count+3 }3'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+3 }, 3)'>
																③ ${tl2.qContent3 } </a></td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count+3 }4'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+3 }, 4)'>
																④ ${tl2.qContent4} </a></td>
													</tr>

												</table>
										</c:forEach></td>



								</tr>


							</c:if>
							<c:if test="${status.index eq 1 }">


								<tr>


									<td width='50%' valign='top' class='ed'
										style='padding-top: 5px;'><c:forEach var="tl2"
											items="${tList }" begin="5" end="7" varStatus="status2">

												<div id='ques_ox${status2.count+5 }'
													style='margin: 0px; position: absolute; width: 55px; height: 45px;'>
													<img src='resources/img/test/blank.gif'
														style='width: 55px; height: 45px;' />
												</div>


												<table
													style='margin-bottom: 10px; width: 100%; height: 150px; border: 0'
													cellspacing='0' cellpadding='5'>


													<tr>
														<td
															style='padding-left: 8px; width: 25px; text-align: right'
															valign='top' class='count_qpass'>${tl2.qNo }.</td>
														<td style='width: 98%' valign='top'
															class='question01_qpass'>${tl2.qTitle }<br /> <span
															id='rate1' class='rightRate' style='display: none'>
																[정답률: %] </span>
														</td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count+5 }1'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+5 }, 1)'>
																① ${tl2.qContent1 } </a></td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count+5 }2'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+5 }, 2)'>
																② ${tl2.qContent2 } </a></td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count +5}3'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+5 }, 3)'>
																③ ${tl2.qContent3 } </a></td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count +5}4'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+5 }, 4)'>
																④ ${tl2.qContent4} </a></td>
													</tr>

												</table>

										</c:forEach></td>


									<td valign='top' class='ed'
										style='padding-top: 5px; border-left: none'><c:forEach
											var="tl2" items="${tList }" begin="8" end="9"  varStatus="status2">
												<div id='ques_ox${status2.count+8 }'
													style='margin: 0px; position: absolute; width: 55px; height: 45px;'>
													<img src='resources/img/test/blank.gif'
														style='width: 55px; height: 45px;' />
												</div>


												<table
													style='margin-bottom: 10px; width: 100%; height: 150px; border: 0'
													cellspacing='0' cellpadding='5'>


													<tr>
														<td
															style='padding-left: 8px; width: 25px; text-align: right'
															valign='top' class='count_qpass'>${tl2.qNo }.</td>
														<td style='width: 98%' valign='top'
															class='question01_qpass'>${tl2.qTitle }<br /> <span
															id='rate1' class='rightRate' style='display: none'>
																[정답률: %] </span>
														</td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count +8}1'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+8 }, 1)'>
																① ${tl2.qContent1 } </a></td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count+8 }2'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+8 }, 2)'>
																② ${tl2.qContent2 } </a></td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count+8 }3'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+8 }, 3)'>
																③ ${tl2.qContent3 } </a></td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count+8 }4'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+8 }, 4)'>
																④ ${tl2.qContent4} </a></td>
													</tr>

												</table>
										</c:forEach></td>



								</tr>


							</c:if>

							<c:if test="${status.index eq 2 }">


								<tr>


									<td width='50%' valign='top' class='ed'
										style='padding-top: 5px;'><c:forEach var="tl2"
											items="${tList }" begin="10" end="12" varStatus="status2">

												<div id='ques_ox${status2.count+10 }'
													style='margin: 0px; position: absolute; width: 55px; height: 45px;'>
													<img src='resources/img/test/blank.gif'
														style='width: 55px; height: 45px;' />
												</div>


												<table
													style='margin-bottom: 10px; width: 100%; height: 150px; border: 0'
													cellspacing='0' cellpadding='5'>


													<tr>
														<td
															style='padding-left: 8px; width: 25px; text-align: right'
															valign='top' class='count_qpass'>${tl2.qNo }.</td>
														<td style='width: 98%' valign='top'
															class='question01_qpass'>${tl2.qTitle }<br /> <span
															id='rate1' class='rightRate' style='display: none'>
																[정답률: %] </span>
														</td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count+10 }1'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+10 }, 1)'>
																① ${tl2.qContent1 } </a></td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count+10 }2'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+10 }, 2)'>
																② ${tl2.qContent2 } </a></td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count+10 }3'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+10 }, 3)'>
																③ ${tl2.qContent3 } </a></td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count+10 }4'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+10 }, 4)'>
																④ ${tl2.qContent4} </a></td>
													</tr>

												</table>

										</c:forEach></td>


									<td valign='top' class='ed'
										style='padding-top: 5px; border-left: none'><c:forEach
											var="tl2" items="${tList }" begin="13" end="14" varStatus="status2">
												<div id='ques_ox${status2.count+13 }'
													style='margin: 0px; position: absolute; width: 55px; height: 45px;'>
													<img src='resources/img/test/blank.gif'
														style='width: 55px; height: 45px;' />
												</div>


												<table
													style='margin-bottom: 10px; width: 100%; height: 150px; border: 0'
													cellspacing='0' cellpadding='5'>


													<tr>
														<td
															style='padding-left: 8px; width: 25px; text-align: right'
															valign='top' class='count_qpass'>${tl2.qNo }.</td>
														<td style='width: 98%' valign='top'
															class='question01_qpass'>${tl2.qTitle }<br /> <span
															id='rate1' class='rightRate' style='display: none'>
																[정답률: %] </span>
														</td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count+13 }1'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+13 }, 1)'>
																① ${tl2.qContent1 } </a></td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count+13 }2'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+13 }, 2)'>
																② ${tl2.qContent2 } </a></td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count+13 }3'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+13 }, 3)'>
																③ ${tl2.qContent3 } </a></td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count+13 }4'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+13 }, 4)'>
																④ ${tl2.qContent4} </a></td>
													</tr>

												</table>
										</c:forEach></td>



								</tr>


							</c:if>
							<c:if test="${status.index eq 3 }">


								<tr>


									<td width='50%' valign='top' class='ed'
										style='padding-top: 5px;'><c:forEach var="tl2"
											items="${tList }" begin ="15" end="17" varStatus="status2">

												<div id='ques_ox${status2.count+15 }'
													style='margin: 0px; position: absolute; width: 55px; height: 45px;'>
													<img src='resources/img/test/blank.gif'
														style='width: 55px; height: 45px;' />
												</div>


												<table
													style='margin-bottom: 10px; width: 100%; height: 150px; border: 0'
													cellspacing='0' cellpadding='5'>


													<tr>
														<td
															style='padding-left: 8px; width: 25px; text-align: right'
															valign='top' class='count_qpass'>${tl2.qNo }.</td>
														<td style='width: 98%' valign='top'
															class='question01_qpass'>${tl2.qTitle }<br /> <span
															id='rate1' class='rightRate' style='display: none'>
																[정답률: %] </span>
														</td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count+15 }1'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+15 }, 1)'>
																① ${tl2.qContent1 } </a></td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count+15 }2'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+15 }, 2)'>
																② ${tl2.qContent2 } </a></td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count+15 }3'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+15 }, 3)'>
																③ ${tl2.qContent3 } </a></td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count+15 }4'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+15 }, 4)'>
																④ ${tl2.qContent4} </a></td>
													</tr>

												</table>

										</c:forEach></td>


									<td valign='top' class='ed'
										style='padding-top: 5px; border-left: none'><c:forEach
											var="tl2" items="${tList }" begin="18" end="19" varStatus="status2">
												<div id='ques_ox${status2.count+18 }'
													style='margin: 0px; position: absolute; width: 55px; height: 45px;'>
													<img src='resources/img/test/blank.gif'
														style='width: 55px; height: 45px;' />
												</div>


												<table
													style='margin-bottom: 10px; width: 100%; height: 150px; border: 0'
													cellspacing='0' cellpadding='5'>


													<tr>
														<td
															style='padding-left: 8px; width: 25px; text-align: right'
															valign='top' class='count_qpass'>${tl2.qNo }.</td>
														<td style='width: 98%' valign='top'
															class='question01_qpass'>${tl2.qTitle }<br /> <span
															id='rate1' class='rightRate' style='display: none'>
																[정답률: %] </span>
														</td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count+18 }1'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+18 }, 1)'>
																① ${tl2.qContent1 } </a></td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count+18 }2'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+18 }, 2)'>
																② ${tl2.qContent2 } </a></td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count+18 }3'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+18 }, 3)'>
																③ ${tl2.qContent3 } </a></td>
													</tr>
													<tr>
														<td></td>
														<td id='quesitem${status2.count+18 }4'
															class='question02_qpass'><a
															href='javascript:answer_check(${status2.count+18 }, 4)'>
																④ ${tl2.qContent4} </a></td>
													</tr>

												</table>
										</c:forEach></td>



								</tr>


							</c:if>

						</table>
						<table width='100%' height='50' cellspacing='0' cellpadding='0'
							border='0'>
							<tr>
								<td width='50%' align='right' style='padding-right: 12px;'>
									<input type='button' value='이전'
									onclick="previous_div('1과목', 0, ${status.index})"
									class='btn01_qpass'>
								</td>
								<td style='padding-left: 10px;'><input type='button'
									value='다음' onclick="next_div('1과목', 0, ${status.index})"
									class='btn01_qpass'></td>
							</tr>
						</table>
					</div>
				</c:forEach></td>
			<td style='padding-left: 4px; border: none; width: 130px;'
				valign='top'>
				<!-- 답안지 출력 -->

				<div id="ans0"
					style="display: none; width: 100%; height: 100%; padding-left: 0px;">
					<table width="100%" height="30" align="center" cellspacing="0"
						cellpadding="2">
						<tbody>
							<tr>
								<td align="center"
									style="color: green; font-weight: bold; border: solid 1px #ccc; border-bottom: none">
									1과목</td>
							</tr>
						</tbody>
					</table>
					<c:forEach var="tl" items="${tList }" varStatus="status">
						<!-- 문제지 출력 -->
					<input type='hidden' id='ans_try${status.count }' size='20'
						value=''>
				
						<table style="width: 100%; text-align: center;" cellspacing="0"
							cellpadding="0" border="0px">
							<tbody>
								<tr style="height: 25px;">
									<td id="ans_num${status.count }"
										style="font-weight: bold; color: #008000; text-align: center;"
										class="td_border_common_qpass"><a
										href="javascript:move2question(0)" style="color: #008000;">${status.count }</a>
									</td>
									<td id="ans_td${status.count }1" width="24px" align="center"
										valign="middle" class="td_border_common_qpass"><a
										href="javascript:answer_check(${status.count }, 1)"> <img
											id="answer${status.count }1"
											src="resources/img/test/num1.gif">
									</a></td>
									<td id="ans_td${status.count }2" width="24px" align="center"
										valign="middle" class="td_border_common_qpass"><a
										href="javascript:answer_check(${status.count }, 2)"> <img
											id="answer${status.count }2"
											src="resources/img/test/num2.gif">
									</a></td>
									<td id="ans_td${status.count }3" width="24px" align="center"
										valign="middle" class="td_border_common_qpass"><a
										href="javascript:answer_check(${status.count }, 3)"> <img
											id="answer${status.count }3"
											src="resources/img/test/num3.gif">
									</a></td>
									<td id="ans_td${status.count }4" width="24px" align="center"
										valign="middle" class="td_border_right_qpass"><a
										href="javascript:answer_check(${status.count }, 4)"> <img
											id="answer${status.count }4"
											src="resources/img/test/num4.gif">
									</a></td>
								</tr>
							</tbody>
						</table>
					</c:forEach>
					<p id="btnFinish0" align="center"
						style="display: block; margin: 10px 0px 0px 0px;">
						<input type="button" value="답안제출" onclick="finish_exam(0);"
							class="btn01_qpass" style="width: 70px;">
					</p>
					<p id="resultDisplay0" align="center"
						style="margin: 10px 0px 0px 0px;"></p>
				</div>

			</td>
		</tr>
	</table>

	<form name="eachForm" method="post"	action="qpass_takeExamEach.php?examUid=679">
		<input type="hidden" name="subjectNum"> 
		<input type="hidden"	name="mode"> 
		<input type="hidden" name="initStartNum">
		<input type="hidden" name="initEachTotal">
	</form>


	<!-- JavaScripts
	============================================= -->
	<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>


	<script type="text/javascript" language="javascript">var max_five = Array(10);</script>
	<script>
     max_five[0] = '${test-(test%1)%1 -1}';</script>
	<script>max_five[1] = '${test-(test%1)%1-1}';</script>
	<script>max_five[2] = '${test-(test%1)%1-1}';</script>
	<script>max_five[3] = '${test-(test%1)%1-1}';</script>
	<script>max_five[4] = '${test-(test%1)%1-1}';</script>
	<script>
	
	 

	 
	
	</script>
	
	
	
	<script>
	

	 $(window).on('beforeunload', function (event) {
			
		 
		  event.returnValue = '';
		  
		  return "";
		 
        		 
     });
	
	
	
		$(document).ready(function(){
			
			timer();
			
			function noRefresh(event){
			    if (event.keyCode == 116)  {
			        alert("새로고침을 할 수 없습니다11.");
			        
			        console.log("??")
			        event.keyCode = 2;
			        return false;
			    } 
			 
			}
			document.onkeydown = noRefresh;
		})
		
	
	
		

	
		
		function timer(){
			var t = $('#time').val();
			var d =$('#openDate').val();
			var time =Number(t);
			
			 //opendate date형으로 변경
			 
			 console.log(openDate);
			 
			 var oYear = d.substring(0,4);
			 var oMonth = d.substring(5,7);
			 var oDate = d.substring(8,10);
			 var oHours = d.substring(11,13);
			 var oMinutes = d.substring(14,16);
			 
			 console.log(oYear);
			 console.log(oMonth);
			 console.log(oDate);
			 console.log(oHours);
			 console.log(oMinutes);
			 
		 	 var openDatetoDate = new Date(Number(oYear), Number(oMonth)-1, Number(oDate),Number(oHours),Number(oMinutes));
				 
			 var now = new Date();
				//현재시간에 분까지 담음
			 var t = new Date(now.getFullYear(), now.getMonth(), now.getDate(),now.getHours(),now.getMinutes()); 
			 var today =t.getTime();

			 var cd = new Date(openDatetoDate); //시험 시간
			 var openDate = cd.getTime();
			 
			 var ld = new Date(openDatetoDate);
			 var limitTime =ld.setMinutes(cd.getMinutes() +time);  //마감 시간
			
			
			
			
			var countTime =(limitTime-today)/1000;
			 
			 
			console.log(time);
			
			console.log(limitTime)
			console.log(today)
			console.log(openDate)
			
			
			console.log(countTime)
			
			var min="";
			var sec="";
			
			var timer =setInterval(function(){
				min =parseInt(countTime/60)
				sec =countTime%60
				
				var count =min+"분"+sec+"초";
				
				$('#tTime').empty();
				
				$('#tTime').append(count) 
				countTime--;
				
				var rTime = countTime
				$('#rTime').val(countTime);
				
				
				
				if(countTime==100){
					alert("시험 종료 5분전 입니다. 답안 제출을 꼭 해주세요!")
					
				}else if(countTime<0){
					alert("시험시간이 모두 경과되었습니다. 시험을 종료합니다.")
					clearInterval(timer);
	                var params = $('#fm').serialize();
	                $.ajax({
	                		
	                	url:"tInsert.do",
	                	data :params,
	                	success : function(data){
	                		if(data="success"){
	                	
		                		window.close();
		                	
	                		}
	                	}
	                })
					
				}
				
				
				
			},1000)

		}
		

        
        /* 첫화면으로 이동*/
        function moveP1() {
           
           var currentI = $('#current_i').val();
           var currentJ = $('#current_j').val();
           var currentDiv = $('#div'+currentI+currentJ);

           currentDiv.css("display","none");
           $('#index_div').css("display","block"); 

           var currentAns = $('#ans' + currentI);
           currentAns.css("display", "none");

           var indexDiv = $('#index_div');
           indexDiv.css("visibility",'visible');
       }


            /* 인덱스에서의 선택 처리*/
            function start_test(i, mode, startNum, eachTotal) {

        
                var f = document.test_form;
                var index_div = $('#index_div');


                targetDiv = i - 1;
                index_div.css('display','none') ;
                f.mode.value= mode;
        
                
                $('#current_mode').val(mode)
                $('#current_startNum').val(startNum) ;
                $('#current_questionTotal').val(eachTotal);

                var finishBtn = $('#btnFinish' + targetDiv);
                var resultDisplay = $('#resultDisplay' + targetDiv);
                resultDisplay.innerHTML = "";

                if (mode == "first") { /* 응시하기*/
                }

                replace_div(targetDiv, 0);
                index_div.css('visibility','hidden');
            }

  

        


        /* 해당 구역으로 이동*/
        function replace_div(divNum, fiveNum) {
            /* 현재 블럭 감추기*/
            var currentI = $('#current_i').val();
            var currentJ = $('#current_j').val();
            var currentDiv = $('#div' + currentI + currentJ);
            console.log(divNum)
            console.log(fiveNum)

            currentDiv.css('display',"none") 

            /* 대상 블럭 보이기*/
            var targetDiv =$("#div" + divNum + fiveNum);
            targetDiv.css('display',"block") 
            // alert(fiveNum); 
            // return;

            /* 해당 답안지 변경*/
            var targetAns = $("#ans" + divNum);
            targetAns.css('display',"block") 
          

             $('#current_i').val(divNum);
             $('#current_j').val(fiveNum); 
        }

    


    	// 잔여문제 확인용
        var check =""
       	var length =$('#length').val()
        var num = Number(length);
       
        function answer_check(question_num, ans_num) {
            var startNum = $('#current_startNum').val();
            var eachTotal = $('#current_questionTotal').val();
            var endNum = Number(startNum) + Number(eachTotal) - 1;
        	
            var currentMode = $('#current_mode').val();
           

            var ans = $('#answer' + question_num + ans_num);
            var ques = $('#quesitem' + question_num + ans_num);

            /* 먼저 기존 칠한게 있으면 지우기*/
            for (i = 1; i <= 4; i++) {
                $('#answer' + question_num + i).attr("src", "resources/img/test/num" + i + ".gif"); 
                $('#quesitem' + question_num + i).css('backgroundImage','');
            }

            var ansIndex = question_num - $('#current_startNum').val();
            move2question(ansIndex);
            ques.css('backgroundImage',"url('resources/img/test/red_v38.gif')"); 
            ques.css('backgroundRepeat',"no-repeat") ;
            ans.attr('src',"resources/img/test/num" + ans_num + "_gray.gif") ;

            /* 폼에 값 저장하기*/
            $('#ans_try' + question_num).val(ans_num);
            
            
            
            var f = document.test_form;

            
                var tryList = "";
                var checkList="";
                
                for (var i = startNum; i <= endNum; i++) {
                    ans_try =$('#ans_try' + i).val();
                    if (ans_try == "") { 
                    	ans_try = " ";  // 정답률 추출을 위해 한자리수로 맞춤.
                   	}else{
                   		checkList =	checkList + ans_try+","
                   	}
                    
                    
                    
                    tryList = tryList + ans_try + ",";
                    
                }
                f.ansTryList.value = tryList;
            
          
            // 잔여문제 확인용
            var arr = checkList.split(",");
            console.log(arr.length)    
                
                
            var test = $('#t')
            var check= num-arr.length+1;    
            
            test.empty();
            test.append(check+"/"+num);
            
            
            
            
            
        }

        function previous_div(courseName, divIndex, fiveIndex) {
            if (fiveIndex == 0) {
                alert("여기가 " + courseName + " 처음입니다.\t");
                return;
            }
            nextFive = fiveIndex - 1;
            replace_div(divIndex, nextFive);
        }

        function next_div(courseName, divIndex, fiveIndex) {
            if (fiveIndex == max_five[divIndex]) {
                alert("여기가 " + courseName + " 마지막입니다.\t");
                return;
            }
            nextFive = fiveIndex +1;
            replace_div(divIndex, nextFive);
        }

        function move2question(ansIndex) {
            var divNum = $('#current_i').val();
            var fiveNum = Math.floor(ansIndex / 5); //1page에 5개씩 뽑기 때문에 5로 나눔
            replace_div(divNum, fiveNum);
  
        }

        function get_notTriedNum(startNum, endNum) {
            var ans_try;
            for (var i = startNum; i <= endNum; i++) {
                ans_try = $('#ans_try' + i).val();
                if (ans_try == "") return i;
            }
            return -1;
        }

        function finish_exam(divIndex) {
            /* 안푼 문제가 있는지 체크*/
            var startNum = $('#current_startNum').val();
            var eachTotal = $('#current_questionTotal').val();
            var endNum = Number(startNum) + Number(eachTotal) - 1;
          

            console.log('zz')

            var notTriedNum = get_notTriedNum(startNum, endNum);
            if (notTriedNum != -1) {
                var ansIndex = notTriedNum - Number(startNum);
                if (!confirm("아직 풀지 않은 문제가 있습니다.\n\n이대로 채점하시려면 [확인]을 선택하시고,\n\n모두 푸시려면 [취소]를 선택하신 후\n\n답안란의 풀지 않은 문제번호를 선택하시면 \n\n해당 문제로 이동합니다.")) {
                    move2question(ansIndex);
                    return;
                }
            }

            var f = document.test_form;
            nextSameIndex = divIndex + 1;

            
                var tryList = "";
                for (var i = startNum; i <= endNum; i++) {
                    ans_try =$('#ans_try' + i).val();
                    if (ans_try == "") { ans_try = " "; } // 정답률 추출을 위해 한자리수로 맞춤.
                    tryList = tryList + ans_try + ",";
                }
                f.ansTryList.value = tryList;
                f.targetDiv.value = $('#current_i').val();
                
                
                var params = $('#fm').serialize();
                $.ajax({
                		
                	url:"tInsert.do",
                	data :params,
                	success : function(data){
                		if(data="success"){
                		var check =confirm("정말 종료하시겠습니까?");
                		
	                		if(check == true){
	
	                		window.close();
	                		}else{
	                			return false;
	                		}
                		}
                	}
                })
                
            
        }
    </script>

</body>
</html>