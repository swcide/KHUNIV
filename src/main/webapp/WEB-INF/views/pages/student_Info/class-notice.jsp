<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ include file="../common/header.jsp" %>

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
		<aside class="main-sidebar sidebar-dark-primary elevation-4" style="height: 777px;">
						<!-- Brand Logo -->
						<a href="index3.html" class="brand-link"> <img src="../../dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8"> <span class="brand-text font-weight-light">학사정보</span>
						</a>

						<!-- Sidebar -->
						<div class="sidebar">
							<!-- Sidebar user panel (optional) -->
							<div class="user-panel mt-3 pb-3 mb-3 d-flex">
								<div class="image">
									<img src="../../dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
								</div>
								<div class="info">
									<a href="#" class="d-block">윤기훈</a>
								</div>
							</div>

							<!-- Sidebar Menu -->
							<nav class="mt-2">
								<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
									<li class="nav-header"></li>
									<li class="nav-item"><a href="#" class="nav-link"> <i class="nav-icon far fa-calendar-alt"></i>
											<p>학사일정</p>
									</a></li>
									<!-- 강의/성적 -->
									<li class="nav-item has-treeview"><a href="#" class="nav-link"> <i class="nav-icon fas fa-book"></i>
											<p>
												강의/성적 <i class="right fas fa-angle-left"></i>
											</p>
									</a>
										<ul class="nav nav-treeview">
											<li class="nav-item has-treeview"><a href="#" class="nav-link"> <i class="nav-icon fas fa-edit"></i>
													<p>
														수강신청 <i class="right fas fa-angle-left"></i>
													</p>
											</a>
												<ul class="nav nav-treeview">
													<li class="nav-item"><a href="class-notice.jsp" class="nav-link"> <i class="far fa-dot-circle nav-icon"></i>
															<p>수강신청안내</p>
													</a></li>
													<li class="nav-item"><a href="class-list.jsp" class="nav-link"> <i class="far fa-dot-circle nav-icon"></i>
															<p>강좌개설정보</p>
													</a></li>
													<li class="nav-item"><a href="class-sub.jsp" class="nav-link"> <i class="far fa-dot-circle nav-icon"></i>
															<p>수강신청</p>
													</a></li>
													<li class="nav-item"><a href="class-audit.jsp" class="nav-link"> <i class="far fa-dot-circle nav-icon"></i>
															<p>청강신청</p>
													</a></li>
													
													<li class="nav-item"><a href="score-search.jsp" class="nav-link"> <i class="far fa-dot-circle nav-icon"></i>
															<p>성적조회</p>
													</a></li>
												</ul></li>
										</ul>
										<ul class="nav nav-treeview">
											<li class="nav-item has-treeview"><a href="class-grdDelay.jsp" class="nav-link"> <i class="nav-icon fas fa-edit"></i>
													<p>졸업유예</p>
											</a></li>
										</ul>
										<ul class="nav nav-treeview">
											<li class="nav-item has-treeview"><a href="bachelor-qualifyExam.jsp" class="nav-link"> <i class="nav-icon fas fa-edit"></i>
													<p>학위취득 자격시험</p>
											</a></li>
										</ul> <!-- /강의/성적 --> <!-- 학적관리 -->
									<li class="nav-item has-treeview"><a href="#" class="nav-link"> <i class="nav-icon fas fa-table"></i>
											<p>
												학적관리 <i class="right fas fa-angle-left"></i>
											</p>
									</a>
										<ul class="nav nav-treeview">
											<li class="nav-item has-treeview"><a href="class-abcense.jsp" class="nav-link"> <i class="nav-icon fas fa-copy"></i>
													<p>휴학</p>
											</a></li>
										</ul>
										<ul class="nav nav-treeview">
											<li class="nav-item has-treeview"><a href="class-retire.jsp" class="nav-link"> <i class="nav-icon fas fa-copy"></i>
													<p>자퇴</p>
											</a></li>
										</ul>
										<ul class="nav nav-treeview">
											<li class="nav-item has-treeview"><a href="class-return.jsp" class="nav-link"> <i class="nav-icon fas fa-copy"></i>
													<p>복학</p>
											</a></li>
										</ul>
										
										<ul class="nav nav-treeview">
											<li class="nav-item has-treeview"><a href="class-tuition.jsp" class="nav-link"> <i class="nav-icon fas fa-copy"></i>
													<p>등록금납부</p>
											</a></li>
										</ul>
										<ul class="nav nav-treeview">
											<li class="nav-item has-treeview"><a href="class-scholarship.jsp" class="nav-link"> <i class="nav-icon fas fa-copy"></i>
													<p>
														장학금
													</p>
											</a>
										</ul>
										<ul class="nav nav-treeview">
											<li class="nav-item has-treeview"><a href="certificate-print.jsp" class="nav-link"> <i class="nav-icon fas fa-copy"></i>
													<p>증명서발급</p>
											</a></li>
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
          
          
          
          <div class="col-md-10">
            
                       <div class="card card-primary card-outline">
          <div class="card-header">
            <h3 class="card-title">
              <i class="fas fa-edit"></i>
              수강신청안내
            </h3>
          </div>
          <div class="card-body">
            <div class="row">
              <div class="col-5 col-sm-3">
                <div class="nav flex-column nav-tabs h-100" id="vert-tabs-tab" role="tablist" aria-orientation="vertical">
                  <a class="nav-link active" id="vert-tabs-home-tab" data-toggle="pill" href="#vert-tabs-home" role="tab" aria-controls="vert-tabs-home" aria-selected="true">수강신청</a>
                  <a class="nav-link" id="vert-tabs-profile-tab" data-toggle="pill" href="#vert-tabs-profile" role="tab" aria-controls="vert-tabs-profile" aria-selected="false">재수강</a>
                  <a class="nav-link" id="vert-tabs-messages-tab" data-toggle="pill" href="#vert-tabs-messages" role="tab" aria-controls="vert-tabs-messages" aria-selected="false">계절학기</a>
                </div>
              </div>
              <div class="col-7 col-sm-9">
                <div class="tab-content" id="vert-tabs-tabContent">
                <!-- 수강신청 -->
                  <div class="tab-pane text-left fade show active" id="vert-tabs-home" role="tabpanel" aria-labelledby="vert-tabs-home-tab">
                    <label style="color: #007bff; font-size: 30px;"> 수강신청 </label><br>
                     <p>수강신청은 한 학기 동안 수강하고자 하는 교과목을 정하여 신청하는 절차입니다.</p><br>
                     <label style="color: #007bff; font-size: 20px;">신청기간</label><br>
                     <ul>
                     	<li style="list-style-type: decimal;">신입생 :  2월 중</li>
                     	<li style="list-style-type: decimal;">재학생 : 학기 개시 1개월 전(조기수강신청), 1학기-1월말, 2학기-7월말</li>
                     	<li style="list-style-type: none; "> >> 자세한 일정은 학사공지를 통해 확인 부탁드립니다.</li>
                     </ul>
                     <label style="color: #007bff; font-size: 20px;">수강절차</label><br>
                     <ul>
                     	<li>수강편람에 의거 수강하고자 하는 교과목을 신청기간에 홈페이지에서 신청합니다.</li>
                     </ul>
                     <label style="color: #007bff; font-size: 20px;">수강변경</label><br>
                     <ul>
                     	<li>정보화포털(본인 ID로 로그인 → 학사 → 행정 → 수강정보)에서 수강신청 내역을 확인한 후 변경(취소, 추가신청)하면 됩니다.</li>
                     </ul>
                  </div>
                  <!--  재수강 -->
                  <div class="tab-pane fade" id="vert-tabs-profile" role="tabpanel" aria-labelledby="vert-tabs-profile-tab">
                  <label style="color: #007bff; font-size: 30px;"> <p>재수강</p> </label><br>
                     <label style="color: #007bff; font-size: 20px;">재수강 자격제한</label><br>
                     <ul>
                     	<li>2006학년도 1학기부터 수강한 과목의 취득성적이 C+이하인 과목에 한하여 재수강을 허용합니다.</li>
                     	<li style="list-style-type: none;">단, 2005학년도 제2학기까지 수강한 과목에 대해서는 재수강 자격제한 규정이 적용되지 않습니다.</li>
                     </ul>
                     <label style="color: #007bff; font-size: 20px;">재수강 절차</label><br>
                     <ul>
                     	<li>수강신청 시 재수강 표시란에 수강하였던 연도 및 학기를 입력합니다.</li>
                     <li style="list-style-type: none; "> >> 2005. 2학기 수강과목: 재수표시란에 「20052」로 입력</li>
                     	
                     </ul>
                     <label style="color: #007bff; font-size: 20px;">재수강 과목의 성적처리</label><br>
                     <ul>
                     	<li>재수강 시 취득한 성적을 인정하되, 성적표에 재수강 과목임을 표시합니다.</li>
                     	<li style="list-style-type: none;">단, 학사과정의 유급규정을 적용하는 대학(수의과대학, 의과대학, 치과대학)과 대학원과정은 예외로 합니다.</li>
                     </ul>
                  </div>
                  <!--  계절학기 -->
                  <div class="tab-pane fade" id="vert-tabs-messages" role="tabpanel" aria-labelledby="vert-tabs-profile-tab">
                  <label style="color: #007bff; font-size: 30px;"> <p>계절학기</p> </label><br>
                     <p>계절수업은 학칙상의 정규학기와 구분되며, 방학 기간 중에 학생들에게 학점 취득의 기회를 추가로 제공하는 수업으로 해당 학기 재학생(휴학생 포함)중 계절수업 희망자를 대상으로 실시됩니다</p><br>
                  
                     <label style="color: #007bff; font-size: 20px;">신청(변경) 기간</label><br>
                     <ul>
                     	<li>하계학기 5월 중, 동계학기 11월 중</li>
                     </ul>
                     <label style="color: #007bff; font-size: 20px;">신청 가능 학점</label><br>
                     <ul>
                     	<li>9학점(하계), 6학점(동계)</li>
                     <li style="list-style-type: none; ">동계계절학기 6학점 취득은 2008학년도부터 적용됨</li>
                     	
                     </ul>
                     <label style="color: #007bff; font-size: 20px;">수강 신청 대상</label><br>
                     <ul>
                     	<li>본교 학사과정 및 대학원과정 학생(휴학생 포함)</li>
                     	<li style="list-style-type: none; ">단, 당해학기 졸업을 목적으로 계절수업을 수강하는 경우 학생은 그 계절수업이 속한 정규학기에 등록한 자에 한합니다.</li>
                     	<li>학술교류 협정에 의거 소속대학장으로부터 수학을 추천받은 타교생</li>
                     	<li>외국대학에 재학하는 외국국적을 가진 학생으로, 본인이 수강을 원하여 대외협력본부에서 추천된 자</li>
                     </ul>
                     <label style="color: #007bff; font-size: 20px;">수강 신청 취소</label><br>
                     <ul>
                     	<li>수업주수 1 / 2 이전까지</li>
                     </ul>
                     <label style="color: #007bff; font-size: 20px;">납입금 반환</label><br>
                     <ul>
                     	<li>학기 개시일 전 : 납입금 전액</li>
                     	<li>총수업일수의 1/3 경과 전 : 납입금의 2/3</li>
                     	<li>총수업일수의 1/3 경과 후 ~ 1/2 경과 전: 납입금의 1/2</li>
                     	<li>총수업일수의 1/2 경과 후에는 반환하지 아니함</li>
                     </ul>
                     <label style="color: #007bff; font-size: 20px;">학점 및 성적</label><br>
                     <ul>
                     	<li>취득한 학점은 학칙에 규정된 과정의 이수학점에 포함하되, 계절학기는 수학연한에 포함하지 않습니다.</li>
                     	<li>계절학기에서 취득한 성적 평점평균은 당해 학년도의 정규학기(1, 2학기) 성적 평점평균 계산에는 합산하지 않으며 당해 학년도의 1년간 성적 평점평균 계산에 합산합니다.</li>
                     	<li>논문제출자격시험 대체교과목으로 개설된 강좌를 수강하여 일정수준 이상의 성적을 취득한 경우 해당과목의 시험을 면제합니다.</li>
                     </ul>
                  </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- /.card -->
        </div>
          </div>
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
         

    
          
          
          
          
          
          
          

          
          
          
          
          
          
          
          
          
          
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
          	<%@ include file="../common/footer.jsp" %>
          