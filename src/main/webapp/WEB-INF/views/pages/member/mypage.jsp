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
			<div class="col-lg-3 mt-4 mt-lg-0">

				<div class="d-flex justify-content-center mb-4">
					<div class="profile-image-outer-container">
						<div class="profile-image-inner-container bg-color-primary">
							<img src="resources/img/korea.jpg"> <span class="profile-image-button bg-color-dark"> <i class="fas fa-camera text-light"></i>
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

				<form action="" role="form" class="needs-validation">

					<div class="form-group row">
						<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">성명</label>
						<div class="col-lg-9">
							<input class="form-control" type="text" name="name" id="name" value="${loginUser.name }" required>
						</div>
					</div>
					<c:if test="${!empty loginUser.ssn } ">
					<c:forTokens items="${loginUser.ssn }" delims="-" varStatus="status">
					<div class="form-group row">
						<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">주민번호</label>
					<c:if test="${status.index eq 0}">
						<div class="col-lg-4">
							<input class="form-control" type="number" name="ssn" value="${loginUser.std_ssn }" required>
						</div>
						</c:if>
						-
						<c:if test="${status.index eq 1 }">
						<div class="col-lg-4">
							<input class="form-control" type="number" name="ssn" value="${loginUser.std_ssn }" required>
						</div>
						</c:if>
					</div>
					</c:forTokens>
					</c:if>
					<div class="form-group row">
						<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">Email</label>
						<div class="col-lg-9">
							<input class="form-control" type="email" name="email" value="${loginUser.email }" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2">학적상태</label>
						<div class="col-lg-9">
							<input class="form-control" type="text" name=dept value="${loginUser.std_status }">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2">학년</label>
						<div class="col-lg-9">
							<input class="form-control" type="text" name=dept value="${loginUser.dgree }학년">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2">학기</label>
						<div class="col-lg-9">
							<input class="form-control" type="text" name=dept value="${loginUser.semester }학기">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2">학부</label>
						<div class="col-lg-9">
							<input class="form-control" type="text" name=dept value="${loginUser.category }학부">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2">전공</label>
						<div class="col-lg-9">
							<input class="form-control" type="text" name=dept value="${loginUser.dept }">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2">학번</label>
						<div class="col-lg-9">
							<input class="form-control" type="number" name=dept value="${loginUser.std_no }">
						</div>
					</div>
						<c:if test="${!empty loginUser.address }">
						<c:forTokens items="${loginUser.address }" delims="," varStatus="status">
					<div class="form-group row">
						<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2">도로명 주소</label>
						<c:if test="${status.index eq 0 }">
						<div class="col-lg-7">
							<input class="form-control" type="text" name="address" value="${loginUser.address }" placeholder="주소 입력">
						</div>
						</c:if>
						<div class="col-lg-2">
							<input class="btn btn-primary btn-sm mb-2 float-right" type="button" name="state" value="도로명 검색" placeholder="">
						</div>
					</div>
					<div class="form-group row">
					<c:if test="${status.index eq 1 }">
						<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2"></label>
						<div class="col-lg-7">
							<input class="form-control" type="text" name="address_detail" value="${loginUser.address_detail }" placeholder="상세주소 입력">
						</div>
						</c:if>
						<c:if test="${status.index eq 2 }">
						<div class="col-lg-2">
							<input class="form-control" type="text" name="address" value="${loginUser.address }" placeholder="우편번호">
						</div>
						</c:if>
					</div>
					</c:forTokens>
					</c:if>
					<c:if test="${!empty loginUser.phone }">
					<c:forTokens items="${loginUser.phone }" delims="," varStatus="status">
					<div class="form-group row">
						<c:if test="${status.index eq 0}">
						<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">연락처</label>
						<div class="col-lg-2">
							<select class="form-control" name="phone"  required>
								<option value="${loginUser.phone}" selected/>
							</select>
						</div>
						</c:if>
						-
						<c:if test="${status.index eq 1}">
						<div class="col-lg-3">
							<input class="form-control" type="tel" name="phone" value="${loginUser.phone}" required>
						</div>
						</c:if>
						-
						<c:if test="${status.index eq 2 }">
						<div class="col-lg-3">
							<input class="form-control" type="tel" name="phone" value="${loginUser.phone}" required>
						</div>
						</c:if>
					</div>
					</c:forTokens>
					</c:if>
					<div class="form-group row">
						<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">비밀번호</label>
						<div class="col-lg-9">
							<input class="form-control" type="password" name="pw" value="${loginUser.pw }" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">비밀번호 확인</label>
						<div class="col-lg-9">
							<input class="form-control" type="password" name="pw_check" value="${loginUser.pw_check }" required>
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
		</div>
	</div>
</div>
</body>
<script>
$('#btnUpdate').click(function(){
	
});
if ($("#name").val() == "") {
	alert("이름을 정확히 입력해주세요");
	return;
}
for (var i=0; i<$("#name").val().length; i++)  { 
    var chk = $("#name").val().substring(i,i+1); 
    if(chk.match(/[0-9]|[a-z]|[A-Z]/)) { 
    	alert("이름을 정확히 입력해주세요");
        return;
    }
    if(chk.match(/([^가-힣\x20])/i)){
    	alert("이름을 정확히 입력해주세요");
        return;
    }
    if($("#name").val() == " "){
    	alert("이름을 정확히 입력해주세요");
        return;
    }
} 
if ($("#name").val().length <= 1) {
	alert("이름을 정확히 입력해주세요");
	return;
}

</script>
<%@include file="../common/footer.jsp"%>
</html>
