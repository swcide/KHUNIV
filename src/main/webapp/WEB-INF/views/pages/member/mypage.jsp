<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="administration_header.jsp" %>
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
						<div class="col-lg-9">

							<div class="overflow-hidden mb-1">
								<h2 class="font-weight-normal text-7 mb-0"><strong class="font-weight-extra-bold">내 정보</strong></h2>
							</div>
							<div class="overflow-hidden mb-4 pb-3">
								<p class="mb-0">수정 후 반드시 저장해주시길 바랍니다.</p>
							</div>

							<form action="" role="form" class="needs-validation">
							    <div class="form-group row">
							        <label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">성</label>
							        <div class="col-lg-9">
							            <input class="form-control" type="text" name="firstName" value="조" required>
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">이름</label>
							        <div class="col-lg-9">
							            <input class="form-control" type="text" name="lastName" value="원영" required>
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">Email</label>
							        <div class="col-lg-9">
							            <input class="form-control" type="email" name="email" value="adiosly?@gmail.com" required>
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2">학과</label>
							        <div class="col-lg-9">
							            <input class="form-control" type="text" name="컴퓨터학과" value="">
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2">주소</label>
							      
							        <div class="col-lg-7">
							            <input class="form-control" type="text" name="city" value="" placeholder="주소 입력">
							        </div>
							        <div class="col-lg-2">
							            <input class="btn btn-primary btn-sm mb-2 float-right" type="button" name="state" value="주소 검색" placeholder="">
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2"></label>
							          <div class="col-lg-9">
							            <input class="form-control" type="text" name="address" value="" placeholder="상세주소 입력">
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">비밀번호</label>
							        <div class="col-lg-9">
							            <input class="form-control" type="password" name="password" value="" required>
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">비밀번호 확인</label>
							        <div class="col-lg-9">
							            <input class="form-control" type="password" name="confirmPassword" value="" required>
							        </div>
							    </div>
							    <div class="form-group row">
									<div class="form-group col-lg-9">

									</div>
									<div class="form-group col-lg-3">
										<input type="submit" value="수정하기" class="btn btn-primary btn-sm mb-2 float-right" data-loading-text="Loading...">
									</div>
							    </div>
							</form>
						</div>
					</div>
				</div>
			</div>
	</body>
	<%@include file="footer.jsp" %>
</html>
