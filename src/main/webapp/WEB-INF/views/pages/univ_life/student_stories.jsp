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
						<h1 class="text-9 font-weight-bold">학생 이모저모</h1>
						<span class="sub-title">Student Stories</span>
					</div>
				</div>
			</div>
		</section>

		<div class="container py-2">

			<ul
				class="nav nav-pills sort-source sort-source-style-3 justify-content-center"
				data-sort-id="portfolio" data-option-key="filter"
				data-plugin-options="{'layoutMode': 'fitRows', 'filter': '*'}">
				<li class="nav-item" data-option-value="*"><a
					class="nav-link text-1 text-uppercase active">취업선배들의 한마디</a></li>
			</ul>

			<div
				class="sort-destination-loader sort-destination-loader-showing mt-4 pt-2">
				<div class="row portfolio-list sort-destination"
					data-sort-id="portfolio">


					<div class="col-md-6 col-lg-4 isotope-item brands">
						<div class="portfolio-item">
							<a href="portfolio-single-wide-slider.html"> <span
								class="thumb-info thumb-info-lighten border-radius-0"> <span
									class="thumb-info-wrapper border-radius-0"> <img
										src="img/projects/project.jpg"
										class="img-fluid border-radius-0" alt=""> <span
										class="thumb-info-title"> <span
											class="thumb-info-inner"> <br> 꿈은 반드시 이루어집니다.
										</span> <span class="thumb-info-type">삼성전자 취업</span>
									</span> <span class="thumb-info-action"> <span
											class="thumb-info-action-icon bg-dark opacity-8"><i
												class="fas fa-plus"></i></span>
									</span>
								</span>
							</span>
							</a>
						</div>
					</div>

					<div class="col-md-6 col-lg-4 isotope-item medias">
						<div class="portfolio-item">
							<a href="portfolio-single-wide-slider.html"> <span
								class="thumb-info thumb-info-lighten border-radius-0"> <span
									class="thumb-info-wrapper border-radius-0"> <span
										class="owl-carousel owl-theme dots-inside m-0"
										data-plugin-options="{'items': 1, 'margin': 20, 'animateOut': 'fadeOut', 'autoplay': true, 'autoplayTimeout': 3000}"><span><img
												src="img/projects/project-1.jpg"
												class="img-fluid border-radius-0" alt=""></span><span><img
												src="img/projects/project-1-2.jpg"
												class="img-fluid border-radius-0" alt=""></span></span> <span
										class="thumb-info-title"> <span
											class="thumb-info-inner"><br> 노력은 절때 배신하지 않습니다.</span> <span
											class="thumb-info-type">다음카카오 취업</span>
									</span> <span class="thumb-info-action"> <span
											class="thumb-info-action-icon bg-dark opacity-8"><i
												class="fas fa-plus"></i></span>
									</span>
								</span>
							</span>
							</a>
						</div>
					</div>

					<div class="col-md-6 col-lg-4 isotope-item logos">
						<div class="portfolio-item">
							<a href="portfolio-single-wide-slider.html"> <span
								class="thumb-info thumb-info-lighten border-radius-0"> <span
									class="thumb-info-wrapper border-radius-0"> <img
										src="img/projects/project-2.jpg"
										class="img-fluid border-radius-0" alt=""> <span
										class="thumb-info-title"> <span
											class="thumb-info-inner"><br> 백날 노력해도 타고난 재능은 이기지
												못합니다.</span> <span class="thumb-info-type">LG 취업</span>
									</span> <span class="thumb-info-action"> <span
											class="thumb-info-action-icon bg-dark opacity-8"><i
												class="fas fa-plus"></i></span>
									</span>
								</span>
							</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../common/footer.jsp"%>