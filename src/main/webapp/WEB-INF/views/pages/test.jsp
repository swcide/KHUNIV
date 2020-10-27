<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ include file="common/header.jsp" %>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="margin-left: 0px;">
    <!-- Content Header (Page header) -->
    <section class="content-header" style="margin-bottom:-10px;">
      <div class="container-fluid">
        <div class="row mb-2">
          
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-2">

          <!-- Main Sidebar Container -->
			<aside class="main-sidebar sidebar-dark-primary elevation-4" style="height: 100%;">
			<!-- Brand Logo -->
			<a href="myPage.jsp" class="brand-link">
				<p style="text-align:center; margin-bottom:-3px;">마이페이지</p>
			</a>


			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user panel (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img src="/woosong/dist/img/user2-160x160.jpg"
							class="img-circle elevation-2" alt="User Image">
					</div>
					<div class="info">
						<a href="#" class="d-block">윤기훈</a>
					</div>
				</div>

				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<li class="nav-header"></li>
						<li class="nav-item"><a href="#" class="nav-link"> <i
								class="nav-icon far fa-calendar-alt"></i>
								<p>학사일정</p>
						</a></li>
						<!-- 강의/성적 --> 
						<li class="nav-item has-treeview"><a href="#"
							class="nav-link"> <i class="nav-icon fas fa-book"></i>
								<p>
									강의/성적 <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item has-treeview"><a href="#"
									class="nav-link"> <i class="nav-icon fas fa-edit"></i>
										<p>
											수강신청 <i class="right fas fa-angle-left"></i>
										</p>
								</a>
									<ul class="nav nav-treeview">
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>수강신청안내</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>강좌개설정보</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>수강신청</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>수강신청현황</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>수강과목변경</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>청강신청</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>선수학점조회</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>시간표조회</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>성적조회</p>
										</a></li>
									</ul></li>
							</ul>
							<ul class="nav nav-treeview">
								<li class="nav-item has-treeview"><a href="#"
									class="nav-link"> <i class="nav-icon fas fa-edit"></i>
										<p>
											졸업유예 <i class="right fas fa-angle-left"></i>
										</p>
								</a>
									<ul class="nav nav-treeview">
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>졸업유예안내</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>유예신청</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>신청확인</p>
										</a></li>
									</ul></li>
							</ul>
							<ul class="nav nav-treeview">
								<li class="nav-item has-treeview"><a href="#"
									class="nav-link"> <i class="nav-icon fas fa-edit"></i>
										<p>
											학위취득 자격시험 <i class="right fas fa-angle-left"></i>
										</p>
								</a>
									<ul class="nav nav-treeview">
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>토익점수 등록</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>전공자격증 등록</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>전공과목 시험</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>학위취득가부확인</p>
										</a></li>
									</ul></li>
							</ul>
							<!-- /강의/성적 --> 
							<!-- 학적관리 -->
						<li class="nav-item has-treeview"><a href="#"
							class="nav-link"> <i class="nav-icon fas fa-table"></i>
								<p>
									학적관리 <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item has-treeview"><a href="#"
									class="nav-link"> <i class="nav-icon fas fa-copy"></i>
										<p>
											휴학 <i class="right fas fa-angle-left"></i>
										</p>
								</a>
									<ul class="nav nav-treeview">
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>일반휴학안내</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>병역휴학안내</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>질병휴학안내</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>휴학신청</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>신청확인</p>
										</a></li>

									</ul></li>
							</ul>
							<ul class="nav nav-treeview">
								<li class="nav-item has-treeview"><a href="#"
									class="nav-link"> <i class="nav-icon fas fa-copy"></i>
										<p>
											자퇴 <i class="right fas fa-angle-left"></i>
										</p>
								</a>
									<ul class="nav nav-treeview">
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>자퇴안내</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>자퇴신청</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>신청확인</p>
										</a></li>
									</ul></li>
							</ul>
							<ul class="nav nav-treeview">
								<li class="nav-item has-treeview"><a href="#"
									class="nav-link"> <i class="nav-icon fas fa-copy"></i>
										<p>
											복학 <i class="right fas fa-angle-left"></i>
										</p>
								</a>
									<ul class="nav nav-treeview">
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>복학안내</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>복학신청</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>신청확인</p>
										</a>
									</ul></li>
							</ul>
							<ul class="nav nav-treeview">
								<li class="nav-item has-treeview"><a href="#"
									class="nav-link"> <i class="nav-icon fas fa-copy"></i>
										<p>
											전과 <i class="right fas fa-angle-left"></i>
										</p>
								</a>
									<ul class="nav nav-treeview">
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>전과안내</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>복수전공안내</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>부전공안내</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>신청하기</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>신청확인</p>
										</a>
									</ul></li>
							</ul>
							<ul class="nav nav-treeview">
								<li class="nav-item has-treeview"><a href="#"
									class="nav-link"> <i class="nav-icon fas fa-copy"></i>
										<p>
											등록금납부 <i class="right fas fa-angle-left"></i>
										</p>
								</a>
									<ul class="nav nav-treeview">
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>납부방법</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>납부확인</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>납부유예</p>
										</a>
									</ul></li>
							</ul>
							<ul class="nav nav-treeview">
								<li class="nav-item has-treeview"><a href="#"
									class="nav-link"> <i class="nav-icon fas fa-copy"></i>
										<p>
											장학금 <i class="right fas fa-angle-left"></i>
										</p>
								</a>
									<ul class="nav nav-treeview">
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>장학금목록</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>장학금신청</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>신청확인</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>수혜자 명단 확인</p>
										</a>
									</ul></li>
							</ul>
							<ul class="nav nav-treeview">
								<li class="nav-item has-treeview"><a href="#"
									class="nav-link"> <i class="nav-icon fas fa-copy"></i>
										<p>
											증명서발급 <i class="right fas fa-angle-left"></i>
										</p>
								</a>
									<ul class="nav nav-treeview">
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>재학증명서</p>
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link"> <i
												class="far fa-dot-circle nav-icon"></i>
												<p>졸업증명서</p>
										</a></li>
									</ul></li>
							</ul></li>
							<!-- /학적관리 -->
					</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>
          </div>
          <!-- /.col -->
          
          
          
          
          
          
          
                  
          <div class="col-md-9">
            <div class="card">
              
              <div class="card-body">
                <div class="tab-content">
                  


 	<table id="profile" class="basic_table">
		<colgroup>
			<col style="width: 125px;" />
			<col style="width: 1px;" />
			<col style="width: 125px;" />
			<col style="width: 250px;" />
			<col style="width: 125px;" />
			<col style="width: 250px;" />
			<col style="width: *;" />
        </colgroup>
        <tbody>
			<tr>
				<td class="img" valign="middle" rowspan="4" style="Width:1%;">		
							<img src="../dist/img/프로필사진2.jpg" alt="윤기훈님의 사진" style="height:160px;width:140px;" />
				</td>
				<th width="90">학번</th>
				<td colspan="3">11402243</td>
			   
			</tr>
			<tr>
			    <th>성명</th>
			    <td><input id="pName" name="name" class="" type="text" value="윤기훈" maxlength="100" /></td>
			    <th>생년월일</th>
			    <td>
			    	<input id="pBirth" name="birth" type="text" value="1992.11.11" size="20" maxlength="30" required />
			    </td>
			</tr>
			<tr>
			    <th>자택</th>
			    <td><input id="pTel" name="tel" class="" type="text" value="--" maxlength="20" /></td>
			    <th>휴대폰</th>
			    <td><input id="pHp" name="hp" class="" type="text" value="010-1234-5678" maxlength="20" /></td>
			</tr>
			<tr>
			    <th>이메일</th>
			    <td colspan="3">
			    	<input id="pEmail" name="email" class="q2" type="text" value="gihun11@gmail.com" maxlength="100" />
			    	<label style="margin-left:10px;"
			    	 class="control control-radio"><input id="email_y/n" name="email_y/n" type="radio" value="Y" />&nbsp;학교메일<span class="control_indicator"></span></label>&nbsp;&nbsp;<label class="control control-radio">
			    	<input id="" name="email_y/n" type="radio" value="N" checked="checked" />&nbsp;개인메일<span class="control_indicator"></span></label>&nbsp;&nbsp;
			    </td>
			</tr>
			
			
			
			
						<tr>
			    <td colspan="5"> <input type="file" value="사진 변경"></td>

			</tr>
			
			
			
			
			
			
			<tr>
			    <th>주소</th>
			    <td colspan="4" height="70">
			    <input id="pZip" name="zip" title="우편번호" type="text" value="07643" size="7" maxlength="6" readonly="readonly"/> 
			    <a href="#" onclick="" class="btn2 spot"><span>우편번호 찾기</span></a>
			    <br/>
			    <input id="address" name="address" title="주소1" class="" type="text" value="인천광역시 중구 운서2로 37" maxlength="100" readonly="readonly" />  
			    <input id="a_detail" name="a_detail" title="주소2" class="" type="text" value="구일 주택 402호" maxlength="100" /></td>
			</tr>
			<tr>
				<th height="35">우편수령지</th>
				<td colspan="4">
					<select id="POST_RECEIPT_TYPE_GB" name="POST_RECEIPT_TYPE_GB" title="우편수령지">
	<option value="USRT1301" selected="selected">집</option>
	<option value="USRT1302">직장</option>
	</select>
				</td>
			</tr>

		</tbody>
	</table>

                </div>

              </div><!-- /.card-body -->
              
              
              
              
              
              
              
              
              
              
            </div>
                        <div class="card">
            
                          <div class="card-header p-2">
                <ul class="nav nav-pills">
                  <li class="nav-item"><a class="nav-link active" href="#activity1" data-toggle="tab">학습강좌</a></li>
                  <li class="nav-item"><a class="nav-link" href="#activity2" data-toggle="tab">시험</a></li>
                  <li class="nav-item"><a class="nav-link" href="#activity3" data-toggle="tab">토론</a></li>
                                    <li class="nav-item"><a class="nav-link"  href="#activity4" data-toggle="tab">프로젝트</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#activity5" data-toggle="tab">게시판</a></li>
                  
                </ul>
              </div><!-- /.card-header -->
              <div class="card-body">
                <div class="tab-content">
                
               <div class="active tab-pane" id="activity1">
                    <!-- Post -->
                    <div class="post">
        <!-- Table row -->
              <div class="row">
                <div class="col-12 table-responsive">
                  <table class="table table-striped">
                    <thead>
                    <tr>
                      <th>학기</th>
                      <th>과목명</th>
                      <th>이수</th>
                      <th>학점</th>
                      <th>담당교수</th>
                      <th>내 진도율</th>
                    </tr>
                    </thead>
                    <tbody>
                    
                    <tr>
                      <td>1</td>
                      <td>Call of Duty</td>
                      <td>전선</td>
                      <td>3</td>
                      <td>이성호</td>
                      <td>46%</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>Need for Speed IV</td>
                      <td>교선</td>
                      <td>3</td>
                      <td>박길동</td>
                     <td>46%</td>
                      
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>Monsters DVD</td>
                      <td>전선</td>
                      <td>3</td>
                      <td>김휘경</td>
                      <td>46%</td>
                    
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>Grown Ups Blue Ray</td>
                      <td>전선</td>
                      <td>3</td>
                      <td>유승제</td>
                      <td>46%</td>
                      
                          <tr>
                      <td>1</td>
                      <td>Need for Speed IV</td>
                      <td>교선</td>
                      <td>3</td>
                      <td>김지숙</td>
                     <td>46%</td>
                      
                    </tr>
                    </tbody>
                  </table>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
                    </div>
                    

                  </div>
                  <!-- /.tab-pane -->
            
                    <div class="tab-pane" id="activity2">
                    <!-- Post -->
                    <div class="post">
        <!-- Table row -->
              <div class="row">
                <div class="col-12 table-responsive">
                  <table class="table table-striped">
                    <thead>
                    <tr>
                      <th>학기</th>
                      <th>과목명</th>
                      <th>시험일자</th>
                      <th>담당교수</th>
                    </tr>
                    </thead>
                    <tbody>
                  <tr><td colspan=4>현재 진행중인 시험이 없습니다.<td></tr>
                    </tbody>
                  </table>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
                    </div>
                    

                  </div>
                  <!-- /.tab-pane -->
                  <div class="tab-pane" id="activity3">
                    <!-- Post -->
                    <div class="post">
        <!-- Table row -->
              <div class="row">
                <div class="col-12 table-responsive">
                  <table class="table table-striped">
                    <thead>
                    <tr>
                      <th>학기</th>
                      <th>과목명</th>
                      <th>토론명</th>
                      <th>참여기간</th>
                      <th>게시글수</th>
                      <th>댓글수</th>
                      <th>참여여부</th>
                      
                    </tr>
                    </thead>
                    <tbody>
                    
                    <tr>
                      <td>2</td>
                      <td>Call of Duty</td>
                      <td>팀플이란 뭐라고 생각하는가?</td>
                      <td>2015-05-05~2020-05-06</td>
                      <td>이성호</td>
                      <td>46%</td>
                      <td>y/n</td>
 
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>Need for Speed IV</td>
                      <td>코딩은 필요한가?</td>
                      <td>2015-05-05~2020-05-06</td>
                      <td>박길동</td>
                     <td>46%</td>
                      <td>y/n</td>
                      
                    </tr>
         
                    <tr>
                      <td>1</td>
                      <td>Grown Ups Blue Ray</td>
                      <td>자율 정신이란?</td>
                      <td>2015-05-05~2020-05-06</td>
                      <td>유승제</td>
                      <td>46%</td>
                     <td>y/n</td>
                      
                      
                          <tr>
                      <td>1</td>
                      <td>Need for Speed IV</td>
                      <td>상대방의 마음을 읽는 방법</td>
                      <td>2015-05-05~2020-05-06</td>
                      <td>김지숙</td>
                     <td>46%</td>
                     <td>y/n</td>
                      
                    </tr>
                    </tbody>
                  </table>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
                    </div>
                    

                  </div>
                  <!-- /.tab-pane -->
                  <div class="tab-pane" id="activity4">
                    <!-- Post -->
                    <div class="post">
        <!-- Table row -->
              <div class="row">
                <div class="col-12 table-responsive">
                  <table class="table table-striped">
                    <thead>
                    <tr>
                      <th>학기</th>
                      <th>과목명</th>
                      <th>이수</th>
                      <th>학점</th>
                      <th>담당교수</th>
                      <th>내 진도율</th>
                    </tr>
                    </thead>
                    <tbody>
                  <tr><td colspan=6>현재 진행중인 프로젝트가 없습니다.<td></tr>
                    </tbody>
                  </table>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
                    </div>
                    

                  </div>
                  

                     <div class="tab-pane" id="activity5">
                    <!-- Post -->
                    <div class="post">
        <!-- Table row -->
              <div class="row">
                <div class="col-12 table-responsive">
                  <table class="table table-striped">
                    <thead>
                    <tr>
                      <th>학기</th>
                      <th>과목명</th>
                      <th>게시판명</th>
                      <th>학점</th>
                      <th>게시판기간</th>
                      <th>참여점수</th>
                    </tr>
                    </thead>
                    <tbody>
                  <tr><td colspan=6>게시물이 존재하지 않습니다.<td></tr>
                    </tbody>
                  </table>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
                    </div>
                    

                  </div>
                  </div>
                  

                  <!-- /.tab-pane -->
                </div>
                <!-- /.tab-content -->
              </div><!-- /.card-body -->
            <!-- /.nav-tabs-custom -->
          </div>
          </div>
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
         

    
          
          
          
          
          
          
          

          
          
          
          
    <style>
    #profile{width:100%;margin-left:0.6%;}
        #profile td{border:1px solid #fff; background-color:#ededed;padding:2px 10px 2px 10px;}
        #profile th{text-align:center;border:1px solid #fff; background-color:#ededed;}
    </style>      
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
         

    
          
          
          
          
          
          
          

          
          
           <script>
    var dropdown = document.getElementsByClassName("dropdown-btn");
    var i;

    for (i = 0; i < dropdown.length; i++) {
      dropdown[i].addEventListener("click", function() {
      this.classList.toggle("active");
      var dropdownContent = this.nextElementSibling;
      if (dropdownContent.style.display === "block") {
      dropdownContent.style.display = "none";
      } else {
      dropdownContent.style.display = "block";
      }
      });
    }

    </script>	
          
          
          
          
          
          
          
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
          	<%@ include file="common/footer.jsp" %>
          