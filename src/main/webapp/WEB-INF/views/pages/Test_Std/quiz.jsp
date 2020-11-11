<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시험 응시 페이지</title>
<link rel="stylesheet"	href="/woosong/plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="/woosong/dist/css/adminlte.min.css">
 <!-- overlayScrollbars -->
 <link rel="stylesheet" href="/woosong/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<!-- Google Font: Source Sans Pro -->
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
<!-- fullCalendar -->
<style>
.note-editing-area {
	max-height: 500px !important
}

.note-editor {
	max-height: 500px !important
}

.note-editable {
	max-height: 500px
}
</style>
</head>
<body onresize="parent.resizeTo(1200,1200)" onload="parent.resizeTo(1200,1200)" >


	<div class="content-wrapper">

		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-12">
						<div class="callout callout-danger">
							<span class="">잔여문제 : 1 / 10 </span> <br> <span class="">잔여
								시간 : 20분 00초/총 40분 </span>
							<div class="float-right">
								<button class="btn btn-block bg-gradient-success btn-lg"
									style="margin: -25px 45px 0px 0;">제출하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /.container-fluid -->
		</section>



		<section class="content" style="display: flex;">
			<div class="container-fluid"">
				<div class="row">
					<div class="col-12">
						<div class="card card-primary">
							<div class="card-header">
								<div class="card-title">
									퀴즈에용
								</div>
							</div>
							<div class="card-body" style="height: auto" >
							   
								<div class="row">
									<div class="col-sm-3">
										<p>객관식 문제 1번</p>
										<a href="https://via.placeholder.com/1200/FFFFFF.png?text=1"
											data-toggle="lightbox" data-title="sample 1 - white"
											data-gallery="gallery"> <img
											src="https://via.placeholder.com/300/FFFFFF?text=1"
											class="img-fluid mb-2" alt="white sample" />
										</a>
									</div>
								</div>
								<div class="form-group">
									<div class="form-check">
										<input class="form-check-input" type="radio" name="radio1">
										<label class="form-check-label">1</label>
									</div>
										<div class="form-check">
										<input class="form-check-input" type="radio" name="radio1">
										<label class="form-check-label">2</label>
									</div>
										<div class="form-check">
										<input class="form-check-input" type="radio" name="radio1">
										<label class="form-check-label">3</label>
									</div>
										<div class="form-check">
										<input class="form-check-input" type="radio" name="radio1">
										<label class="form-check-label">4</label>
									</div>
							
								</div>
							<hr>
								<div class="row">
									<div class="col-sm-3">
										<p>객관식 문제 2번</p>
										<a href="https://via.placeholder.com/1200/FFFFFF.png?text=1"
											data-toggle="lightbox" data-title="sample 1 - white"
											data-gallery="gallery"> <img
											src="https://via.placeholder.com/300/FFFFFF?text=1"
											class="img-fluid mb-2" alt="white sample" />
										</a>
									</div>
								</div>
								<div class="form-group">
									<div class="form-check">
										<input class="form-check-input" type="radio" name="radio1">
										<label class="form-check-label">1</label>
									</div>
										<div class="form-check">
										<input class="form-check-input" type="radio" name="radio1">
										<label class="form-check-label">2</label>
									</div>
										<div class="form-check">
										<input class="form-check-input" type="radio" name="radio1">
										<label class="form-check-label">3</label>
									</div>
										<div class="form-check">
										<input class="form-check-input" type="radio" name="radio1">
										<label class="form-check-label">4</label>
									</div>
							
								</div>
							<hr>
								<div class="row">
									<div class="col-sm-3">
										<p>객관식 문제 3번</p>
										<a href="https://via.placeholder.com/1200/FFFFFF.png?text=1"
											data-toggle="lightbox" data-title="sample 1 - white"
											data-gallery="gallery"> <img
											src="https://via.placeholder.com/300/FFFFFF?text=1"
											class="img-fluid mb-2" alt="white sample" />
										</a>
									</div>
								</div>
								<div class="form-group">
									<div class="form-check">
										<input class="form-check-input" type="radio" name="radio1">
										<label class="form-check-label">1</label>
									</div>
										<div class="form-check">
										<input class="form-check-input" type="radio" name="radio1">
										<label class="form-check-label">2</label>
									</div>
										<div class="form-check">
										<input class="form-check-input" type="radio" name="radio1">
										<label class="form-check-label">3</label>
									</div>
										<div class="form-check">
										<input class="form-check-input" type="radio" name="radio1">
										<label class="form-check-label">4</label>
									</div>
							
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /.container-fluid -->


			<!-- ./row -->
			<div class="col-md-2" style="margin-left: 100px;">
				<div class="card card-primary card-outline">
					<div class="card-header">
						<h3 class="card-title">답안지</h3>
					</div>
					<!-- /.card-header -->
					<div class="card-body" style="height: 580px">

						<p class="text-muted">01.이거 답뭐냐?</p>

						<hr>

						<p class="text-muted">02.이거 답뭐냐?</p>

						<hr>

						<p class="text-muted">03.이거 답뭐냐?</p>

						<hr>

						<p class="text-muted">04.이거 답뭐냐?</p>

						<hr>
					</div>
					<!-- /.card-body -->
				</div>
			</div>

		</section>
		<div class="callout callout-danger">
			<div class="btn-group" style="display: flex;">
				<div style="margin: 0 auto;">
					<button class="btn btn-info">이전</button>
					<button class="btn btn-info">다음</button>
				</div>
			</div>
		</div>
		<!-- /.content -->


	</div>





	<%@ include file="../common/footer.jsp"%>

	<script>
		$(function() {
			// Summernote
			$('.textarea').summernote()
		})
	</script>
</body>
</html>