<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>University of Woosong</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="resources/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="resources/dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href=" views/dist/css/intro.css">
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href=" index2.html"><b>KH 대학교에 오신 것을 환영합니다.</b></a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">로그인하실 종류를 선택해 주세요.</p>
    <div class="btn-group btn-group-toggle" data-toggle="buttons">
                  <label class="btn bg-primary">
                    <input type="radio" name="options" id="option1" autocomplete="off"> 학생 
                  </label>
                  <label class="btn bg-primary">
                    <input type="radio" name="options" id="option2" autocomplete="off"> 교수 
                  </label>
                  <label class="btn bg-primary">
                    <input type="radio" name="options" id="option3" autocomplete="off"> 관리자 
                  </label>
                </div>
    <p></p>

      <form action=" index3.html" method="post">
        <div class="input-group mb-3">
          <input type="email" class="form-control" placeholder="ID">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-id-badge"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" placeholder="PW">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="remember">
              <label for="remember">
                Remember Me
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <!--<button type="submit" class="btn btn-primary btn-block">Sign In</button>-->
           <a href="pages/main.jsp" class="btn btn-primary btn-block">로그인</a>
            
          </div>
          <p></p>
          <!-- /.col -->
        </div>
      </form>

      <!-- /.social-auth-links -->

      <p class="mb-1">
        <a href="id-search.jsp">학번 찾기</a> &nbsp;|&nbsp;
        <a href="pw-search.jsp">비밀번호 찾기</a>
      </p>
      <p class="mb-0">
        <p class="text-center">로그인이 어려울 시 문의해주세요 02)123-1234</p>
      </p>
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src=" plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src=" plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src=" dist/js/adminlte.min.js"></script>

</body>
</html>
