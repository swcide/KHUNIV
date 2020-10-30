<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
ul.tab2 {
	margin: 0px;
	padding: 0px;
	list-style: none;
}

ul.tab2 li {
	background: none;
	color: #222;
	display: inline-block;
	cursor: pointer;
}

ul.tab2 li.current {
	background: #ededed;
	color: #222;
}

.tab-content2 {
	display: none;
	background: #ededed;
	padding: 15px;
}

.tab-content2.current {
	display: contents;
}

.afterclassT {
	width: 100%;
	margin: 0;
	text-align: left;
}

.afterclassT th {
	padding: 8px 10px;
}

.afterclassT td {
	border-top: 1px solid rgba(0, 0, 0, 0.06);
	padding: 17px 10px;
}

.afterclassT .product-thumbnail .product-thumbnail-wrapper {
	position: relative;
}

.afterclassT .product-thumbnail .product-thumbnail-wrapper .product-thumbnail-remove
	{
	position: absolute;
	top: -5px;
	right: -8px;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 11.2px;
	font-size: 0.7rem;
	color: #212121;
	width: 20px;
	height: 20px;
	background: #FFF;
	border: 1px solid #dbdbdb;
	border-radius: 100%;
	box-shadow: 0px 0px 19px -6px rgba(0, 0, 0, 0.5);
	text-decoration: none;
	transition: ease background 300ms;
}

.afterclassT .product-thumbnail .product-thumbnail-wrapper .product-thumbnail-remove:hover
	{
	background: #f4f4f4;
}

.afterclassT .product-name {
	padding-left: 22.4px;
	padding-left: 1.4rem;
}

