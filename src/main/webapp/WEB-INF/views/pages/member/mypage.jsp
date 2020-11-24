<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%@ include file="../common/administration_header.jsp"%>
<div role="main" class="main">

	<section class="page-header page-header-classic">
		<div class="container">
			<div class="row">
				<div class="col p-static">
					<h1 data-title-border>마이페이지</h1>

				</div>
			</div>
		</div>
	</section>

	<div class="container py-2">

		<div class="row">

			<c:if test="${!empty sessionScope.loginUser }">
				<div class="col-lg-3 mt-4 mt-lg-0">
					<form action="myImgUpload.do" id="frm" name="frm" method="POST" enctype="multipart/form-data">
						<div class="d-flex justify-content-center mb-4" id="imgSecssion">
							<div class="profile-image-outer-container">
								<div class="profile-image-inner-container bg-color-primary">
									<img id="img" src="resources/img/memberImg/${loginUser.sImage }">
									<span class="profile-image-button bg-color-dark">
										<i class="fas fa-camera text-light"></i>
									</span>
								</div>
								<input type="hidden" name="sNo" value="${loginUser.sNo }">
								<input type="file" id="file" name="file" class="profile-image-input" accept="image/*">
							</div>
						</div>
					</form>
					<aside class="sidebar mt-2" id="sidebar">
					<input type="button" onclick="ChgImg()">이미지 등록하기
					</aside>
				</div>
				<div class="col-lg-9">
					<div class="overflow-hidden mb-1">
						<h2 class="font-weight-normal text-7 mb-0">
							<strong class="font-weight-extra-bold">내 정보</strong>
						</h2>
					</div>
					<div class="overflow-hidden mb-4 pb-3">
						<p class="mb-0">수정 후 반드시 저장해주시길 바랍니다.</p>
					</div>
					<form id="fm" action="updateMyPage.do" onsubmit="return chkPW(); " role="form" class="needs-validation" method="post">
						<div class="form-group row">
							<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 ">성명</label>
							<div class="col-lg-9">
								<input class="form-control" type="text" name="name" id="name" value="${loginUser.sName }" disabled>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 ">주민번호</label>
							<div class="col-lg-9">
								<input class="form-control" type="text" name="ssn" value="${loginUser.sSsn }" disabled>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">Email</label>
							<div class="col-lg-9">
								<input class="form-control" type="email" name="email" value="${loginUser.sEmail }" required>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 ">학적상태</label>
							<div class="col-lg-9">
								<input class="form-control" type="text" name=dept value="${loginUser.sStatus }" disabled>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 ">학년</label>
							<div class="col-lg-9">
								<c:if test="${loginUser.semester eq 8 }">
									<input class="form-control" type="text" name=dept value="4학년 2학기" disabled>
								</c:if>
								<c:if test="${loginUser.semester eq 7 }">
									<input class="form-control" type="text" name=dept value="4학년 1학기" disabled>
								</c:if>
								<c:if test="${loginUser.semester eq 6 }">
									<input class="form-control" type="text" name=dept value="3학년 2학기" disabled>
								</c:if>
								<c:if test="${loginUser.semester eq 5 }">
									<input class="form-control" type="text" name=dept value="3학년 1학기" disabled>
								</c:if>
								<c:if test="${loginUser.semester eq 4 }">
									<input class="form-control" type="text" name=dept value="2학년 2학기" disabled>
								</c:if>
								<c:if test="${loginUser.semester eq 3 }">
									<input class="form-control" type="text" name=dept value="2학년 1학기" disabled>
								</c:if>
								<c:if test="${loginUser.semester eq 2 }">
									<input class="form-control" type="text" name=dept value="1학년 2학기" disabled>
								</c:if>
								<c:if test="${loginUser.semester eq 1 }">
									<input class="form-control" type="text" name=dept value="1학년 1학기" disabled>
								</c:if>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2">학부</label>
							<div class="col-lg-9">
								<input class="form-control" type="text" name=dept value="${loginUser.sCategory }학부" disabled>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2">전공</label>
							<div class="col-lg-9">
								<input class="form-control" type="text" name=dept value="${loginUser.sDeptName }" disabled>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2">학번</label>
							<div class="col-lg-9">
								<input class="form-control" type="text" name=sNo id="sNo" value="${loginUser.sNo }" disabled>
							</div>
						</div>
						<c:forTokens var="addr" items="${loginUser.sAddress }" delims="," varStatus="status">
							<div class="form-group row" style="margin-bottom: 0;">
								<c:if test="${status.index eq 0 }">
									<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">도로명 주소</label>
									<div class="col-lg-7">
										<input class="form-control" type="text" name="address" value="${addr }" placeholder="주소 입력">
									</div>
									<div class="col-lg-2">
										<input class="btn btn-primary btn-sm mb-2 float-right" type="button" name="state" value="도로명 검색" placeholder="">
									</div>
								</c:if>
							</div>
							<c:if test="${status.index eq 1 }">
								<div class="form-group row">
									<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">상세주소</label>
									<div class="col-lg-9">
										<input class="form-control" type="text" name="address_detail" value="${addr}" placeholder="상세주소 입력">
									</div>
								</div>
							</c:if>
						</c:forTokens>
						<div class="form-group row">
							<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">연락처</label>
							<div class="col-lg-9">
								<input class="form-control" type="tel" name="phone" value="${loginUser.sPhone}" required>
							</div>
						</div>
						<label style="color: #008995; border-radius: 4px; width: 321px; text-align: center; display: none; margin-left: 67px;" id="alert-success"><strong>일치</strong></label> <label style="color: #c10000; border-radius: 4px; width: 321px; text-align: center; display: none; margin-left: 74px;" id="alert-danger"><strong>불일치</strong></label>
						<div class="form-group row">
							<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">변경할 비밀번호</label>
							<div class="col-lg-9">
								<input class="form-control" id="pwChange" type="password" name="new_pw" value="" required>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">비밀번호 확인 </label>
							<div class="col-lg-9">
								<input class="form-control" id="pwCheck" type="password" name="check_pw" value="" required>
							</div>
						</div>
						<div class="form-group row">
							<div class="form-group col-lg-9"></div>
							<div class="form-group col-lg-3">
								<input type="hidden" value="${loginUser.sNo }" name="sNo" id="sNo">
								<input type="hidden" value="${loginUser.sImage }" name="sImage" id="sImage">
								<input type="button" value="수정하기" id="btnUpdate" onclick="chkPW()" class="btn btn-primary btn-sm mb-2 float-right" data-loading-text="Loading...">
							</div>
						</div>
					</form>
				</div>
			</c:if>
		</div>
	</div>
	<c:if test="${!empty sessionScope.loginProf }">
		<div class="col-lg-3 mt-4 mt-lg-0">
			<div class="d-flex justify-content-center mb-4">
				<div class="profile-image-outer-container">
					<div class="profile-image-inner-container bg-color-primary">
						<img src="resources/img/korea.jpg">
						<span class="profile-image-button bg-color-dark">
							<i class="fas fa-camera text-light"></i>
						</span>
					</div>
					<input type="file" id="file" class="profile-image-input">
				</div>
			</div>
			<aside class="sidebar mt-2" id="sidebar">
				<ul class="nav nav-list flex-column mb-5">
					<li class="nav-item"><a class="nav-link text-dark active" href="#">내 정보</a></li>
					<li class="nav-item"><a class="nav-link" href="#">User Preferences</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Billing</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Invoices</a></li>
				</ul>
			</aside>
		</div>
		<div class="col-lg-9">
			<div class="overflow-hidden mb-1">
				<h2 class="font-weight-normal text-7 mb-0">
					<strong class="font-weight-extra-bold">내 정보</strong>
				</h2>
			</div>
			<div class="overflow-hidden mb-4 pb-3">
				<p class="mb-0">수정 후 반드시 저장해주시길 바랍니다.</p>
			</div>
			<form action="chkPW()" role="form" class="needs-validation">
				<div class="form-group row">
					<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 ">성명</label>
					<div class="col-lg-9">
						<input class="form-control" type="text" name="name" id="name" value="${loginProf.pName }" disabled>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 ">주민번호</label>
					<div class="col-lg-9">
						<input class="form-control" type="text" name="ssn" value="${loginProf.pSsn}" disabled>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">Email</label>
					<div class="col-lg-9">
						<input class="form-control" type="email" name="email" value="${loginProf.pEmail }" required>
					</div>
				</div>

				<div class="form-group row">
					<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2">학부</label>
					<div class="col-lg-9">
						<input class="form-control" type="text" name=dept value="${loginProf.deptNo }학부" disabled>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2">직급</label>
					<div class="col-lg-9">
						<input class="form-control" type="text" name=dept value="${loginProf.pPosition }" disabled>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2">연구실</label>
					<div class="col-lg-9">
						<input class="form-control" type="text" name=dept value="${loginProf.pLab }" disabled>
					</div>
				</div>
				<c:if test="${!empty loginProf.pAddr }">
					<c:forTokens items="${loginProf.pAddr }" delims="," varStatus="status">
						<div class="form-group row">
							<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">도로명 주소</label>
							<c:if test="${status.index eq 0 }">
								<div class="col-lg-7">
									<input class="form-control" type="text" name="address" value="${loginProf.pAddr }" placeholder="주소 입력">
								</div>
							</c:if>
							<div class="col-lg-2">
								<input class="btn btn-primary btn-sm mb-2 float-right" type="button" name="state" value="도로명 검색" placeholder="">
							</div>
						</div>
						<div class="form-group row">
							<c:if test="${status.index eq 1 }">
								<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required"></label>
								<div class="col-lg-7">
									<input class="form-control" type="text" name="address_detail" value="${loginProf.pAddr }" placeholder="상세주소 입력">
								</div>
							</c:if>
						</div>
					</c:forTokens>
				</c:if>
				<div class="form-group row">
					<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">변경할 비밀번호</label>
					<div class="col-lg-9">
						<input class="form-control" id="pwChange" type="password" name="new_pw" value="" required>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">비밀번호 확인</label>
					<div class="col-lg-9">
						<input class="form-control" id="pwCheck" type="password" name="check_pw" value="" required>
					</div>
				</div>
				<div class="form-group row">
					<div class="form-group col-lg-9"></div>
					<div class="form-group col-lg-3">
						<input type="submit" value="수정하기" id="btnUpdate" class="btn btn-primary btn-sm mb-2 float-right" data-loading-text="Loading...">
					</div>
				</div>
			</form>
		</div>
	</c:if>
