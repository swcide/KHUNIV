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
						<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 ">성명</label>
						<div class="col-lg-9">
							<input class="form-control" type="text" name="name" id="name" value="${loginProf.pName }" disabled>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 ">주민번호</label>
						<div class="col-lg-9">
							<input class="form-control" type="text" name="ssn" value="${loginProf.pSsn }" disabled>
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
							<input class="form-control" type="password" name="new_pw" value="" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">비밀번호 확인</label>
						<div class="col-lg-9">
							<input class="form-control" type="password" name="check_pw" value="" required>
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
<%@include file="../common/footer.jsp"%>
<script>
function chkPW(){

	var pw = $("#password").val();
	var id = $("#id").val();
		
	var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
	var hangulcheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	 
	if(false === reg.test(pw)) {
	alert('비밀번호는 8자 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함해야 합니다.');
	}else if(/(\w)\1\1\1/.test(pw)){
	 alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
	 return false;
	 }else if(pw.search(id) > -1){
	 alert("비밀번호에 아이디가 포함되었습니다.");
	  return false;
	 }else if(pw.search(/\s/) != -1){
	 alert("비밀번호는 공백 없이 입력해주세요.");
	 return false;
	 }else if(hangulcheck.test(pw)){
	 alert("비밀번호에 한글을 사용 할 수 없습니다."); 
	 }else {
	 console.log("통과");
	 }

}
</script>
</html>
