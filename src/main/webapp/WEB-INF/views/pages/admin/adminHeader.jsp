<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>KHCU | ADMIN</title>

<link rel="stylesheet" href="resources/assets/css/bootstrap.css">

<link rel="stylesheet" href="resources/assets/vendors/chartjs/Chart.min.css">

<link rel="stylesheet" href="resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="resources/assets/css/app.css">
<link rel="shortcut icon" href="resources/assets/images/favicon.svg" type="image/x-icon">
<link rel="stylesheet" href="resources/vendor/fontawesome-free/css/all.min.css">
</head>
<body>
			<nav class="navbar navbar-header navbar-expand navbar-light">
				<a class="sidebar-toggler" href="#"><span class="navbar-toggler-icon"></span></a>
				<button class="btn navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav d-flex align-items-center navbar-light ml-auto">
						<li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
								<div class="d-none d-md-block d-lg-inline-block">관리자</div>
						</a>
							<div class="dropdown-menu dropdown-menu-right">
								<a class="dropdown-item" href="main.do"><i data-feather="log-out"></i> 홈페이지</a> <!-- indexController에 걸려있음 -->
								<a class="dropdown-item" href="ad_logout.do"><i data-feather="log-out"></i> Logout</a> <!--  memeberController에 걸려있음 -->
							</div></li>
					</ul>
				</div>
			</nav>
</body>
</html>
