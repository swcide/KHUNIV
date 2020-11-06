<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../common/header.jsp"%>

<div class="body">
	<div role="main" class="main">
		<section
			class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-3"
			style="background-image: url(img/page-header/page-header-background-transparent.jpg); padding: 70px;">
			<div class="container">
				<div class="row mt-3">
					<div
						class="col-md-12 align-self-center p-static order-2 text-center">
						<h1 class="text-9 font-weight-bold">학사공지 작성하기</h1>
						<span class="sub-title">Department Notice Write</span>
					</div>
				</div>
			</div>
		</section>

		<div class="container py-4">

			<div class="row">
				<div class="col">
					<div class="blog-posts single-post">
						<article class="post post-large blog-single-post border-0 m-0 p-0">

							<div class="post-content ml-0">


								<div class="custom-box-details bg-color-light custom-box-shadow-1 col-lg-12 ml-5 mb-5 mb-lg-4 float-right clearfix">
									<h4>학사공지 작성</h4>

									<form class="contact-form rounded"
										action="php/contact-form.php" method="POST">



										<div class="form-group">
											<input class="form-control" placeholder="제목">
										</div>
										<div class="form-row">

											<div class="form-group col">

												<textarea maxlength="5000"
													data-msg-required="Please enter your message." rows="10"
													class="form-control" name="message" required></textarea>
											</div>
										</div>
										<div class="form-row">
											<div class="form-group col mb-0">
												<input type="submit" value="뒤로가기"
													class="btn btn-quaternary mb-2"
													data-loading-text="Loading..."> <input
													type="submit" value="완료"
													class="btn btn-dark btn-modern float-right"
													data-loading-text="Loading...">
											</div>
										</div>
									</form>
								</div>
							</div>
						</article>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../common/footer.jsp"%>
