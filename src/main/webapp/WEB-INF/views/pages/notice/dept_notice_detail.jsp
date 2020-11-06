<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../common/header.jsp"%>

<style>
.mailbox-attachment-info{
	background: #f8f9fa;
    padding: 10px;
	}
}
.mailbox-attachment-name{
    color: #666;
    font-weight: 700;
}
</style>

<div class="body">
	<div role="main" class="main">
		<
		<section
			class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-3"
			style="background-image: url(img/page-header/page-header-background-transparent.jpg); padding: 70px;">
			<div class="container">
				<div class="row mt-3">
					<div
						class="col-md-12 align-self-center p-static order-2 text-center">
						<h1 class="text-9 font-weight-bold">학사공지</h1>
						<span class="sub-title">Department Notice</span>
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
									${ n.nTitle }
								</h2>

								<div class="post-meta">
									<span><i class="far fa-user fl"></i> By ${n.nWriter }
									</span> <span class="date float-right">${n.nCreateDate }</span>
								</div>

								<p class="text-5">${n.nContent }</p>
								
								<div class="mt-5 ">
									<hr>
									<h4 >첨부파일</h4>
								</div>
								
								
								<c:if test="${ !empty n.originalFileName }">
								<ul class=" d-flex align-items-stretch clearfix" style="list-style:none; padding: 0;">
					                <li>		
					                  <div class="mailbox-attachment-info">
					                    <a href="/spring/resources/uploadFiles/${n.renameFileName}" download="${n.originalFileName }" class="mailbox-attachment-name">
					                    	<i class="fas fa-paperclip"></i>${n.originalFileName }
				                    	</a>
					                        <span class="mailbox-attachment-size clearfix mt-">
					                          <a href="#" class="btn btn-default btn-sm float-right"><i class="fas fa-cloud-download-alt"></i></a>
					                        </span>
					                  </div>
					                </li>
								</ul>
								
								
								</c:if>
							
<%-- 								<c:if test="${ loginAdmin != null }"> --%>
								<div class=" float-right">											
											<div>
												<c:url var="nupview" value="nupView.do">
													<c:param name="bId" value="${n.nId }"/>
												</c:url>
												<c:url var="ndelete" value="bdelete.do">
													<c:param name="bId" value="${n.nId }"/>
												</c:url>
												<c:url var="nlist" value="dept_notice.do">
													<c:param name="currentPage" value="${ currentPage }"/>
												</c:url>
											
											
												<a href="${ndelete }" class="mb-1 mt-1 mr-1 btn btn-primary">
													삭제하기
												</a>
												<a href="${nupview }" class="mb-1 mt-1 mr-1 btn btn-primary">
													수정하기
												</a>											
											</div>
										</div>
										<a href="${nlist }" class="mb-1 mt-1 mr-1 btn btn-primary float-left">
												목록으로
										</a>
<%-- 								</c:if> --%>
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
													<span class="comment-by"> <strong>댓글 작성자 이름이 여기 들어감</strong> <span
														class="float-right"> <span> <a href="#"><i
																	class="fas fa-reply"></i> Reply</a></span>
													</span>
													</span>
													<p>댓글 내용이 여기 들어감</p>
													<span class="date float-right">2020-10-29 13:38 </span>
												</div>
											</div>
										</li>
									</ul>
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
