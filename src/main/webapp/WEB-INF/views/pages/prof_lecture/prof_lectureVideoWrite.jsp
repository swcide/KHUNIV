<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/professor_header.jsp"%>

<!-- Content Wrapper. Contains page content -->
<div class="body">
	<div role="main" class="main">

		<section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-3" style="background-image: url(resources/img/page-header/KakaoTalk_20201026_130729067.jpg); padding: 70px;">
			<div class="container">
				<div class="row mt-3">
					<div class="col-md-12 align-self-center p-static order-2 text-center">
						<h1 class="text-9 font-weight-bold">강의 동영상 등록</h1>
						<span class="sub-title">Adding Lecture video list</span>
					</div>
				</div>
			</div>
		</section>

		<div class="container py-2">

			<div class="row">
				<div class="col">

					<div class="row">
						<div class="col">
							<hr class="solid my-5">
						</div>
					</div>

					<div class="row">
						<div class="col">
							<div class="row mt-lg-3">

								<form class="col">
									<div class="row">
										<div class="col-md-6">

											<span class="thumb-info thumb-info-side-image thumb-info-no-zoom">
												<span class="thumb-info-side-image-wrapper">
													<video poster="" style="height: 200px; background-color: lightgrey;" width="350px">
														<source src="video/memory-of-a-woman.mp4" type="video/mp4">
													</video>
												</span>
											</span>

										</div>

										<div class="col-md-6">

											<div class="col-md-12">
												<input class="text-uppercase mb-4 text-center text-6 float-right col-md-12" style="text-align: right;" placeholder="강의명 강의차시"> <br>

												<textarea style="width: 100%;" cols="30" rows="4"></textarea>

												<br>
												<div class="col-md-12 ">
													<span class='float-right'>
														<i class="far fa-user"></i> By <a href="#">유승제 교수&nbsp;</a> <i class="far fa-folder"></i><a href="#"> 수업자료 pdf </a>
													</span>

												</div>
											</div>

										</div>
									</div>
									<label class="btn btn-primary btn-file"> 동영상 파일추가 <input type="file" style="display: none;">
									</label>
									<button type="button" class="btn btn-dark" onclick="location.href= 'prof_lectureVideoWrite.do'" style="float: right; margin-bottom: 20px;">
										<i class="fas fa-pencil-alt"></i> 등록
									</button>
								</form>

							</div>
							<h5 class="text-uppercase mt-4">강의 목록</h5>

							<div class="row mt-lg-3">

								<div class="col">

									<span class="thumb-info thumb-info-side-image thumb-info-no-zoom">
										<span class="thumb-info-side-image-wrapper">
											<video poster="" style="height: 200px; background-color: black;" width="350px">
												<source src="video/memory-of-a-woman.mp4" type="video/mp4">
											</video>
										</span>
										<span class="thumb-info-caption" style="text-align: right">
											<span class="thumb-info-caption-text">
												<h5 class="text-uppercase mb-5 text-center text-6">컴퓨터 네트워킹 2강</h5>
												좀 더 심화된 개념과 용어부터 공부하며 기초를 다지는 시간을 가져보자
												<div class="post-meta">
													<span>
														<i class="far fa-user"></i> By <a href="#">유승제 교수&nbsp;</a>
													</span>
													<span>
														<i class="far fa-folder"></i><a href="#"> 수업자료 pdf </a>
													</span>
												</div>
											</span>
										</span>

									</span>

								</div>

							</div>
							<div class="row mt-lg-3">

								<div class="col">


									<span class="thumb-info thumb-info-side-image thumb-info-no-zoom">
										<span class="thumb-info-side-image-wrapper">
											<video poster="" style="height: 200px; background-color: black;" width="350px">
												<source src="video/memory-of-a-woman.mp4" type="video/mp4">
											</video>
										</span>
										<span class="thumb-info-caption" style="text-align: right">
											<span class="thumb-info-caption-text">
												<h5 class="text-uppercase mb-5 text-center text-6">컴퓨터 네트워킹 1강</h5>
												컴퓨터 네트워킹이란 무엇인가 개념과 기본 용어부터 공부하며 기초를 다지는 시간을 가져보자
												<div class="post-meta">
													<span>
														<i class="far fa-user"></i> By <a href="#">유승제 교수&nbsp;</a>
													</span>
													<span>
														<i class="far fa-folder"></i><a href="#"> 수업자료 pdf </a>
													</span>
													<span class="d-block mt-2">
														<a href="blog-post.html" class="btn btn-xs btn-light text-1 text-uppercase">Read More</a>
													</span>
												</div>
											</span>
										</span>

									</span>

								</div>

							</div>

						</div>
					</div>
				</div>
			</div>

		</div>

	</div>
</div>


<%@ include file="../common/footer.jsp"%>

