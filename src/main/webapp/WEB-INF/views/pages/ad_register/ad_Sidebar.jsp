<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<aside class="sidebar">
		<h5 class="font-weight-bold">학적관리</h5>
		<ul class="nav nav-list flex-column mb-5">
			<li class="nav-item"><a class="nav-link" href="ad_lect_list.do">강의</a>
				<ul>
					<li class="nav-item"><a class="nav-link" href="ad_lect_list.do">강의개설정보</a></li>
					<li class="nav-item"><a class="nav-link" href="ad_lect_appl.do">수강신청</a></li>
					<li class="nav-item"><a class="nav-link" href="ad_audit_lect_appl.do">청강신청</a></li>
					<li class="nav-item"><a class="nav-link" href="ad_appl_stat.do">신청현황</a></li>
				</ul></li>
			<li class="nav-item"><a class="nav-link" href="ad_point_search_list.do">성적조회</a></li>
			<li class="nav-item"><a class="nav-link" href="ad_leave_absence_check.do">휴학</a></li>
			<li class="nav-item"><a class="nav-link" href="ad_return_absence_check.do">복학</a></li>
			<li class="nav-item"><a class="nav-link" href="ad_deferment_graduation_check.do">졸업유예</a></li>
			<li class="nav-item"><a class="nav-link" href="ad_drop_absence_check.do">자퇴</a></li>
			<li class="nav-item"><a class="nav-link" href="ad_tuition_bill.do">등록금</a>
				<ul>
					<li class="nav-item"><a class="nav-link" href="ad_tuition_bill.do">등록금 납부</a></li>
					<li class="nav-item"><a class="nav-link" href="ad_tuition_payment_check.do">등록금 납부 확인</a></li>
				</ul></li>
			<li class="nav-item"><a class="nav-link" href="ad_certificate_list.do">증명서 발급</a>
				<ul>
					<li class="nav-item"><a class="nav-link" href="ad_certificate_list.do">재학 증명서 발급</a></li>
					<li class="nav-item"><a class="nav-link" href="ad_certificate_list.do">졸업 증명서 발급</a></li>
				</ul></li>
		</ul>
	</aside>
</body>
</html>