.nav-link {
	padding: .5rem 0.7rem;
}
</style>
</head>
<body>
	<%@include file="../common/administration_header.jsp"%>
	<div class="body">
		<div role="main" class="main">
			<section class="page-header page-header-classic">
				<div class="container">
					<div class="row"></div>
					<div class="row">
						<div class="col p-static">
							<h1 data-title-border>수강신청</h1>
						</div>
					</div>
				</div>
			</section>
			<div class="container py-2" style="max-width: 1500px;">
				<div class="row">
					<!-- 학적관리 사이드바 -->
					<div class="col-lg-2 order-2 order-lg-1 mt-4 mt-lg-0">
						<%@include file="ad_Sidebar.jsp"%>
					</div>

					<!-- 컨텐츠 -->
					<div role="main" class="col-lg-10 order-1 order-lg-2">
						<div class="row mb-12 pb-3">
							<div class="tabs col-lg-6 mb-4 mb-lg-0 " style="display: inline-block;">
								<h4>2020-2학기 개설 강의 목록</h4>
								<ul class="nav nav-tabs " style="width: 612px;">
									<li class="nav-item active"><a class="nav-link active text-8 " id="major" href="#popular" data-toggle="tab" style="line-height: 30px;"> 전공</a></li>
									<li class="nav-item"><a class="nav-link text-8" id="elective" href="#recent" data-toggle="tab" style="line-height: 30px;"> 교양</a></li>
								</ul>
								<div class="tab-content" style="width: 612px;">
									<div id="popular" class="tab-pane active">
										<ul class="tab2">
											<li class=" tab-link current" id="zclass" data-tab="0class"><a class="nav-link">전체</a></li>
											<li class=" tab-link " data-tab="1class"><a class="nav-link">1학년</a></li>
											<li class=" tab-link " data-tab="2class"><a class="nav-link">2학년</a></li>
											<li class=" tab-link" data-tab="3class"><a class="nav-link">3학년</a></li>
											<li class=" tab-link" data-tab="4class"><a class="nav-link">4학년</a></li>
										</ul>
									</div>
									<div id="recent" class="tab-pane ">
										<ul class="tab2">
											<li class="tab-link" id="xclass" data-tab="5class"><a class="nav-link">전체</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="tabs col-lg-1 mb-4 mb-lg-0 " style="align-self: center; text-align: right; margin-top: 50px;">
								<i class="icon-book-open icons text-10 col-lg-3 col-6"></i>
							</div>
							<div class="tabs col-lg-5 mb-4 mb-lg-0 " style="display: inline-block;">
								<div class="tabs">
									<h4 class="mb-6">나의 수강 신청 목록</h4>
									<blockquote class="blockquote-primary">
										<i class="icon-user-following icons text-color-primary text-15 pb-4"></i>
										<h4 class="card-title">
											수강신청하고자 하는 강의의 + 버튼을 누르시면<br> 과목이 추가되고 - 버튼은 삭제 버튼입니다.
										</h4>
									</blockquote>
								</div>
							</div>
						</div>
						<div class="row pb-4 mb-3">
							<div id="0class" class="tab-content2 current">
								<div class="col-lg-6 mb-5 mb-lg-0 card border-width-3 border-radius-0 border-color-hover-dark">
									<div class="table-responsive">
										<table class="shop_table cart">
											<thead>
												<tr class="text-color-dark">
													<th class=" text-uppercase" width="15%">강의번호</th>
													<th class="text-uppercase" width="20%">교과목 명</th>
													<th class=" text-uppercase" width="20%">강의 교수</th>
													<th class=" text-uppercase " width="10%">학년</th>
													<th class=" text-uppercase " width="10%">학점</th>
													<th class=" text-uppercase " width="15%">추가</th>
												</tr>
											</thead>
											<tbody>
												<tr class="cart_table_item">
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">C50121100</span>
													</td>
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">고1전시가론특강</span>
													</td>
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">김진영</span>
													</td>
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
													</td>
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
													</td>
													<td class="product-thumbnail">
														<button class="add">+</button>
													</td>
												</tr>
												<tr class="cart_table_item">
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">Cd5011100</span>
													</td>
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">고2전시가론특강</span>
													</td>
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">김진영</span>
													</td>
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
													</td>
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
													</td>
													<td class="product-thumbnail">
														<button class="add">+</button>
													</td>
												</tr>
												<tr class="cart_table_item">
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">Cf5011100</span>
													</td>
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">고3전시가론특강</span>
													</td>
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">김진영</span>
													</td>
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
													</td>
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
													</td>
													<td class="product-thumbnail">
														<button class="add">+</button>
													</td>
												</tr>
												<tr class="cart_table_item">
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">Ca5011100</span>
													</td>
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">고4전시가론특강</span>
													</td>
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">김진영</span>
													</td>
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
													</td>
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
													</td>
													<td class="product-thumbnail">
														<button class="add">+</button>
													</td>
												</tr>
												<tr class="cart_table_item">
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">C5011100</span>
													</td>
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">고5전시가론특강</span>
													</td>
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">김진영</span>
													</td>
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
													</td>
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
													</td>
													<td class="product-thumbnail">
														<button class="add">+</button>
													</td>
												</tr>
												<tr class="cart_table_item">
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">C5011100</span>
													</td>
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">고6전시가론특강</span>
													</td>
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">김진영</span>
													</td>
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
													</td>
													<td class="product-thumbnail">
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
													</td>
													<td class="product-thumbnail">
														<button class="add">+</button>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div id="1class" class="tab-content2 ">
								<div class="col-lg-6 mb-5 mb-lg-0 card border-width-3 border-radius-0 border-color-hover-dark">
									<form method="post" action="">
										<div class="table-responsive">
											<table class="shop_table cart">
												<thead>
													<tr class="text-color-dark">
														<th class=" text-uppercase" width="15%">강의번호</th>
														<th class="text-uppercase" width="20%">교과목 명</th>
														<th class=" text-uppercase" width="20%">강의 교수</th>
														<th class=" text-uppercase " width="10%">학년</th>
														<th class=" text-uppercase " width="10%">학점</th>
														<th class=" text-uppercase " width="15%">추가</th>
													</tr>
												</thead>
												<tbody>
													<tr class="cart_table_item">
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">C5011100</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">고전시가론특강</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">김진영</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">1</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">
																<button id="add">+</button>
															</span>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</form>
								</div>
							</div>
							<div id="2class" class="tab-content2 ">
								<div class="col-lg-6 mb-5 mb-lg-0 card border-width-3 border-radius-0 border-color-hover-dark">
									<form method="post" action="">
										<div class="table-responsive">
											<table class="shop_table cart">
												<thead>
													<tr class="text-color-dark">
														<th class=" text-uppercase" width="15%">강의번호</th>
														<th class="text-uppercase" width="20%">교과목 명</th>
														<th class=" text-uppercase" width="20%">강의 교수</th>
														<th class=" text-uppercase " width="10%">학년</th>
														<th class=" text-uppercase " width="10%">학점</th>
														<th class=" text-uppercase " width="15%">추가</th>
												</thead>
												<tbody>
													<tr class="cart_table_item">
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">C5011100</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">고전ㄴㄴ시가론특강</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">김진영</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">2</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">
																<button id="add">+</button>
															</span>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</form>
								</div>
							</div>
							<div id="3class" class="tab-content2 ">
								<div class="col-lg-6 mb-5 mb-lg-0 card border-width-3 border-radius-0 border-color-hover-dark">
									<form method="post" action="">
										<div class="table-responsive">
											<table class="shop_table cart">
												<thead>
													<tr class="text-color-dark">
														<th class=" text-uppercase" width="15%">강의번호</th>
														<th class="text-uppercase" width="20%">교과목 명</th>
														<th class=" text-uppercase" width="20%">강의 교수</th>
														<th class=" text-uppercase " width="10%">학년</th>
														<th class=" text-uppercase " width="10%">학점</th>
														<th class=" text-uppercase " width="15%">추가</th>
													</tr>
												</thead>
												<tbody>
													<tr class="cart_table_item">
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">C5011100</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">고전ㄴㄴ시가론특강</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">김진영</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">
																<button id="add">+</button>
															</span>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</form>
								</div>
							</div>
							<div id="4class" class="tab-content2 ">
								<div class="col-lg-6 mb-5 mb-lg-0 card border-width-3 border-radius-0 border-color-hover-dark">
									<form method="post" action="">
										<div class="table-responsive">
											<table class="shop_table cart">
												<thead>
													<tr class="text-color-dark">
														<th class=" text-uppercase" width="15%">강의번호</th>
														<th class="text-uppercase" width="20%">교과목 명</th>
														<th class=" text-uppercase" width="20%">강의 교수</th>
														<th class=" text-uppercase " width="10%">학년</th>
														<th class=" text-uppercase " width="10%">학점</th>
														<th class=" text-uppercase " width="15%">추가</th>
													</tr>
												</thead>
												<tbody>
													<tr class="cart_table_item">
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">C5011100</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">고전ㄴㄴ시가론특강</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">김진영</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">4</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">
																<button id="add">+</button>
															</span>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</form>
								</div>
							</div>
							<div id="5class" class="tab-content2 ">
								<div class="col-lg-6 mb-5 mb-lg-0 card border-width-3 border-radius-0 border-color-hover-dark">
									<form method="post" action="">
										<div class="table-responsive">
											<table class="shop_table cart">
												<thead>
													<tr class="text-color-dark">
														<th class=" text-uppercase" width="15%">강의번호</th>
														<th class="text-uppercase" width="20%">교과목 명</th>
														<th class=" text-uppercase" width="20%">강의 교수</th>
														<th class=" text-uppercase " width="10%">학년</th>
														<th class=" text-uppercase " width="10%">학점</th>
														<th class=" text-uppercase " width="15%">추가</th>
													</tr>
												</thead>
												<tbody>
													<tr class="cart_table_item">
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">C5011100</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">교양데스</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">김진영</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">
																<button id="add">+</button>
															</span>
														</td>
													</tr>
													<tr class="cart_table_item">
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">C5011100</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">고전시가론특강</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">김진영</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">+</span>
														</td>
													</tr>
													<tr class="cart_table_item">
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">C5011100</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">고전시가론특강</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">김진영</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">+</span>
														</td>
													</tr>
													<tr class="cart_table_item">
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">C5011100</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">고전시가론특강</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">김진영</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">+</span>
														</td>
													</tr>
													<tr class="cart_table_item">
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">C5011100</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">고전시가론특강</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">김진영</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">+</span>
														</td>
													</tr>
													<tr class="cart_table_item">
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">C5011100</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">고전시가론특강</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">김진영</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">3</span>
														</td>
														<td class="product-thumbnail">
															<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">+</span>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</form>
								</div>
							</div>
							<div class="tabs col-lg-1 mb-4 mb-lg-0 " style="align-self: center;">
								<i class="icon-arrow-right icons text-10 col-lg-3 col-6"></i> <br> <i class="icon-arrow-left icons text-10 col-lg-3 col-6"></i>
							</div>
							<div id="afterclass" class="col-lg-5 mb-5 mb-lg-0 float-right">
								<div class="col-lg-12 mb-4 mb-lg-0 card border-width-3 border-radius-0 border-color-hover-dark">
									<form method="post" action="">
										<div class="table-responsive">
											<table class="afterclassT  cart">
												<thead>
													<tr class="text-color-dark">
														<th class=" text-uppercase" width="15%">강의번호</th>
														<th class="text-uppercase" width="20%">교과목 명</th>
														<th class=" text-uppercase" width="20%">강의 교수</th>
														<th class=" text-uppercase " width="10%">학년</th>
														<th class=" text-uppercase " width="10%">학점</th>
														<th class=" text-uppercase " width="15%">추가</th>
													</tr>
												</thead>
												<tbody>
												</tbody>
											</table>
										</div>
									</form>
								</div>
							</div>
						</div>
						<div>
							<button class="btn btn-primary btn-block mb-2">수강신청하기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../common/footer.jsp"%>
	<script>
        $(document).ready(function () {
            $('ul.tab2 li').click(function () {
                var tab_id = $(this).attr('data-tab');
                $('ul.tab2 li').removeClass('current');
                $('.tab-content2').removeClass('current');
                $(this).addClass('current');
                $("#" + tab_id).addClass('current');
            })
            $('#elective').click(function () {
                $('ul.tab2 li').removeClass('current');
                $('.tab-content2').removeClass('current');
                $('ul.tab2 #xclass').addClass('current');
                $('#5class').addClass('current');
            })
            $('#major').click(function () {
                $('ul.tab2 li').removeClass('current');
                $('.tab-content2').removeClass('current');
                $('#zclass').addClass('current');
                $('#0class').addClass('current');
            })
        })
    </script>
	<script>
        $(document).ready(function () {
            $(".add").click(function () {
                var btn = $(this);
                var remove = $('.remove');
                var tr = btn.parent().parent();
                var rTr = remove.parent().parent();
                // btn.parent() : btn의 부모는 <td>이다.
                // btn.parent().parent() : <td>의 부모이므로 <tr>이다
                var td = tr.children();
                var str = '<tr class="cart_table_item"><td class="product-thumbnail"><span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">'
                    + td.eq(0).text()
                    + '    </span> </td><td class="product-thumbnail"><span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase"> '
                    + td.eq(1).text()
                    + ' </td> <td class="product-thumbnail"> <span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">'
                    + td.eq(2).text()
                    + '</span> </td><td class="product-thumbnail"> <span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">'
                    + td.eq(3).text()
                    + '</span> </td> <td class="product-thumbnail"> <span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">'
                    + td.eq(4).text()
                    + '</span> </td> <td class="product-thumbnail"> <button class="remove">-</button></td></tr>';
                $(".afterclassT tbody ").append(str);
                $(".remove").click(function () {
                    var rm = $(this).parent().parent();
                    rm.remove();
                });
            });
        })
    </script>
</body>
</html>