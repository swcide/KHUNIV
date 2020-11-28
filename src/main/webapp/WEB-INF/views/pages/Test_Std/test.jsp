<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시험 응시 페이지</title>

<!-- Theme style -->
	<link rel="stylesheet" href="resources/css/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="resources/css/style.css" type="text/css" />
	<link rel="stylesheet" href="resources/css/swiper.css" type="text/css" />
	<link rel="stylesheet" href="resources/css/dark.css" type="text/css" />
	<link rel="stylesheet" href="resources/css/font-icons.css" type="text/css" />
	<link rel="stylesheet" href="resources/css/animate.css" type="text/css" />
    <link rel="stylesheet" href="resources/css/magnific-popup.css" type="text/css" />
    <link rel="stylesheet" href="resources/css/theme.css">

	<link rel="stylesheet" href="resources/css/custom.css" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
 <!-- overlayScrollbars -->

<!-- Google Font: Source Sans Pro -->
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

<style>
    .container-test{
        margin-left: 10px;
        margin-right: 10px;
    }
    .sb-msg >ul >li {
        line-height: 25px;
        padding-bottom: 5px !important;
    }
</style>


</head>

<body>
    <header id="header" class="full-header">
        <div id="header-wrap">
            <div class="container-test">
                <div class="header-row justify-content-between">

                    <!-- Logo
                    ============================================= -->
                    <div id="logo" style="margin:0; ">
                    	<a class="standard-logo" ><img src="resources/img/big-logo.png" style="height: 100px;"></a>
						<a class="retina-logo"><img src="images/logo.png" ></a>

                    
                    </div><!-- #logo end -->

                    <div class="header-misc">

                    
                        <!-- Top Cart
                        ============================================= -->
                            
                        <div style="height: 100px;  border-left: 1px solid #EEE;">                           
                        </div>
                        <div id="top-cart" class="header-misc-icon d-none d-sm-block">            
                            <button onclick="moveP1()" class="button button-border button-reveal button-small button-leaf text-right"><i class="icon-line-bag"></i>처음으로 </button>
                        </div><!-- #top-cart end -->

                    </div>
                

            

                    <!-- Primary Navigation
                    ============================================= -->
                 
                        <dl id="head" class="row mb-0">
                            <dt class="col-md-4 mb-0 pl-0 pr-0 " >응시자 :</dt>
                            <dd class="col-md-5 mb-0 pl-0 pr-0 ">김진태</dd>
                            <dt class="col-sm-4 mb-0 pl-0 pr-0 ">과목 명 :</dt>
                            <dd class="col-sm-5 mb-0 pl-0 pr-0 ">생활영어</dd>
                        </dl>
                        <dl  id="head" class="row mb-0">
                            <dt class="col-md-5 mb-0 pl-0 pr-0" >잔여시간 :</dt>
                            <dd class="col-md-5 mb-0 pl-0 pr-0">20:20</dd>
                            <dt class="col-sm-5 mb-0 pl-0 pr-0">잔여 문제 :</dt>
                            <dd class="col-sm-5 mb-0 pl-0 pr-0">19/20</dd>
                        </dl>

                </div>
            </div>
        </div>
        <div class="header-wrap-clone"></div>
    </header><!-- #header end -->
    
    
    <input type='hidden' id='current_i' value='0' size='3'>
    <input type='hidden' id='current_j' value='0' size='3'>
    <input type='hidden' id='current_startNum' value='' size='3'>
    <input type='hidden' id='current_questionTotal' value='' size='3'>
    <input type='hidden' id='current_mode' value='' size='3'>

    <form name='test_form' method='post' action='/q/qpass_takeExam.php' style='margin:0'>
        <input type='hidden' name='examUid' value='3779'>
        <input type='hidden' name='mode' value=''>
        <input type='hidden' name='targetDiv' value=''>
        <input type='hidden' name='ansTryList' value=''>
    </form>
    
    <section id="index_div" class="index_div">
        <div class="content-wrap">
            <div class="container clearfix">
                <div class="row gutter-40 col-mb-80 justify-content-center">
                    <div class="card style-msg2" style="width: 650px; height: 600px; background-color: #EEE;">
                        <div class="msgtitle">시험시 유의사항</div>
                        <div class="sb-msg">
                            <ul>
                                <li> 시험화면 안내 잔여시간 잔여시간이 표시됩니다. <br>
                                    잔여시간이 모두 경과되면 답안지가 자동으로 제출됩니다.
                                </li>
                                
                                <li> 답안제출 및 나가기 답안이 정상적으로 제출되었다는 메시지를 확인하면 <br>
                                     모든 응시 절차가 정상적으로 종료된 것입니다.
                                </li>
                                <li> 본 시험의 시간은 50분이며, <br>
                                     반드시 정해진 시간 내에 모든 답안을 제출 하신 후 <br>
                                    <a class="button" style="cursor:auto;">저장</a> 버튼을 꼭 눌러주세요.
                                </li>
                                <li> 저장하지 않고 시험을 종료 하였을 경우 <br>
                                     <strong>그 시험은 무효처리 되며 다시 보실수 없습니다.</strong>                                    
                                </li>
                            </ul>
                        </div>
                        <div class="sb-msg text-center">

                            <h2>준비가 완료된 분들은 아래의 <br>응시하기 버튼을 눌러주세요</h2>

                        </div>
                        <div class="text-center">
                            <button  onclick="start_test(1,'First', 1, 20)" class="button button-rounded button-reveal button-large button-dirtygreen button-dirtygreen text-right"><span>응시하기 </span> <i class="icon-circle-arrow-right"></i></button>
                        </div>
                    </div>
                    
                    

                </div>

            </div>

        </div>
    </section>

   
  
    

    <table width='100%' align='center' cellspacing='0' cellpadding='0' style='margin:0px' border='0'>
        <tr>
            <td align='left' valign='top'>
                <!-- 문제지 출력 -->
                <input type='hidden' id='ans_try1' size='20' value=''>
                <input type='hidden' id='ans_trySame1' size='3' value=''>
                <input type='hidden' id='ans_real1' size='2' value='4'>


                <div id='div00' style='display:none; width:100%; height:100%'>
                    <table width='100%' cellspacing='0' cellpadding='0' style='margin-top:0px;'
                        border='0'>
                        <tr>
                            <td width='50%' valign='top' class='ed' style='padding-top:5px;'>
                                <div id='ques_ox1'  style='margin:0px; position:absolute; width:55px; height:45px;'>
                               		 <img src='resources/img/test/blank.gif' style='width:55px; height:45px;' />
                                </div>
                                <table style='margin-bottom:10px; width:100%; height:150px; border:0' cellspacing='0' cellpadding='5'>
                                    <tr>
                                        <td style='padding-left:8px; width:25px; text-align:right'     valign='top' class='count_qpass'>
                                       	 1.
                                        </td>
                                        <td style='width:98%' valign='top' class='question01_qpass'>
                                        	뷰(View)의 설명으로 거리가 먼 것은? <br />
                                            <span id='rate1' class='rightRate' style='display:none'>
                                            [정답률: %]
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem11' class='question02_qpass'><a
                                                href='javascript:answer_check(1, 1)'>① SQL에서 뷰를 생성할 때는
                                                CREATE문을 사용한다.</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem12' class='question02_qpass'><a
                                                href='javascript:answer_check(1, 2)'>② 뷰를 통하여 데이터를 접근하게
                                                하면 뷰에 나타나지 않은 데이터를 안전하게 보호할 수 있다.</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem13' class='question02_qpass'><a
                                                href='javascript:answer_check(1, 3)'>③ 필요한 데이터만 뷰로 정의해서
                                                처리할 수 있기 때문에 관리가 용이해진다.</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem14' class='question02_qpass'><a
                                                href='javascript:answer_check(1, 4)'>④ 삽입, 삭제 연산에 아무런
                                                제한이 없으므로 사용자가 뷰를 다루기가 편하다.</a></td>
                                    </tr>
                                </table>
                           	</td>
                        </tr>
                    </table>
                    <table width='100%' height='50' cellspacing='0' cellpadding='0' border='0'>
                        <tr>
                            <td width='50%' align='right' style='padding-right:12px;'>
                            	<input type='button' value='이전' onclick="previous_div('1과목', 0, 0)" class='btn01_qpass'>
                            </td>
                            <td style='padding-left:10px;'>
  	                          <input type='button' value='다음' onclick="next_div('1과목', 0, 0)" class='btn01_qpass'>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id='div01' style='display:none; width:100%; height:100%'>
                    <table width='100%' cellspacing='0' cellpadding='0' style='margin-top:0px;'
                        border='0'>
                        <tr>
                            <td width='50%' valign='top' class='ed' style='padding-top:5px;'>
                                <div id='ques_ox6'
                                    style='margin:0px; position:absolute; width:55px; height:45px;'><img
                                        src='./img/blank.gif' style='width:55px; height:45px;' /></div>
                                <table style='margin-bottom:10px; width:100%; height:150px; border:0'
                                    cellspacing='0' cellpadding='5'>
                                    <tr>
                                        <td style='padding-left:8px; width:25px; text-align:right'
                                            valign='top' class='count_qpass'>6.</td>
                                        <td style='width:98%' valign='top' class='question01_qpass'>물리적
                                            데이터베이스 설계시 고려사항으로 적당하지 않은 것은? <br /><span id='rate6'
                                                class='rightRate' style='display:none'>[정답률: %]</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem61' class='question02_qpass'><a
                                                href='javascript:answer_check(6, 1)'>① 스키마의 모델링 작업과 요구되는
                                                트랜잭션 파악</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem62' class='question02_qpass'><a
                                                href='javascript:answer_check(6, 2)'>② 파일과 구조 저장을 위한
                                                최소한의 효율적 공간</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem63' class='question02_qpass'><a
                                                href='javascript:answer_check(6, 3)'>③ 트랜잭션의 실행을 위한 시스템내
                                                입력부터 결과까지의 소요 시간</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem64' class='question02_qpass'><a
                                                href='javascript:answer_check(6, 4)'>④ 단위시간당 처리 가능한 평균
                                                트랜잭션 수</a></td>
                                    </tr>
                                </table>
                                <div id='ques_ox7'
                                    style='margin:0px; position:absolute; width:55px; height:45px;'><img
                                        src='./img/blank.gif' style='width:55px; height:45px;' /></div>
                                <table style='margin-bottom:10px; width:100%; height:150px; border:0'
                                    cellspacing='0' cellpadding='5'>
                                    <tr>
                                        <td style='padding-left:8px; width:25px; text-align:right'
                                            valign='top' class='count_qpass'>7.</td>
                                        <td style='width:98%' valign='top' class='question01_qpass'>릴레이션
                                            R의 두 애트리뷰트 A와 B 사이에 함수적 종속성 A→B가 성립할 때, 그 의미를 가장 정확히 설명한 것은?
                                            <br /><span id='rate7' class='rightRate'
                                                style='display:none'>[정답률: %]</span></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem71' class='question02_qpass'><a
                                                href='javascript:answer_check(7, 1)'>① 애트리뷰트 A는 릴레이션 R의
                                                후보키이다.</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem72' class='question02_qpass'><a
                                                href='javascript:answer_check(7, 2)'>② 애트리뷰트 A의 값 각각에 대해
                                                애트리뷰트 B의 값이 반드시 하나만 연관된다.</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem73' class='question02_qpass'><a
                                                href='javascript:answer_check(7, 3)'>③ 애트리뷰트 B는 애트리뷰트
                                                A로부터 어떤 함수를 적용해서 구해지는 값이다.</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem74' class='question02_qpass'><a
                                                href='javascript:answer_check(7, 4)'>④ 애트리뷰트 A는 애트리뷰트
                                                B로부터 어떤 함수를 적용해서 구해지는 값이다.</a></td>
                                    </tr>
                                </table>
                                <div id='ques_ox8'
                                    style='margin:0px; position:absolute; width:55px; height:45px;'><img
                                        src='./img/blank.gif' style='width:55px; height:45px;' /></div>
                                <table style='margin-bottom:10px; width:100%; height:150px; border:0'
                                    cellspacing='0' cellpadding='5'>
                                    <tr>
                                        <td style='padding-left:8px; width:25px; text-align:right'
                                            valign='top' class='count_qpass'>8.</td>
                                        <td style='width:98%' valign='top' class='question01_qpass'>개념
                                            스키마(Conceptual Schema)의 설명으로 가장 적합한 것은? <br /><span
                                                id='rate8' class='rightRate' style='display:none'>[정답률:
                                                100%]</span></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem81' class='question02_qpass'><a
                                                href='javascript:answer_check(8, 1)'>① 데이터베이스의 전체적인 논리적
                                                설계를 의미하는 것으로 데이터 객체, 성질, 관계, 제약조건에 관한 것이다.</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem82' class='question02_qpass'><a
                                                href='javascript:answer_check(8, 2)'>② 데이터집단과 데이터를 관리하는
                                                프로그램의 집합체를 말한다.</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem83' class='question02_qpass'><a
                                                href='javascript:answer_check(8, 3)'>③ 데이터베이스에서 정보를 나타내는
                                                논리적 단위로 파일시스템의 레코드에 해당하는 개념으로 사용한다.</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem84' class='question02_qpass'><a
                                                href='javascript:answer_check(8, 4)'>④ 물리적 저장 장치의 관점에서 본
                                                전체 데이터베이스의 명세를 말한다.</a></td>
                                    </tr>
                                </table>
                            </td>
                            <td valign='top' class='ed' style='padding-top:5px; border-left:none'>
                                <div id='ques_ox9'
                                    style='margin:0px; position:absolute; width:55px; height:45px;'><img
                                        src='./img/blank.gif' style='width:55px; height:45px;' /></div>
                                <table style='margin-bottom:10px; width:100%; height:150px; border:0'
                                    cellspacing='0' cellpadding='5'>
                                    <tr>
                                        <td style='padding-left:8px; width:25px; text-align:right'
                                            valign='top' class='count_qpass'>9.</td>
                                        <td style='width:98%' valign='top' class='question01_qpass'>다음
                                            자료구조 중 성격이 다른 하나는? <br /><span id='rate9' class='rightRate'
                                                style='display:none'>[정답률: %]</span></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem91' class='question02_qpass'><a
                                                href='javascript:answer_check(9, 1)'>① STACK</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem92' class='question02_qpass'><a
                                                href='javascript:answer_check(9, 2)'>② QUEUE</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem93' class='question02_qpass'><a
                                                href='javascript:answer_check(9, 3)'>③ DEQUE</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem94' class='question02_qpass'><a
                                                href='javascript:answer_check(9, 4)'>④ TREE</a></td>
                                    </tr>
                                </table>
                                <div id='ques_ox10'
                                    style='margin:0px; position:absolute; width:55px; height:45px;'><img
                                        src='./img/blank.gif' style='width:55px; height:45px;' /></div>
                                <table style='margin-bottom:10px; width:100%; height:150px; border:0'
                                    cellspacing='0' cellpadding='5'>
                                    <tr>
                                        <td style='padding-left:8px; width:25px; text-align:right'
                                            valign='top' class='count_qpass'>10.</td>
                                        <td style='width:98%' valign='top' class='question01_qpass'>트리를
                                            표현할 때 가장 적합한 자료구조는? <br /><span id='rate10'
                                                class='rightRate' style='display:none'>[정답률: %]</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem101' class='question02_qpass'><a
                                                href='javascript:answer_check(10, 1)'>① Stack</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem102' class='question02_qpass'><a
                                                href='javascript:answer_check(10, 2)'>② Queue</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem103' class='question02_qpass'><a
                                                href='javascript:answer_check(10, 3)'>③ Linked List</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem104' class='question02_qpass'><a
                                                href='javascript:answer_check(10, 4)'>④ Circular
                                                Queue</a></td>
                                    </tr>
                                </table>&nbsp;
                            </td>
                        </tr>
                    </table>
                    <table width='100%' height='50' cellspacing='0' cellpadding='0' border='0'>
                        <tr>
                            <td width='50%' align='right' style='padding-right:12px;'><input
                                    type='button' value='이전' onclick="previous_div('1과목', 0, 1)"
                                    class='btn01_qpass'></td>
                            <td style='padding-left:10px;'><input type='button' value='다음'
                                    onclick="next_div('1과목', 0, 1)" class='btn01_qpass'></td>
                        </tr>
                    </table>
                </div>
                <div id='div02' style='display:none; width:100%; height:100%'>
                    <table width='100%' cellspacing='0' cellpadding='0' style='margin-top:0px;'
                        border='0'>
                        <tr>
                            <td width='50%' valign='top' class='ed' style='padding-top:5px;'>
                                <div id='ques_ox11'
                                    style='margin:0px; position:absolute; width:55px; height:45px;'><img
                                        src='./img/blank.gif' style='width:55px; height:45px;' /></div>
                                <table style='margin-bottom:10px; width:100%; height:150px; border:0'
                                    cellspacing='0' cellpadding='5'>
                                    <tr>
                                        <td style='padding-left:8px; width:25px; text-align:right'
                                            valign='top' class='count_qpass'>11.</td>
                                        <td style='width:98%' valign='top' class='question01_qpass'>다음
                                            설명이 의미하는 것은?<br />
                                            <img src='upfile/qpass43959_0' align='absmiddle'>
                                            <br /><span id='rate11' class='rightRate'
                                                style='display:none'>[정답률: %]</span></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem111' class='question02_qpass'><a
                                                href='javascript:answer_check(11, 1)'>① Array</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem112' class='question02_qpass'><a
                                                href='javascript:answer_check(11, 2)'>② Stack</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem113' class='question02_qpass'><a
                                                href='javascript:answer_check(11, 3)'>③ Queue</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem114' class='question02_qpass'><a
                                                href='javascript:answer_check(11, 4)'>④ Deque</a></td>
                                    </tr>
                                </table>
                                <div id='ques_ox12'
                                    style='margin:0px; position:absolute; width:55px; height:45px;'><img
                                        src='./img/blank.gif' style='width:55px; height:45px;' /></div>
                                <table style='margin-bottom:10px; width:100%; height:150px; border:0'
                                    cellspacing='0' cellpadding='5'>
                                    <tr>
                                        <td style='padding-left:8px; width:25px; text-align:right'
                                            valign='top' class='count_qpass'>12.</td>
                                        <td style='width:98%' valign='top' class='question01_qpass'>
                                            트랜잭션이 가져야 할 특성으로 거리가 먼 것은? <br /><span id='rate12'
                                                class='rightRate' style='display:none'>[정답률: %]</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem121' class='question02_qpass'><a
                                                href='javascript:answer_check(12, 1)'>①
                                                정확성(Accuracy)</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem122' class='question02_qpass'><a
                                                href='javascript:answer_check(12, 2)'>②
                                                원자성(Atomicity)</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem123' class='question02_qpass'><a
                                                href='javascript:answer_check(12, 3)'>③
                                                일관성(Consisitency)</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem124' class='question02_qpass'><a
                                                href='javascript:answer_check(12, 4)'>④
                                                고립성(Isolation)</a></td>
                                    </tr>
                                </table>
                                <div id='ques_ox13'
                                    style='margin:0px; position:absolute; width:55px; height:45px;'><img
                                        src='./img/blank.gif' style='width:55px; height:45px;' /></div>
                                <table style='margin-bottom:10px; width:100%; height:150px; border:0'
                                    cellspacing='0' cellpadding='5'>
                                    <tr>
                                        <td style='padding-left:8px; width:25px; text-align:right'
                                            valign='top' class='count_qpass'>13.</td>
                                        <td style='width:98%' valign='top' class='question01_qpass'>
                                            릴레이션에 관한 설명으로 옳은 것은?<br />
                                            <img src='upfile/qpass43961_0' align='absmiddle'>
                                            <br /><span id='rate13' class='rightRate'
                                                style='display:none'>[정답률: %]</span></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem131' class='question02_qpass'><a
                                                href='javascript:answer_check(13, 1)'>① ㄱ, ㄴ</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem132' class='question02_qpass'><a
                                                href='javascript:answer_check(13, 2)'>② ㄱ, ㄴ, ㄹ</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem133' class='question02_qpass'><a
                                                href='javascript:answer_check(13, 3)'>③ ㄴ</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem134' class='question02_qpass'><a
                                                href='javascript:answer_check(13, 4)'>④ ㄹ</a></td>
                                    </tr>
                                </table>
                            </td>
                            <td valign='top' class='ed' style='padding-top:5px; border-left:none'>
                                <div id='ques_ox14'
                                    style='margin:0px; position:absolute; width:55px; height:45px;'><img
                                        src='./img/blank.gif' style='width:55px; height:45px;' /></div>
                                <table style='margin-bottom:10px; width:100%; height:150px; border:0'
                                    cellspacing='0' cellpadding='5'>
                                    <tr>
                                        <td style='padding-left:8px; width:25px; text-align:right'
                                            valign='top' class='count_qpass'>14.</td>
                                        <td style='width:98%' valign='top' class='question01_qpass'>다음
                                            설명이 의미하는 것은?<br />
                                            <img src='upfile/qpass43962_0' align='absmiddle'>
                                            <br /><span id='rate14' class='rightRate'
                                                style='display:none'>[정답률: %]</span></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem141' class='question02_qpass'><a
                                                href='javascript:answer_check(14, 1)'>① Query</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem142' class='question02_qpass'><a
                                                href='javascript:answer_check(14, 2)'>② Backup</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem143' class='question02_qpass'><a
                                                href='javascript:answer_check(14, 3)'>③ Transaction</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem144' class='question02_qpass'><a
                                                href='javascript:answer_check(14, 4)'>④ Integrity</a>
                                        </td>
                                    </tr>
                                </table>
                                <div id='ques_ox15'
                                    style='margin:0px; position:absolute; width:55px; height:45px;'><img
                                        src='./img/blank.gif' style='width:55px; height:45px;' /></div>
                                <table style='margin-bottom:10px; width:100%; height:150px; border:0'
                                    cellspacing='0' cellpadding='5'>
                                    <tr>
                                        <td style='padding-left:8px; width:25px; text-align:right'
                                            valign='top' class='count_qpass'>15.</td>
                                        <td style='width:98%' valign='top' class='question01_qpass'>SQL
                                            문장의 기술이 적당치 않은 것은? <br /><span id='rate15' class='rightRate'
                                                style='display:none'>[정답률: %]</span></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem151' class='question02_qpass'><a
                                                href='javascript:answer_check(15, 1)'>① select … from …
                                                where …</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem152' class='question02_qpass'><a
                                                href='javascript:answer_check(15, 2)'>② insert … on …
                                                values …</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem153' class='question02_qpass'><a
                                                href='javascript:answer_check(15, 3)'>③ update … set …
                                                where …</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem154' class='question02_qpass'><a
                                                href='javascript:answer_check(15, 4)'>④ delete … from …
                                                where …</a></td>
                                    </tr>
                                </table>&nbsp;
                            </td>
                        </tr>
                    </table>
                    <table width='100%' height='50' cellspacing='0' cellpadding='0' border='0'>
                        <tr>
                            <td width='50%' align='right' style='padding-right:12px;'><input
                                    type='button' value='이전' onclick="previous_div('1과목', 0, 2)"
                                    class='btn01_qpass'></td>
                            <td style='padding-left:10px;'><input type='button' value='다음'
                                    onclick="next_div('1과목', 0, 2)" class='btn01_qpass'></td>
                        </tr>
                    </table>
                </div>
                <div id='div03' style='display:none; width:100%; height:100%'>
                    <table width='100%' cellspacing='0' cellpadding='0' style='margin-top:0px;'
                        border='0'>
                        <tr>
                            <td width='50%' valign='top' class='ed' style='padding-top:5px;'>
                                <div id='ques_ox16'
                                    style='margin:0px; position:absolute; width:55px; height:45px;'><img
                                        src='./img/blank.gif' style='width:55px; height:45px;' /></div>
                                <table style='margin-bottom:10px; width:100%; height:150px; border:0'
                                    cellspacing='0' cellpadding='5'>
                                    <tr>
                                        <td style='padding-left:8px; width:25px; text-align:right'
                                            valign='top' class='count_qpass'>16.</td>
                                        <td style='width:98%' valign='top' class='question01_qpass'>삽입
                                            SQL에 대한 설명으로 옳지 않은 것은? <br /><span id='rate16'
                                                class='rightRate' style='display:none'>[정답률: %]</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem161' class='question02_qpass'><a
                                                href='javascript:answer_check(16, 1)'>① 삽입 SQL 실행문은 호스트
                                                실행문이 나타날 수 있는 곳이면, 어디에서나 사용 가능하다.</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem162' class='question02_qpass'><a
                                                href='javascript:answer_check(16, 2)'>② SQL문에 사용되는 호스트
                                                변수는 콜론(:)을 앞에 붙인다.</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem163' class='question02_qpass'><a
                                                href='javascript:answer_check(16, 3)'>③ 응용 프로그램에서 삽입
                                                SQL문은 ‘EXEC SQL’을 앞에 붙여 다른 호스트 명령문과 구별한다.</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem164' class='question02_qpass'><a
                                                href='javascript:answer_check(16, 4)'>④ 삽입 SQL문의 호스트 변수의
                                                데이터 타입은 이에 대응하는 데이터베이스 필드의 SQL 데이터 타입과 일치하지 않아도 된다.</a>
                                        </td>
                                    </tr>
                                </table>
                                <div id='ques_ox17'
                                    style='margin:0px; position:absolute; width:55px; height:45px;'><img
                                        src='./img/blank.gif' style='width:55px; height:45px;' /></div>
                                <table style='margin-bottom:10px; width:100%; height:150px; border:0'
                                    cellspacing='0' cellpadding='5'>
                                    <tr>
                                        <td style='padding-left:8px; width:25px; text-align:right'
                                            valign='top' class='count_qpass'>17.</td>
                                        <td style='width:98%' valign='top' class='question01_qpass'>관계
                                            데이터 연산인 관계 대수와 관계 해석에 관한 설명으로 옳지 않은 것은? <br /><span
                                                id='rate17' class='rightRate' style='display:none'>[정답률:
                                                0%]</span></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem171' class='question02_qpass'><a
                                                href='javascript:answer_check(17, 1)'>① 관계 데이터 모델에 대한
                                                연산의 표현 방법으로 관계 대수와 관계 해석은 모두 절차적인 특성을 갖는다.</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem172' class='question02_qpass'><a
                                                href='javascript:answer_check(17, 2)'>② 관계 대수는 릴레이션 조작을
                                                위한 연산의 집합으로 피연산자와 결과가 모두 릴레이션이라는 특성을 가지고 있다.</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem173' class='question02_qpass'><a
                                                href='javascript:answer_check(17, 3)'>③ 관계 해석은 원래 수학의
                                                프레디킷 해석(Predicate Calculus)에 기반을 두고 있다.</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem174' class='question02_qpass'><a
                                                href='javascript:answer_check(17, 4)'>④ 관계 대수의 일반 집합
                                                연산에는 합집합, 교집합, 찻집합, 카티션 프로덕트 등이 있다.</a></td>
                                    </tr>
                                </table>
                                <div id='ques_ox18'
                                    style='margin:0px; position:absolute; width:55px; height:45px;'><img
                                        src='./img/blank.gif' style='width:55px; height:45px;' /></div>
                                <table style='margin-bottom:10px; width:100%; height:150px; border:0'
                                    cellspacing='0' cellpadding='5'>
                                    <tr>
                                        <td style='padding-left:8px; width:25px; text-align:right'
                                            valign='top' class='count_qpass'>18.</td>
                                        <td style='width:98%' valign='top' class='question01_qpass'>어떤
                                            릴레이션에 존재하는 튜플의 개수를 무엇이라고 하는가? <br /><span id='rate18'
                                                class='rightRate' style='display:none'>[정답률: %]</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem181' class='question02_qpass'><a
                                                href='javascript:answer_check(18, 1)'>① Cardinality</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem182' class='question02_qpass'><a
                                                href='javascript:answer_check(18, 2)'>② Degree</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem183' class='question02_qpass'><a
                                                href='javascript:answer_check(18, 3)'>③ Domain</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem184' class='question02_qpass'><a
                                                href='javascript:answer_check(18, 4)'>④ Attribute</a>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td valign='top' class='ed' style='padding-top:5px; border-left:none'>
                                <div id='ques_ox19'
                                    style='margin:0px; position:absolute; width:55px; height:45px;'><img
                                        src='./img/blank.gif' style='width:55px; height:45px;' /></div>
                                <table style='margin-bottom:10px; width:100%; height:150px; border:0'
                                    cellspacing='0' cellpadding='5'>
                                    <tr>
                                        <td style='padding-left:8px; width:25px; text-align:right'
                                            valign='top' class='count_qpass'>19.</td>
                                        <td style='width:98%' valign='top' class='question01_qpass'>
                                            해싱(Hashing)에서 서로 다른 키(Key)가 같은 홈 주소(Home Address)를 가지는 경우를
                                            무엇이라 하는가? <br /><span id='rate19' class='rightRate'
                                                style='display:none'>[정답률: %]</span></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem191' class='question02_qpass'><a
                                                href='javascript:answer_check(19, 1)'>① 동의어(Synonym)</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem192' class='question02_qpass'><a
                                                href='javascript:answer_check(19, 2)'>②
                                                재귀(Recursion)</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem193' class='question02_qpass'><a
                                                href='javascript:answer_check(19, 3)'>③
                                                충돌(Collision)</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem194' class='question02_qpass'><a
                                                href='javascript:answer_check(19, 4)'>④ 버킷(Bucket)</a>
                                        </td>
                                    </tr>
                                </table>
                                <div id='ques_ox20'
                                    style='margin:0px; position:absolute; width:55px; height:45px;'><img
                                        src='./img/blank.gif' style='width:55px; height:45px;' /></div>
                                <table style='margin-bottom:10px; width:100%; height:150px; border:0'
                                    cellspacing='0' cellpadding='5'>
                                    <tr>
                                        <td style='padding-left:8px; width:25px; text-align:right'
                                            valign='top' class='count_qpass'>20.</td>
                                        <td style='width:98%' valign='top' class='question01_qpass'>
                                            정보(Information)의 의미로 거리가 먼 것은? <br /><span id='rate20'
                                                class='rightRate' style='display:none'>[정답률: 0%]</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem201' class='question02_qpass'><a
                                                href='javascript:answer_check(20, 1)'>① 자료(Data)를 처리하여
                                                얻은 결과</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem202' class='question02_qpass'><a
                                                href='javascript:answer_check(20, 2)'>② 사용자가 목적하는 값</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem203' class='question02_qpass'><a
                                                href='javascript:answer_check(20, 3)'>③ 현실세계에서 관찰을 통해 얻은
                                                값</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td id='quesitem204' class='question02_qpass'><a
                                                href='javascript:answer_check(20, 4)'>④ 의사결정을 위한 값</a>
                                        </td>
                                    </tr>
                                </table>&nbsp;
                            </td>
                        </tr>
                    </table>
                    <table width='100%' height='50' cellspacing='0' cellpadding='0' border='0'>
                        <tr>
                            <td width='50%' align='right' style='padding-right:12px;'><input
                                    type='button' value='이전' onclick="previous_div('1과목', 0, 3)"
                                    class='btn01_qpass'></td>
                            <td style='padding-left:10px;'><input type='button' value='다음'
                                    onclick="next_div('1과목', 0, 3)" class='btn01_qpass'></td>
                        </tr>
                    </table>
                </div>
                
               
            </td>
            <td style='padding-left:4px; border:none; width:130px;' valign='top'>
                <!-- 답안지 출력 -->
                <div id="ans0" style="display: none; width: 100%; height: 100%; padding-left: 0px;">
                    <table width="100%" height="30" align="center" cellspacing="0" cellpadding="2">
                        <tbody><tr>
                            <td align="center" style="color:green; font-weight:bold; border:solid 1px #ccc; border-bottom:none">
                                1과목</td>
                        </tr>
                    </tbody></table>
                    <table style="width:100%; text-align:center;" cellspacing="0" cellpadding="0" border="0px">
                        <tbody>
	                        <tr style="height:25px;">
	                            <td id="ans_num1" style="font-weight:bold; color:#008000; text-align:center;" class="td_border_common_qpass">
	                            	<a href="javascript:move2question(0)" style="color:#008000;">1</a>
	                            </td>
	                            <td id="ans_td11" width="24px" align="center" valign="middle" class="td_border_common_qpass">
	                            	<a href="javascript:answer_check(1, 1)">
	                            		<img id="answer11" src="resources/img/test/num1.gif">
	                            	</a>
                            	</td>
	                            <td id="ans_td12" width="24px" align="center" valign="middle" class="td_border_common_qpass">
	                            	<a href="javascript:answer_check(1, 2)">
	                            		<img id="answer12" src="resources/img/test/num2.gif">
                            		</a>
                           		</td>
	                            <td id="ans_td13" width="24px" align="center" valign="middle" class="td_border_common_qpass">
	                            	<a href="javascript:answer_check(1, 3)">
	                            		<img id="answer13" src="resources/img/test/num3.gif">
	                            	</a>
                            	</td>
	                            <td id="ans_td14" width="24px" align="center" valign="middle" class="td_border_right_qpass">
	                            	<a href="javascript:answer_check(1, 4)">
	                            		<img id="answer14" src="resources/img/test/num4.gif">
	                            	</a>
                            	</td>
	                        </tr>
                   		</tbody>
                	</table>
                    <p id="btnFinish0" align="center" style="display:block; margin: 10px 0px 0px 0px;">
                    	<input type="button" value="답안제출" onclick="finish_exam(0);" class="btn01_qpass" style="width:70px;">
                   	</p>
                    <p id="resultDisplay0" align="center" style="margin: 10px 0px 0px 0px;"></p>
                </div>

            </td>
        </tr>
    </table>

    <form name="eachForm" method="post" action="qpass_takeExamEach.php?examUid=679">
        <input type="hidden" name="subjectNum">
        <input type="hidden" name="mode">
        <input type="hidden" name="initStartNum">
        <input type="hidden" name="initEachTotal">
    </form>


	<!-- JavaScripts
	============================================= -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>



     <script type="text/javascript" language="javascript">var max_five = Array(10);</script>
     <script>max_five[0] = '3';</script>
     <script>max_five[1] = '3';</script>
     <script>max_five[2] = '3';</script>
     <script>max_five[3] = '3';</script>
     <script>max_five[4] = '3';</script>
    <script>

        
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

        function resave_ansTry(startNum, eachTotal) {
            var tryNum;
            var endNum = startNum + eachTotal - 1;

            for (var i = startNum; i <= endNum; i++) {
                tryNum = $('#ans_trySame' + i).val();
                tryNum =$('#ans_try' + i).val() ;
            }
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

    


    

        function answer_check(question_num, ans_num) {
            var currentMode = $('#current_mode').val();
           

            console.log(currentMode)
          

           

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
            console.log(ansIndex);
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
                    tryList = tryList + ans_try + "|Q|";
                }
                f.ansTryList.value = tryList;
                f.targetDiv.value = $('#current_i').val();
                f.submit();
            
        }
    </script>
</body>
</html>