</div>
</body>
<%@include file="../common/footer.jsp"%>
<script>
	//일치여부 확인
	$(function() {
		$("#alert-success").hide();
		$("#alert-danger").hide();
		$("input").keyup(function() {
			var pwd = $("#pwChange").val();
			var rePwd = $("#pwCheck").val();
			if (pwd != "" || rePwd != "") {
				if (pwd == rePwd) {
					$("#alert-success").show();
					$("#alert-danger").hide();
					$("#submit").removeAttr("disabled");
				} else {
					$("#alert-success").hide();
					$("#alert-danger").show();
					$("#submit").attr("disabled", "disabled");
				}
			}
		});
	});
	//유효성검사
	function chkPW() {
		var pwChg = $("#pwChange").val();
		var pwChk = $("#pwCheck").val();
		var id = $("#sNo").val();
		var checkNumber = pwChg.search(/[0-9]/g);
		var checkEnglish = pwChg.search(/[a-z]/ig);

		if (!/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/.test(pwChg)) {
			alert('숫자+영문자+특수문자 조합으로 8자리 이상 사용해야 합니다.');
			return false;
		} else if (checkNumber < 0 || checkEnglish < 0) {
			alert("숫자와 영문자를 혼용하여야 합니다.");
			return false;
		} else if (/(\w)\1\1\1/.test(pwChg)) {
			alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
			return false;
		} else if (pwChg.search(id) > -1) {
			alert("비밀번호에 아이디가 포함되었습니다.");
			return false;
		} else if (pwChg != pwChk) {
			alert('비밀번호가 일치하지 않습니다.');
			return false;
		} else {
			alert("비밀번호 변경을 완료하였습니다. 다시 로그인해주세요.")
			console.log("통과");
			fm.submit();
// 			frm.submit();
			return true;
		}
	}
	function ChgImg() {
		var formData = new FormData($('#frm')[0]);
		var sImage =$('#sImage').val();
		var sNo = $('#sNo').val();
		$.ajax({
			type : "POST",
			url : 'myImgUpload.do',
			data : formData,
			processData : false,
			contentType : false,
			async : true,
			success : function(data) {
				if (data == 'success') {
					alert('사진등록이 완료되었습니다.');
					$('#imgSecssion').children().remove();
		            // Contents 영역 교체
		            window.location.reload('#imgSecssion');
// 		            $('#imgSecssion').html(data);


				} else {
					alert('서버가 원활하지 않습니다.');
					window.opener.location.reload();
					window.close();
				}
			},
			error : function(request, status, error) {

				console.log("code:" + request.status + "\n"
						+ "message:" + request.responseText
						+ "\n" + "error:" + error);
			}
		});
	}
	
	//이미지 미리보기
	function readURL(input) {
		
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function(e) {
	            $('#img').attr('src', e.target.result);
	        }
	        reader.readAsDataURL(input.files[0]);
	    }
	}
	$("#file").change(function() {
	    readURL(this);	
	}); 
</script>
</html>
