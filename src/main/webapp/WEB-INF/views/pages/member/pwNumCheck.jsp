<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>KHCU | Login</title>

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

<!-- Demo CSS -->


<!-- Skin CSS -->
<link rel="stylesheet" href="resources/css/skins/default.css">

<!-- Theme Custom CSS -->
<link rel="stylesheet" href="resources/css/custom.css">

<!-- Head Libs -->
<script src="resources/vendor/modernizr/modernizr.min.js"></script>

</head>
<div class="main" style="background-image: url(resources/img/KakaoTalk_20201029_211816935.jpg); background-size: cover; height: 937px;">
	<div class="container">
		<div class="row">
			<div class="col"></div>
		</div>
		<div class="container py-4">
			<img src="resources/img/big-logo.png" style="width: 300px; height: 300px; margin-left: 35%; margin-top: 8%;">
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-5 mb-5 mb-lg-0">
					<img src="">
					<h4 style="text-align: center;">인증번호 입력</h4>
					<hr>
					<form action="pwNumCheck.do" id="frmSearch" method="post" class="needs-validation">
						<div id="numCheck">
						<div class="form-row">
							<div class="form-group col">
								<label class="text-color-dark text-3">인증번호 입력 <span class="text-color-danger">*</span></label>
								<input type="text"name="insertPassCode" class="form-control form-control-lg text-4" required>
								<input type="hidden" name="passCode" value="${newPwd }">
								<input type="hidden" name="e_mail" value="${e_mail }">
								<input type="hidden" name="id" value="${id }">
								<input type="hidden" name="type" value="${type }">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col">
								<button type="submit" class="btn btn-dark btn-modern btn-block text-uppercase rounded-0 font-weight-bold text-3 py-3" data-loading-text="Loading...">확인</button>
							</div>
						</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>


<!-- Vendor -->
<script src="resources/vendor/jquery/jquery.min.js"></script>
<script src="resources/vendor/jquery.appear/jquery.appear.min.js"></script>
<script src="resources/vendor/jquery.easing/jquery.easing.min.js"></script>
<script src="resources/vendor/jquery.cookie/jquery.cookie.min.js"></script>
<script src="resources/vendor/popper/umd/popper.min.js"></script>
<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="resources/vendor/common/common.min.js"></script>
<script src="resources/vendor/jquery.validation/jquery.validate.min.js"></script>
<script src="resources/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
<script src="resources/vendor/jquery.gmap/jquery.gmap.min.js"></script>
<script src="resources/vendor/jquery.lazyload/jquery.lazyload.min.js"></script>
<script src="resources/vendor/isotope/jquery.isotope.min.js"></script>
<script src="resources/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
<script src="resources/vendor/vide/jquery.vide.min.js"></script>
<script src="resources/vendor/vivus/vivus.min.js"></script>

<!--(remove-empty-lines-end)-->

<!-- Theme Base, Components and Settings -->
<script src="resources/js/theme.js"></script>

<!-- Theme Custom -->
<script src="resources/js/custom.js"></script>


<!-- Theme Initialization Files -->
<script src="resources/js/theme.init.js"></script>

<!-- Google Analytics: Change UA-XXXXX-X to be your site's ID. Go to http://www.google.com/analytics/ for more information.
		<script>
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

			ga('create', 'UA-12345678-1', 'auto');
			ga('send', 'pageview');
		</script>
		 -->
<script>

		
</script>
</body>
</html>
