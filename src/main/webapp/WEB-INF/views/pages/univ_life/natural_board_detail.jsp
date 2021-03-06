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
						<h1 class="text-9 font-weight-bold">자연 과학 게시판</h1>
						<span class="sub-title">Natural Sciences Board</span>
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

								<h2 class="font-weight-bold">
									<a href="blog-post.html">자연과학이 뭔지 알려주실 수 있나요?</a>
								</h2>

								<div class="post-meta">
									<span><i class="far fa-user fl"></i> By <a href="#">윤기훈</a>
									</span> <span class="date float-right">2020-10-29 13:38</span>
								</div>

								<p>신입생인데 자연 과학이 뭔지 모르겠어요</p>




								<div id="comments" class="post-block mt-5 post-comments">


									<ul class="comments">
										<li>
											<div class="comment">
												<div
													class="img-thumbnail img-thumbnail-no-borders d-none d-sm-block">
													<img class="avatar" alt="" src="img/avatars/avatar-2.jpg">
												</div>
												<div class="comment-block">
													<div class="comment-arrow"></div>
													<span class="comment-by"> <strong>김진태</strong> <span
														class="float-right"> <span> <a href="#"><i
																	class="fas fa-reply"></i> Reply</a></span>
													</span>
													</span>
													<p>연락처 주세요 제가 가르쳐드립니다.</p>
													<span class="date float-right">2020-10-29 13:38 </span>
												</div>
											</div>
										</li>
									</ul>
								</div>

								<div class="post-block mt-5 post-leave-comment">
									<h4 class="mb-3">Leave a comment</h4>

									<form class="contact-form p-4 rounded bg-color-grey"
										action="php/contact-form.php" method="POST">
										<div class="p-2">
											<div class="form-row">
												<div class="form-group col">
													<label class="required font-weight-bold text-dark">Comment</label>
													<textarea maxlength="5000"
														data-msg-required="Please enter your message." rows="2"
														class="form-control" name="message" required></textarea>
												</div>
											</div>
											<div class="form-row">
												<div class="form-group col mb-0">
													<input type="submit" value="뒤로가기"
														class="btn btn-quaternary btn-modern"
														data-loading-text="Loading..."> <input
														type="submit" value="등록"
														class="btn btn-dark btn-modern float-right"
														data-loading-text="Loading...">
												</div>
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