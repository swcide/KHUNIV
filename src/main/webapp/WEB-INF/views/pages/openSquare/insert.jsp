<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/pages/common/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.card-block{
min-height: 338px;
}    
</style>
</head>

<body>
	<%@ include file="common/sidebar.jsp" %>
 <div class="content-wrapper"   style="margin-left:0px;">
  <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-2"></div>
          <!-- /.col -->
          <div class="col-md-10">
            <div class="card card-primary card-outline">
              <div class="card-header">
                <h3 class="card-title">게시글 작성</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <div class="form-group">
                  <select class="form-control" placeholder="게시판을 선택해 주세요" >
                          <option>인문사회</option>
                          <option>자연과학</option>
                          <option>기</option>
                          <option>타</option>
                  </select>
                </div>
                <div class="form-group">
                  <input class="form-control" placeholder="제목을 입력해 주세요">
                </div>
                <div class="form-group">
                    <textarea id="compose-textarea" class="form-control" style="height: 300px">
                		<p>
                			테스트용입니다.
                			<br>
                			1234
                			<br>
                			1234
                			<br>
                			123
                			<br>
                			1234
                			<br>
                		
                		</p>
                		
                    </textarea>
                </div>
                <div class="form-group">
                  <div class="btn btn-default btn-file">
                    <i class="fas fa-paperclip"></i> 첨부파일
                    <input type="file" name="attachment">
                  </div>
                  <p class="help-block">Max. 32MB</p>
                </div>
              </div>
              <!-- /.card-body -->
              <div class="card-footer">
                <div class="float-right">
                  <button type="submit" class="btn btn-primary"><i class="fas fa-pencil-alt"></i> 등록하기</button>
                </div>
                <button type="reset" class="btn btn-default"><i class="fas fa-times"></i> 취소하기</button>
              </div>
              <!-- /.card-footer -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <%@ include file="../common/footer.jsp"%>
  
  <script>
  $(function () {
    //Add text editor
    $('#compose-textarea').summernote()
  })
</script>
</body>
</html>