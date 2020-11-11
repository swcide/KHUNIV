<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.kh.univ.member.model.vo.Student"%>
<%@ page import="com.kh.univ.member.model.vo.Admin"%>
<%@ page import="com.kh.univ.member.model.vo.Professor"%>

<%



Student loginUser = (Student)session.getAttribute("loginUser");
Professor loginProf = (Professor)session.getAttribute("loginProf");
Admin loginAdmin = (Admin)session.getAttribute("loginAdmin");

String sNo = null;
String pNo = null;
String aId = null;

String sName =null;
String pName =null;
String aName = null;


int type = 0;

	if(loginUser !=null){
	 sNo =loginUser.getsNo(); 
	 sName =loginUser.getsName();
	 type = loginUser.getType();
	
	}else if(loginProf !=null){	
	 pNo =loginProf.getpNo();
	 pName=loginProf.getpName();
	 type = loginProf.getType();
	
	}else if (loginAdmin !=null){
	 aId = loginAdmin.getaId();
	 aName = loginAdmin.getaName();
	 type = loginAdmin.getType();
	
	}
	
System.out.println(type);	


     

%>


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
ul.comments li {
	clear: both;
    padding: 10px 0px 0px 20px!important;
}}
</style>

<div class="body">
	<div role="main" class="main">
		<section
			class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-3"
			style="background-image: url(img/page-header/page-header-background-transparent.jpg); padding: 70px;">
			<div class="container">
				<div class="row mt-3">
					<div
						class="col-md-12 align-self-center p-static order-2 text-center">
						<h1 class="text-9 font-weight-bold">인문 사회 게시판</h1>
						<span class="sub-title">Humanities & Social Sciences Board</span>
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
									${ h.hTitle }
								</h2>

								<div class="post-meta">
									<span><i class="far fa-user fl"></i> By ${h.hWriter }
									</span> <span class="date float-right">${h.hCreateDate }</span>
								</div>

								<p clss="text-5">${h.hContent }</p>
								
								<div class="mt-5 ">
									<hr>
									<h4 >첨부파일</h4>
								</div>
								
								<c:if test="${ !empty h.originalnilename }">
								<ul class=" d-flex align-items-stretch clearfix" style="list-style:none; padding: 0;">
					                <li>		
					                  <div class="mailbox-attachment-info">
					                    <a href="/spring/resources/uploadFiles/${h.renameFilename}" download="${n.originalFilename }" class="mailbox-attachment-name">
					                    	<i class="fas fa-paperclip"></i>${h.originalFilename }
				                    	</a>
					                        <span class="mailbox-attachment-size clearfix mt-">
					                          <a href="#" class="btn btn-default btn-sm float-right"><i class="fas fa-cloud-download-alt"></i></a>
					                        </span>
					                    
					                  </div>
					                </li>
								</ul>
								
								
								</c:if>
								<c:if test="${ loginAdmin != null }">
									<div class=" float-right">											
										<div>
											<c:url var="nupview" value="nUpView.do">
												<c:param name="hId" value="${h.hId }"/>
												<c:param name="hType" value="${h.hType}"/>
											</c:url>
											<c:url var="nDelete" value="nDelete.do">
												<c:param name="hId" value="${h.hId }"/>
											</c:url>
											<c:url var="nList" value="nList.do?nType=1">
												<c:param name="currentPage" value="${ currentPage }"/>
											</c:url>
										
											<a href="${hDelete}" class="mb-1 mt-1 mr-1 btn btn-primary">
												삭제하기${hupview}
											</a>
											<a href="${hupview }" class="mb-1 mt-1 mr-1 btn btn-primary">
												수정하기
											</a>											
										</div>
									</div>
										
								</c:if>
								<c:if test="${ loginProf.pNo eq h.hWriter }">
								<div class=" float-right">											
											<div>
												<c:url var="hupview" value="hUpView.do">
													<c:param name="hId" value="${h.nId }"/>
													<c:param name="hType" value="${h.hType}"/>
												</c:url>
												<c:url var="hDelete" value="hDelete.do?hType=1">
													<c:param name="hId" value="${h.hId }"/>
												</c:url>
												<c:url var="hList" value="hList.do">
													<c:param name="currentPage" value="${ currentPage }"/>
												</c:url>
										
												<c:set var="test" value="${h.hType }"/>
											
											
												<a href="${hDelete}" class="mb-1 mt-1 mr-1 btn btn-primary">
													삭제하기 ${test }
												</a>
												<a href="${hupview }" class="mb-1 mt-1 mr-1 btn btn-primary">
													수정하기
												</a>											
											</div>
										</div>
										
								</c:if>
								<c:if test="${ loginUser.sNo eq h.hWriter }">
								<div class=" float-right">											
											<div>
												<c:url var="hupview" value="hUpView.do">
													<c:param name="hId" value="${h.nId }"/>
													<c:param name="hType" value="${h.hType}"/>
												</c:url>
												<c:url var="hDelete" value="hDelete.do?hType=1">
													<c:param name="hId" value="${h.hId }"/>
												</c:url>
												<c:url var="hList" value="hList.do">
													<c:param name="currentPage" value="${ currentPage }"/>
												</c:url>
										
												<c:set var="test" value="${h.hType }"/>
											
											
												<a href="${hDelete}" class="mb-1 mt-1 mr-1 btn btn-primary">
													삭제하기 ${test }
												</a>
												<a href="${hupview }" class="mb-1 mt-1 mr-1 btn btn-primary">
													수정하기
												</a>											
											</div>
										</div>
										
								</c:if>
								




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
													<p>윤기훈남</p>
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