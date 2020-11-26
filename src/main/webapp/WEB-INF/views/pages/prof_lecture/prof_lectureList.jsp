<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/professor_header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.kh.univ.member.model.vo.Professor"%>
<%

Professor loginProf = (Professor)session.getAttribute("loginProf");
String pNo = null;
pNo =loginProf.getpNo();

%>
<!-- Content Wrapper. Contains page content -->
<style>
#className {
	color: #008995;
	font-weight: bold;
}

#className:hover {
	cursor: pointer;
	color: #005de8;
	font-weight: bold;
}
</style>
<div class="body">
	<div role="main" class="main">
		<section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-3" style="background-image: url(resources/img/page-header/KakaoTalk_20201026_130729067.jpg); padding: 70px;">
			<div class="container">
				<div class="row mt-3">
					<div class="col-md-12 align-self-center p-static order-2 text-center">
						<h1 class="text-9 font-weight-bold">내 강의 목록</h1>
						<span class="sub-title">prof lecture list</span>
					</div>
				</div>
			</div>
		</section>
		<div class="container py-4">
			<div class="row py-4 mb-4">
				<div class="col">
					<div class="image-hotspots">
						<div class="row">

							<c:forEach var="lc" items="${ aLc}">
								<div class="col-md-4 col-lg-3">
									<article class="post post-medium border-0 pb-0 mb-5">
										<div class="post-image">
											<a href="blog-post.html"> <img src="resources/img/컴퓨터네트워킹.jpg" class="img-fluid img-thumbnail img-thumbnail-no-borders rounded-0" alt="강의이미지" />
											</a>
										</div>
										<div class="post-content">
											<form id="frm" action="prof_lectureVideo.do" method="post">
												<h2 class="font-weight-semibold text-5 line-height-6 mt-3 mb-2">
													<input type="hidden" name="classNo" value="${lc.classNo }">
													<label id="className">
														<input type="submit" style="display: none;">${lc.className }
													</label>
												</h2>
											</form>
											<p>${lc.className }${lc.className }${lc.className }${lc.className }${lc.className }${lc.className }${lc.className }${lc.className }${lc.className }${lc.className }${lc.className }${lc.className }${lc.className }${lc.className }${lc.className }${lc.className }</p>


											<div class="post-meta">
												<span>
													<i class="far fa-user"></i> 교수: ${lc.profName }
												</span>
												<br>
												<span>
													<i class="far fa-folder"></i> 수강대상: ${lc.deptName }
												</span>
												<br>
												<span>
													<i class="far fa-comments"></i> <a href="#">${lc.profEmail }</a>
												</span>
												<br>
												<label onclick="openNew(this)" class="btn btn-xs btn-light text-1 text-uppercase">
													<input type="hidden" name="classNo" value="${lc.classNo }">
													<input type="hidden" name="pNo" value="<%=pNo%>">
													강의 계획서
												</label>
											</div>
										</div>
									</article>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	// 강의계획서 불러오는 스크립트
	function openNew(obj) {
		var classNo = $(obj).find('input:eq(0)').val();		// 과목번호
		var pNo = $(obj).children('input:eq(1)').val();		// 세션에서 받아온 교수번호

			window.open(this.href = 'ad_syllabus.do?classNo=' + classNo
													+ '&pNo=' + pNo, '',
							'resizable=yes, width=900, height=800 left=700px top=100px');
			return false;
		
	}
</script>
<%@ include file="../common/footer.jsp"%>

