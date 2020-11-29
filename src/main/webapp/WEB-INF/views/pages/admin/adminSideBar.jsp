<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<body>
		<!-- side bar -->
		<div id="sidebar" class='active'>
			<div class="sidebar-wrapper active">
				<div class="sidebar-header">
				<img src="resources/img/big-logo.png" style="width: 200px; height: 200px;" onclick="location.href='admin.do'">
				</div>
				<div class="sidebar-menu">
					<ul class="menu">
						<li class="sidebar-item  has-sub"><a href="#" class='sidebar-link'> <i data-feather="triangle" width="20"></i> <span>학생</span>
						</a>
							<ul class="submenu ">
								<li><a href="manageStudent.do">학적관리현황</a></li>
							</ul></li>

						<li class="sidebar-item  has-sub"><a href="#" class='sidebar-link'> <i data-feather="briefcase" width="20"></i> <span>게시판</span>
						</a>
							<ul class="submenu ">
								<li><a href="manageBoard.do">게시판 신고현황</a></li>
								<li><a href="manageQna.do">QnA 게시판</a></li>
								<li><a href="manageNotice.do?nType=1">학사공지사항 등록</a></li>
								<li><a href="manageNotice.do?nType=2">일반공지사항 등록</a></li>
							</ul></li>

						<li class="sidebar-item  has-sub"><a href="#" class='sidebar-link'> <i data-feather="briefcase" width="20"></i> <span>등록</span>
						</a>
							<ul class="submenu ">
								<li><a href="insertStudent.do">학생 등록</a></li>
								<li><a href="insertProfessor.do">교수 등록</a></li>
								<li><a href="insertLecture.do">강의 등록</a></li>
							</ul></li>

					</ul>
				</div>
<!-- 				<button class="sidebar-toggler btn x"> -->
<!-- 					<i data-feather="x"></i> -->
<!-- 				</button> -->
			</div>
		</div>
</body>
</html>
