<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../common/header.jsp"%>

<div class="body">
	<div role="main" class="main">
		<section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-3" style="background-image: url(img/page-header/page-header-background-transparent.jpg); padding: 70px;">
			<div class="container">
				<div class="row mt-3">
					<div class="col-md-12 align-self-center p-static order-2 text-center">
						<h1 class="text-9 font-weight-bold">Q&A 수정하기</h1>
						<span class="sub-title">Question and Answer</span>
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
									<h4>QnA 수정</h4>
									<!-- DB에 저장되어있는 값 출력 -->
									<form id="fm" class="contact-form" action="qnaUpdate.do" method="post" enctype="multipart/form-data">
										<div class="form-group">
										 <!--  제목 -->
											<input class="form-control" name="qnaTitle" value="${b.qnaTitle }">
										</div>
										<div class="form-row">
											<div class="form-group col">
											<!--  업데이트 쿼리에 필요한 값 hidden으로 보내기 -->
												<input type="hidden" name="qnaWriter" value="${loginUser.sNo}">
												<input type="hidden" name="qnaName" value="${loginUser.sName}">
												<input type="hidden" name="qnaId" value="${b.qnaId}">
												<div class=" ">
													<div class="mb-3">
													<!-- 내용 -->
														<textarea class="textarea" name="qnaContent" value="${b.qnaContent }" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">${b.qnaContent }</textarea>
													</div>
												</div>
											</div>
										</div>
										<input type="button" onclick="history.back()" value="뒤로가기" class="btn btn-quaternary mb-2">
										<input type="submit" value="수정하기" class="btn btn-dark btn-modern float-right">
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
