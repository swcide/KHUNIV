<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper" style="margin-left: 0px;">
	<!-- Content Header (Page header) -->
	<section class="content-header" style="margin-bottom: -10px;">
		<div class="container-fluid">
			<div class="row mb-2"></div>
		</div>
		
		<!-- /.container-fluid -->
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="row">
		








				<div class="col-md-12">
					<h3 style="margin-bottom: 25px; margin-left:15%;">&nbsp;마이 페이지</h3>

					<div class="card" style=" width:70%; margin:0 auto;/*background-color:black;*/">
						<div class="card-body" style="margin:0 auto;">
							<div class="tab-content">
								<P style="margin-bottom: -6px;">※ &nbsp;학생 신상 정보</P>
								<p style="margin-top:10px;font-size:11.5px;
								margin-bottom:-5px;">학적정보 수정을 하실경우 우편 발송, 문자 수신 등 대학내의 모든 정보가 수정됩니다</p>
								
								<HR style="margin-bottom: 10px;">


								<table id="profile" class="basic_table" style="margin:0 auto; width:125%;">
									<colgroup>
										<col style="width: 160px;" />
										<col style="width: 1px;" />
										<col style="width: 125px;" />
										<col style="width: 250px;" />
										<col style="width: 125px;" />
										<col style="width: 250px;" />
										<col style="width: *;" />
									</colgroup>
									<tbody>
										<tr>
											<td class="img" valign="middle" rowspan="4"
												style="Width: 1%; padding: 10px 10px 10px 10px;"><img
												src="/woosong/dist/img/alex.jpg" alt="윤기훈님의 사진"
												style="height: 140px; width: 185px;" /></td>
											<th width="90">학번</th>
											<td colspan="3">11402243</td>

										</tr>
										<!-- 주소검색 / 생년월일 / 휴대폰 / 개인 이메일 -->
										<tr>
											<th>성명</th>
											<td><input id="pName" name="name" class="" type="text"
												value="윤기훈" maxlength="100" /></td>
												
											<th>생년월일</th>
											<td><input id="pBirth" name="birth" type="text"
												value="1992.11.11" size="20" maxlength="30" required /></td> 
										</tr>
										<tr>
											<th>자택</th>
											<td><input id="pTel" name="tel" class="" type="text"
												value="--" maxlength="20" /></td>
											<th>휴대폰</th>
											<td><input id="pHp" name="hp" class="" type="text"
												value="010-1234-5678" maxlength="20" /></td>
										</tr>
										<tr>
											<th>이메일</th>
											<td colspan="3"><input id="pEmail" name="email"
												class="q2" type="text" value="gihun11@gmail.com"
												maxlength="100" /> <label style="margin-left: 10px;"
												class="control control-radio"><input id="email_y/n"
													name="email_y/n" type="radio" value="Y" />&nbsp;학교메일<span
													class="control_indicator"></span></label>&nbsp;&nbsp;<label
												class="control control-radio"> <input id=""
													name="email_y/n" type="radio" value="N" checked="checked" />&nbsp;개인메일<span
													class="control_indicator"></span></label>&nbsp;&nbsp;</td>
										</tr>




										<tr>
											<td colspan="5"><input type="file" value="사진 변경"></td>
										</tr>






										<tr>
											<th>주소</th>
											<td colspan="4" height="70"><input id="pZip" name="zip"
												title="우편번호" type="text" value="07643" size="7"
												maxlength="6" readonly="readonly" /> <a href="#" onclick=""
												class="btn2 spot"><span>우편번호 찾기</span></a> <br /> <input
												id="address" name="address" title="주소1" class="" type="text"
												value="인천광역시 중구 운서2로 37" maxlength="100" readonly="readonly" />
												<input id="a_detail" name="a_detail" title="주소2" class=""
												type="text" value="구일 주택 402호" maxlength="100" /></td>
										</tr>
										<tr>
											<th height="35">우편수령지</th>
											<td colspan="4"><select id="POST_RECEIPT_TYPE_GB"
												name="POST_RECEIPT_TYPE_GB" title="우편수령지">
													<option value="USRT1301" selected="selected">집</option>
													<option value="USRT1302">직장</option>
											</select></td>
										</tr>

									</tbody>
								</table>
								<button type="button"
									style="border: 1px solid lightgray; float: right; margin-right: 0.3%; margin-top: 14px; padding: 0px 10px 0px 10px;">뒤로</button>
								<button type="submit"
									style="border: 1px solid lightgray; float: right; margin-right: 10px; margin-top: 14px; padding: 0px 10px 0px 10px;">수정</button>

							</div>

						</div>
						<!-- /.card-body -->

					</div>
				</div>
			</div>


			<style>
#profile {
	width: 100%;
}

#profile td {
	border: 1px solid #fff;
	background-color: #ededed;
	padding: 2px 10px 2px 10px;
}

#profile th {
	text-align: center;
	border: 1px solid #fff;
	background-color: #ededed;
}
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
</div>
<!-- /.container-fluid -->
</section>
<!-- /.content -->
</div>
<%@ include file="../common/footer.jsp"%>
