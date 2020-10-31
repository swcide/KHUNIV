<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHCU | 휴학</title>
<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="keywords" content="HTML5 Template" />
<meta name="description" content="Porto - Responsive HTML5 Template">
<meta name="author" content="okler.net">

<!-- Favicon -->
<link rel="shortcut icon" href="resources/img/favicon.ico" type="image/x-icon" />
<link rel="apple-touch-icon" href="resources/img/apple-touch-icon.png">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, shrink-to-fit=no">

<!-- Web Fonts  -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CShadows+Into+Light&display=swap" rel="stylesheet" type="text/css">

<!-- Vendor CSS -->
<link rel="stylesheet" href="resources/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/vendor/fontawesome-free/css/all.min.css">
<link rel="stylesheet" href="resources/vendor/animate/animate.compat.css">
<link rel="stylesheet" href="resources/vendor/simple-line-icons/css/simple-line-icons.min.css">
<link rel="stylesheet" href="resources/vendor/owl.carousel/assets/owl.carousel.min.css">
<link rel="stylesheet" href="resources/vendor/owl.carousel/assets/owl.theme.default.min.css">
<link rel="stylesheet" href="resources/vendor/magnific-popup/magnific-popup.min.css">

<!-- Theme CSS -->
<link rel="stylesheet" href="resources/css/theme.css">
<link rel="stylesheet" href="resources/css/theme-elements.css">
<link rel="stylesheet" href="resources/css/theme-blog.css">
<link rel="stylesheet" href="resources/css/theme-shop.css">

<!-- Current Page CSS -->
<link rel="stylesheet" href="resources/vendor/rs-plugin/css/settings.css">
<link rel="stylesheet" href="resources/vendor/rs-plugin/css/layers.css">
<link rel="stylesheet" href="resources/vendor/rs-plugin/css/navigation.css">
<link rel="stylesheet" href="resources/vendor/circle-flip-slideshow/css/component.css">

<!-- Demo CSS -->
<link rel="stylesheet" href="resources/css/demos/demo-it-services.css">

<!-- Skin CSS -->
<link rel="stylesheet" href="resources/css/skins/ad_default.css">
<link rel="stylesheet" href="resources/css/skins/skin-it-services.css">

<!-- Theme Custom CSS -->
<link rel="stylesheet" href="resources/css/custom.css">

<!-- Head Libs -->
<script src="resources/vendor/modernizr/modernizr.min.js"></script>
</head>
<body onresize="parent.resizeTo(620,740)" onload="parent.resizeTo(700,100)">
	<div class="body">
		<div role="main" class="main">
			<section class="page-header page-header-modern bg-color-light-scale-3 page-header-sm section-overlay-dot" style="margin: 0; background-image: url(resources/img/custom-header-bg.jpg);">
				<!-- style="background-image: url(resources/img/en-mini-logo.png);" -->
				<div class="col-12">
					<div class="row">
						<div class="col-5 align-self-center p-static order-2 text-center">
							<img alt="Porto Website Template" src="resources/img/khculogo4.png" class="float-left" height="40">
						</div>
						<div class="col-7 align-self-center p-static order-2 text-center">
							<h1 class="text-dark text-uppercase float-left">
								<strong style="color: white;">휴학신청</strong>
							</h1>
						</div>
					</div>
				</div>
			</section>

			<div class="col-lg-9 order-1 order-lg-2" style="
    padding-left: 40px;
    padding-right: 40px;
">
							<div class="offset-anchor" id="contact-sent"></div>
							<div class="col-lg-6 mb-lg-0">
									<h4 style="margin-top:15px">주의사항</h4>
									<ul class="list list-icons list-primary list-borders">
										<li><i class="fas fa-check"></i>종류별 신청 서류가 상이할 수 있으니 <br>안내를 읽고 신청하시길 바랍니다.</li>
										<li><i class="fas fa-check"></i>파일 미첨부 시 진행이 되지 않으며, <br>별도 안내 또한 없으니 주의하시길 바랍니다.</li>
										<li><i class="fas fa-check"></i>휴학 후 등록금 반환은 되지 않습니다.</li>
										<li><i class="fas fa-check"></i>행정팀 : 02) 111-2222 </li>
									</ul>
								</div>
								<div class="form-group col-md-12">
										<hr>
									</div>
							<form id="contactFormAdvanced" action="elements-forms-advanced-contact.php#contact-sent" method="POST" enctype="multipart/form-data" novalidate="novalidate">
								<input type="hidden" value="true" name="emailSent" id="emailSent">
									<div class="col-lg-6 mb-4 mb-lg-0">
										<input class="d-block" type="file" name="attachment" id="attachment">
								</div>
									<div class="col-lg-6 mb-4 mb-lg-0">
										<div class="form-check form-check-inline">
												<input class="form-check-input" name="checkboxes[]" type="checkbox" data-msg-required="Please select at least one option." id="inlineCheckbox1" value="option1">
											<label class="font-weight-bold text-dark text-3 float-center" style="margin: 0;">정말 휴학 신청을 하시겠습니까?</label>
										</div>
									</div>
									<div class="form-group col-md-12">
										<hr>
									</div>
									<div class="form-group col-md-12 mb-5">
										<input type="submit" id="contactFormSubmit" value="신청하기" class="btn btn-primary btn-modern pull-right float-right" data-loading-text="Loading...">
									</div>
							</form>

						</div>
		</div>
	</div>
</body>
</html>