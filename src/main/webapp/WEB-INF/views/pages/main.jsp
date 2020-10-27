<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/header.jsp"%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header" style="margin-bottom: -10px;">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<p style="font-size: 20px; margin-left: 2%;">학생포털시스템</p>
					<p style="font-size: 14px; margin-left: 2.5%; margin-top: -20px;">student
						portal system</p>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><select><option>학과
									홈페이지</option>
								<option>컴퓨터공학과</option>
								<option>전자전기공학과</option>
								<option>실용음악학과</option></select></li>
					</ol>
				</div>
			</div>
		</div>
		<!-- /.container-fluid -->
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-3">

					<!-- Profile Image -->
					<!-- #007bff -->
					<div class="card card-primary card-outline"
						style="border-color: #0053c2;">
						<div class="card-body box-profile">
							<div class="text-center">
								<img class="profile-user-img img-fluid img-circle"
									src="../dist/img/프로필사진2.jpg" alt="User profile picture">
							</div>

							<h3 class="profile-username text-center">윤기훈님</h3>

							<p class="text-muted text-center">컴퓨터 공학과</p>

							<ul class="list-group list-group-unbordered mb-3">
								<li class="list-group-item"><b>재학중</b> <a
									class="float-right">2학년 1학기</a></li>

								<li class="list-group-item"><b>담당교수</b> <a
									class="float-right">이성호</a></li>

								<li class="list-group-item">

									<div class="progress-group">
										<p>학습 진도율</p>
										<span class="float-right"><b>80%</b></span>
										<div class="progress progress-sm" style="width: 85%;">
											<div class="progress-bar"
												style="background-color: gray; width: 80%;"></div>
										</div>
									</div>
								</li>
								<li class="list-group-item"><p
										style="margin-bottom: 8px; font-size: 15px;">※ 바로가기</p> <a
									href="./student_Info/certificate-print.jsp" class=""
									style="background-color: #e8f3ff; color: black;"><b>증명서
											발급</b></a> <a href="./student_Info/class-tuition.jsp" class=""
									style="margin-left: 3%; background-color: #e8f3ff; color: black;"><b>등록금
											납부</b></a> <a href="./student_Info/class-sub.jsp" class=""
									style="margin-left: 3%; background-color: #e8f3ff; color: black;"><b>수강신청</b></a>
									<a href="./student_Info/score-search.jsp" class=""
									style="margin-left: 3%; background-color: #e8f3ff; color: black;"><b>성적조회</b></a></li>
								<!--             <a href="#" class="btn btn-primary btn-block" style="background-color:#e0e0e0; color:#4d4d4d;border:none;margin-bottom:-20px;"><b>컴퓨터 공학과로 이동</b></a>
                  -->
								<a href="./test/testPage.jsp" class="btn btn-primary btn-block"
									style="background-color: white; border: 1px solid gray; margin-top: 10px; margin-bottom: -20px; color: black;"><b>시험보러가기</b></a>
							</ul>

						</div>
						<!-- /.card-body -->
					</div>
					<!-- /.card -->

					<!-- About Me Box -->
					<div class="card card-primary" style="margin-top: 25Px;">
						<div class="card-header"
							style="background-color: #003166; color: WHITE;">
							<h3 class="card-title">마이 페이지</h3>
						</div>
						<!-- /.card-header -->
						<div class="card-body">
							<strong><i class="fas fa-pencil-alt mr-1"></i><a
								href="myInfo/myPage.jsp" style="color: black;">개인정보수정</a></strong>

							<p class="text-muted" style="font-size: 14.5px; margin-top: 6px;">메일/휴대폰/주소/계좌
								정보 등을 업데이트 해주세요</p>

							<hr>

							<strong>📆 개인 업무 및 일정</strong>
							<p class="text-muted" style="font-size: 14.5px; margin-top: 6px;">자신의
								학사 일정 및 개인 스케줄을 관리하세요</p>


						</div>
						<!-- /.card-body -->
					</div>
					<!-- /.card -->
				</div>
				<!-- /.col -->

























				<div class="col-md-9">
					<div class="card">
						<div class="card-header p-2">
							<ul class="nav nav-pills">
								<li class="nav-item"><a class="nav-link active"
									href="#activity" data-toggle="tab">학사공지</a></li>
								<li class="nav-item"><a class="nav-link" href="#timeline"
									data-toggle="tab">일반공지</a></li>
								<li class="nav-item"><a class="nav-link" href="#settings"
									data-toggle="tab">보도자료</a></li>
							</ul>
						</div>
						<!-- /.card-header -->
						<div class="card-body">
							<div class="tab-content">
								<div class="active tab-pane" id="activity">
									<!-- Post -->
									<div class="post">
										<div class="user-block">
											<img class="img-circle img-bordered-sm"
												src="../dist/img/user1-128x128.jpg" alt="user image">
											<span class="username"> <a href="#"
												style="color: gray;">황지희-학생지원팀</a> <a href="#"
												class="float-right btn-tool"><i class="fas fa-times"></i></a>
											</span> <span class="description">2020-09-21 7:30 PM today</span>
										</div>
										<!-- /.user-block -->
										<p>(재)KT그룹희망나눔재단은 지속적인 장학사업운영을 통한 대학생들의 안정적인 학업 여건 조성과 사회
											발전에 기여하는 ICT분야의 창의인재 육성 및 나눔문화 확산에 기여하는 인재를 양성하기 위해 장학생을 선발하여
											장학금을 지급하고 있으니, 해당 학생들은 다음 내용을 참고하시어 기한 내 신청하시기 바랍니다.</p>

										<p>

											<span class="float-right"> <a href="#"
												class="link-black text-sm"
												style="text-decoration: underline;"> 학사공지 더보기 </a>
											</span>
										</p>

									</div>
									<!-- /.post -->




								</div>
								<!-- /.tab-pane -->
								<div class="tab-pane" id="timeline">
									<!-- Post -->
									<div class="post">
										<div class="user-block">
											<img class="img-circle img-bordered-sm"
												src="../dist/img/user1-128x128.jpg" alt="user image">
											<span class="username"> <a href="#"
												style="color: gray;">안고윤 팀장-정보지원센터</a> <a href="#"
												class="float-right btn-tool"><i class="fas fa-times"></i></a>
											</span> <span class="description">2020-09-21 7:30 PM today</span>
										</div>
										<!-- /.user-block -->
										<p>학생 여러분 안녕하십니까. 2020년 9월 17일(목) 0시부터 4시 사이에 시스템 정기 점검이
											있을 예정입니다. 시스템 장비 점검 및 보안패치, 업데이트 작업으로 인하여 점검시간내 접속불가 및 단락현상이
											있을 예정이오니 다소 불편하시더라도 양해하여 주시기 바라오며, 점검 작업이 종료한 후 서비스를 이용하시기
											바랍니다. 아래의 세부 내용을 확인 하여 주시기 바랍니다. - 아 래 - 1. 작업 일시 : 2020년 9월
											17일(목) 0:00 ~ 4:00 (4시간) 2. 작업 내용 : 시스템 보안 패치 및 업데이트 수행 3. 참고
											사항 : 동 시간대 홈페이지 접속 불가 및 일시적인 단락(서버별로 리부팅 약 10분~30분간 단락 예상) 보다
											안정적인 서비스를 제공하기 위하여 노력 하겠습니다.</p>

										<p>

											<span class="float-right"> <a href="#"
												class="link-black text-sm"
												style="text-decoration: underline;"> 일반공지 더보기 </a>
											</span>
										</p>

									</div>
									<!-- /.post -->

								</div>
								<!-- /.tab-pane -->

								<div class="tab-pane" id="settings">
									<!-- Post -->
									<div class="post">
										<div class="user-block">
											<img class="img-circle img-bordered-sm"
												src="../dist/img/user1-128x128.jpg" alt="user image">
											<span class="username"> <a href="#"
												style="color: gray;">출판부</a> <a href="#"
												class="float-right btn-tool"><i class="fas fa-times"></i></a>
											</span> <span class="description">2020-09-21 7:30 PM today</span>
										</div>
										<!-- /.user-block -->
										<p>우송시립대학교가 총학생회 주최로 진행한 온라인 2020 Summer Festival을 성공적으로
											마감했다고 3일 밝혔다. 전국 2개 지역 캠퍼스를 보유하고 있는 우송대는 그동안 다양한 온·오프라인 행사와
											활발한 커뮤니티 활동을 병행해 왔다</p>

										<p>

											<span class="float-right"> <a href="#"
												class="link-black text-sm"
												style="text-decoration: underline;"> 더보기 </a>
											</span>
										</p>

									</div>
									<!-- /.post -->
								</div>
								<!-- /.tab-pane -->
							</div>
							<!-- /.tab-content -->
						</div>
						<!-- /.card-body -->










					</div>
					<div class="card">

						<div class="card-header p-2">
							<ul class="nav nav-pills">
								<li class="nav-item"><a class="nav-link active"
									href="#activity1" data-toggle="tab">학습강좌</a></li>
								<li class="nav-item"><a class="nav-link" href="#activity2"
									data-toggle="tab">시험</a></li>
								<li class="nav-item"><a class="nav-link" href="#activity4"
									data-toggle="tab">프로젝트</a></li>
								<li class="nav-item"><a class="nav-link" href="#activity5"
									data-toggle="tab">게시판</a></li>

							</ul>
						</div>

						<!-- /.card-header -->
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
															<td><a href="./lecture/lectureListDetail.jsp">Call
																	of Duty</a></td>
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
														<tr>
															<td colspan=4>현재 진행중인 시험이 없습니다.
															<td>
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
														<tr>
															<td colspan=6>현재 진행중인 프로젝트가 없습니다.
															<td>
														</tr>
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
														<tr>
															<td colspan=6>게시물이 존재하지 않습니다.
															<td>
														</tr>
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
					</div>
					<!-- /.card-body -->
					<!-- /.nav-tabs-custom -->
				</div>
			</div>





































			<!-- /.col -->
		</div>
		<!-- /.row -->
</div>
<!-- /.container-fluid -->
</section>
<!-- /.content -->
</div>
<%@ include file="common/footer.jsp"%>
