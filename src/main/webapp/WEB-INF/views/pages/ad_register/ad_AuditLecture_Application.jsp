<%@page import="com.kh.univ.member.model.vo.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>KHCU | 청강신청</title>
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

.off-screen {
	display: none;
}

#nav4 {
	width: 500px;
	text-align: center;
}

#nav4 a {
	display: inline-block;
	padding: 3px 5px;
	margin-right: 10px;
	font-family: Tahoma;
	background: #ccc;
	color: #000;
	text-decoration: none;
}

#nav4 a.active {
	background: #333;
	color: #fff;
}

.remove{
	background: #333;
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
							<h1 data-title-border>청강신청</h1>
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
							<div class="tabs col-lg-6 mb-4 mb-lg-0 "
								style="display: inline-block;">
								<h4>2020-2학기 개설 강의 목록</h4>
								<ul class="nav nav-tabs " style="width: 612px;">
									<li class="nav-item active"><a
										class="nav-link active text-8 " id="major" href="#popular"
										data-toggle="tab" style="line-height: 30px;"> 전공</a></li>
									<li class="nav-item"><a class="nav-link text-8"
										id="elective" href="#recent" data-toggle="tab"
										style="line-height: 30px;"> 교양</a></li>
								</ul>
								<div class="tab-content" style="width: 612px;">
									<div id="popular" class="tab-pane active">
										<ul class="tab2">
											<li class=" tab-link current" id="zclass" data-tab="0class"><a
												class="nav-link">전체</a></li>
										</ul>
									</div>
									<div id="recent" class="tab-pane ">
										<ul class="tab2">
											<li class="tab-link" id="xclass" data-tab="5class"><a
												class="nav-link">전체</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="tabs col-lg-1 mb-4 mb-lg-0 "
								style="align-self: center; text-align: right; margin-top: 50px;">
								<i class="icon-book-open icons text-10 col-lg-3 col-6"></i>
							</div>
							<div class="tabs col-lg-5 mb-4 mb-lg-0 "
								style="display: inline-block;">
								<div class="tabs">
									<h4 class="mb-6">나의 청강 신청 목록</h4>
									<blockquote class="blockquote-primary">
										<i
											class="icon-user-following icons text-color-primary text-15 pb-4"></i>
										<h4 class="card-title">
											청강신청하고자 하는 강의의 + 버튼을 누르시면<br> 과목이 추가되고 - 버튼은 삭제 버튼입니다.
										</h4>
									</blockquote>
								</div>
							</div>
						</div>
						<div class="row pb-4 mb-3">
							<div id="0class" class="tab-content2 current">
								<div
									class="col-lg-6 mb-5 mb-lg-0 card border-width-3 border-radius-0 border-color-hover-primary"
									style="min-height: 550px">
									<div class="table-responsive">

										<table id="datatable1" class="shop_table cart">
											<thead>
												<tr class="text-color-dark">
													<th class=" text-uppercase" width="15%">강의번호</th>
													<th class="text-uppercase" width="20%">교과목 명</th>
													<th class=" text-uppercase" width="20%">강의 교수</th>
													<th class=" text-uppercase " width="10%">학점</th>
													<th class=" text-uppercase " width="15%">추가</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="r" items="${r}">
													<tr class="cart_table_item">
														
														<td class="product-thumbnail">
														
														<span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">${r.cNo }</span>
														</td>
														<td class="product-thumbnail"><span
															class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">${r.cName }</span>
														</td>
														<td class="product-thumbnail"><span
															class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">${r.pName }</span>
														</td>
														<td class="product-thumbnail"><span
															class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">${r.credit }</span>
														</td>
														<td class="product-thumbnail"><span
															class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">
																<button class="add">+</button>
																<input type="hidden" value="${r.pNo }">
														</span></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div id="5class" class="tab-content2 ">
								<div
									class="col-lg-6 mb-5 mb-lg-0 card border-width-3 border-radius-0 border-color-hover-primary">
									<div class="table-responsive">
										<table class="shop_table cart">
											<thead>
												<tr class="text-color-dark">
													<th class=" text-uppercase" width="15%">강의번호</th>
													<th class="text-uppercase" width="20%">교과목 명</th>
													<th class=" text-uppercase" width="20%">강의 교수</th>
													<th class=" text-uppercase " width="10%">학점</th>
													<th class=" text-uppercase " width="15%">추가</th>
												</tr>
											</thead>
											<tbody>
												
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="tabs col-lg-1 mb-4 mb-lg-0 "
								style="align-self: center;">
								<i class="icon-arrow-right icons text-10 col-lg-3 col-6"></i> <br>
								<i class="icon-arrow-left icons text-10 col-lg-3 col-6"></i>
							</div>


							<div id="afterclass" class="col-lg-5 mb-5 mb-lg-0 float-right">
								<div class="col-lg-12 mb-4 mb-lg-0 card border-width-3 border-radius-0 border-color-hover-primary">
									<form id ="fm"method="post" action="rInsert.do">
										<div class="table-responsive">
											<input type="hidden" id="test" value="0" />
											<table id="datatable2" class="afterclassT  cart">
												<thead>
													<tr class="text-color-dark">
														<th class=" text-uppercase" width="15%">강의번호</th>
														<th class="text-uppercase" width="20%">교과목 명</th>
														<th class=" text-uppercase" width="20%">강의 교수</th>
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
							<button id="fmsub"class="btn btn-primary btn-block mb-2">수강신청하기</button>
						</div>
					</div>






				</div>
			</div>
		</div>
	</div>

	<%@include file="../common/footer.jsp"%>
	<script>
	
		$('#fmsub').on('click',function(){
			
			$.ajax({
				url:"rInsert.do",
				data:$("#fm").serialize(),
				type:"post",
				success:function(data){
					if(data =="success"){
// 						
					alert("수강신청이 완료되었습니다.")
					
					location.reload();
						
						
					}
				},error: function(result){
					console.log(result)
				}
				
				
			});
			
			
		
		});
	
	

        $(document).ready(function () {
        	$('#datatable1').dataTable();
        	
        
        	
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
        
        
        
        
          $(".add").click(function () {
                var btn = $(this);
                var remove = $('.remove');
                var tr = btn.parent().parent().parent();
                var rTr = remove.parent().parent();
                var sNo = "<%= ((Student)session.getAttribute("loginUser")).getsNo() %>";
                var td = tr.children();
                var pNo = btn.siblings('input').val();
                console.log(pNo);
                	
                	
                var str = '<tr class="cart_table_item" >'
                	+'<input type="hidden"  name ="cNo" value="'+td.eq(0).text()+'" >'
//                 	+'<input type="hidden"  name ="cName" value="'+td.eq(1).text()+'" >'
                	+'<input type="hidden"  name ="pName" value="'+td.eq(2).text()+'" >'
                	+'<input type="hidden"  name ="pNo" value="'+pNo+'" >'
                	+'<input type="hidden"  name ="sNo" value="'+sNo+'" >'
//                 	+'<input type="hidden"  name ="credit" value="'+td.eq(3).text()+'" >'
               		+'<td class="product-thumbnail" ><span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">'
                    + td.eq(0).text()
                    + '    </span> </td><td class="product-thumbnail"><span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase"> '
                    + td.eq(1).text()
                    + ' </td> <td class="product-thumbnail"> <span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">'
                    + td.eq(2).text()
                    + '</span> </td><td class="product-thumbnail"> <span class="amount font-weight-bold text-color-dark text-decoration-none text-uppercase">'
                    + td.eq(3).text()
                    + '</span> </td> <td class="product-thumbnail"> <a href="javascript:void(0)"onclick ="test(this)"class="btn btn-sm btn-primary remove">-</a></td></tr>';
                
                    
                    $(".afterclassT tbody ").append(str);
                
                    
                    
//                     ===================================
//                     	중복확인
//                     ====================================
                    var arr = $('#datatable2').find('tr');
                    for (var i = 1; i < arr.length; i++){
                    	

                    	
                    	
                    	
                    	for (var j = 0; j < i; j++) {

                    
                    
	                    var arrI = $(arr[i]).find("td"); //비교하고 싶은 항목이 있는곳 찾아가기
	                    var arrJ = $(arr[j]).find('td'); //비교하고 싶은 항목이 있는곳 찾아가기
	                    var arrItxt = arrI.text(); //비교항목 텍스트 추출하기
	                    var arrJtxt = arrJ.text(); //비교항목 텍스트 추출하기
	                   
	                    
	                    if(arrItxt == arrJtxt) { //비교항목 텍스트 비교
	                        alert("같은 과목을 추가하셨습니다."); 
							$('.afterclassT tbody tr:last' ).remove();	    
							
	                    } else {
	                        console.log("중복값이 없습니다.");
	                        
	                    }


                    	}
                   	 }
//                     ===================================
//                     	학점  일정 값 이상 금지
//                     ====================================

          			var length = $("input[name=credit]").length;
          			var cArr = new Array();
          			var sum = 0;
          			for(var i=0; i<length; i++){                          
          				cArr[i] = $("input[name=credit]").eq(i).val();
          				
          				var number = parseInt(cArr[i])
          				sum += number;
          		    }

          			if(sum >19){
          				
          				alert ('18학점 이상 신청할 수 없습니다.');
          				$('.afterclassT tbody tr:last' ).remove();	 
          			}


          			


          
          
//                     var check=0;
//                     for(var i = 0; i<arr.length-1;i++){
//                     	 var credit  = $('input[name=credit]').val();
//                     	 var toInt = parseInt(credit);	
                    	 
//                     	 check  +=toInt
                    	 
//                     }
                    
//                     console.log(check);
               	 

          });       
               
                	

                
 function test(obj){
	 var rm = $(obj).parent().parent();
     rm.remove();
 }         
           
                
                
                
                

    </script>

	<script>





    

// function paging(){
	  
	   

//     var rowPerPage = 5;// 1 을  곱하여 문자열을 숫자형로 변환
    
//     //console.log(typeof rowPerPage);
    
  
//     $('#nav').remove();
//     var $products = $('#products');
    
//     $products.after('<div id="nav">');
    
    
//     var $tr = $($products).find('tbody tr');
//     var rowTotals = $tr.length;
//     //console.log(rowTotals);
    
//     var pageTotal = Math.ceil(rowTotals/ rowPerPage);
//     var i = 0;
    
//     for (; i < pageTotal; i++) {
//     $('<a href="#"></a>')
//     .attr('rel', i)
//     .html(i + 1)
//     .appendTo('#nav');
//     }
    
//     $tr.addClass('off-screen')
//     .slice(0, rowPerPage)
//     .removeClass('off-screen');
    
//     var $pagingLink = $('#nav a');
//     $pagingLink.on('click', function (evt) {
//     evt.preventDefault();
//     var $this = $(this);
//     if ($this.hasClass('active')) {
//     return;
//     }
//     $pagingLink.removeClass('active');
//     $this.addClass('active');
    
//     // 0 => 0(0*4), 4(0*4+4)
//     // 1 => 4(1*4), 8(1*4+4)
//     // 2 => 8(2*4), 12(2*4+4)
//     // 시작 행 = 페이지 번호 * 페이지당 행수
//     // 끝 행 = 시작 행 + 페이지당 행수
    
//     var currPage = $this.attr('rel');
//     var startItem = currPage * rowPerPage;
//     var endItem = startItem + rowPerPage;
    
//     $tr.css('opacity', '0.0')
//     .addClass('off-screen')
//     .slice(startItem, endItem)
//     .removeClass('off-screen')
//     .animate({opacity: 1}, 300);
    
//     });

//     $pagingLink.filter(':first').addClass('active');

// }
</script>


</body>
</html>