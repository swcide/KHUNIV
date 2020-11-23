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
			<c:if test="${!empty sessionScope.loginProf }">
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
			<c:if test="${!empty sessionScope.loginUser }">
				<div class="col-lg-9">
					<div class="overflow-hidden mb-1">
						<h2 class="font-weight-normal text-7 mb-0">
							<strong class="font-weight-extra-bold">내 정보</strong>
						</h2>
					</div>
					<div class="overflow-hidden mb-4 pb-3">
						<p class="mb-0">수정 후 반드시 저장해주시길 바랍니다.</p>
					</div>
					<form action="updateMyPage.do" role="form" class="needs-validation" method="post">
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
								<input class="form-control" type="number" name=dept value="${loginUser.sNo }" disabled>
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
						<div class="form-group row">
							<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">변경할 비밀번호</label>
							<div class="col-lg-9">
								<input class="form-control"id="pwChange" type="password" name="new_pw" value="" required>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">비밀번호 확인</label>
							<div class="col-lg-9">
								<input class="form-control"id="pwCheck"  type="password" name="check_pw" value="" required>
							</div>
						</div>
						<div class="form-group row">
							<div class="form-group col-lg-9"></div>
							<div class="form-group col-lg-3">
							<input type="hidden" value="${loginUser.sNo }" name="sNo">
								<input type="submit" value="수정하기" id="btnUpdate" onclick="chkPW()"class="btn btn-primary btn-sm mb-2 float-right" data-loading-text="Loading...">
							</div>
						</div>
					</form>
				</div>
			</c:if>
		</div>
	</div>
</div>
</body>
<%@include file="../common/footer.jsp"%>
<script>
	function chkPW() {

		var pwChg = $("#pwChange").val();
		var pwChk = $("#pwCheck").val();
		var id = $("#id").val();

		if(pwChg !=null){
			if(pwChg == pwChk){
			console.log("비밀번호 일치 ");
			alert('비밀번호 변경이 완료되었습니다.');
				$('fm').submit();
			}else{
				console.log("비밀번호 불일치 ");
				alert('비밀번호를 다시 확인해주세요.');
			}
		}else{
			alert('비밀번호를 입력하세요.');
		}
		}

</script>
</html>
