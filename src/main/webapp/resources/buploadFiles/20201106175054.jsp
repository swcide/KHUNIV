<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	
	$(function() {
		
		
		
		$('#add').click(function() {
			
			var max = 0;
			
			$('#checkList option:selected').each(function(i) {
				
				// checkedList로 옮길 항목과 위에서 가장 근접한 항목 찾아서 그 항목 뒤에다가 붙여넣기 
				for ( var j = 0; j < $(this).val(); j++) {
					
					if($('#checkedList option[value='+ j +']').text() != '') {
						max = j;
					}
				}
				
				if ( max == 0) { // 그 전 항목이 없을 때 항목을 맨위에다가 덧붙인다.
					
					$('#checkedList').prepend($(this).clone());
					
				} else {
					
					$('#checkedList option[value='+ max +']').after($(this).clone());
				}

				$(this).remove(); // 해당 옵션 제거
			});
		});

		
		$('#remove').click(function() {
			
			var max = 0;
			
			$('#checkedList option:selected').each(function(i) {
				
				// checkList로 옮길 항목과 위에서 가장 근접한 항목 찾아서 그 항목 뒤에다가 붙여넣기 
				for ( var j = 0; j < $(this).val(); j++) {
					
					if($('#checkList option[value='+ j +']').text() != '') {  // 그 전 항목이 있는 지 확인
						max = j;
					}
				}
				
				if ( max > 0) {
					$('#checkList option[value='+ max +']').after($(this).clone());
				} else {
					$('#checkList').prepend($(this).clone());
				}

				$(this).remove();
			});
		});

		
		$('#addAll').click(function() {
			
			$('#checkList option').each(function(i) {
				
				if ( $(this).val() == 1) { // 항목이 Oracle 일 때
					
					$('#checkedList').prepend($(this).clone());
				} else { // checkedList에 항목이 있다면 그 항목을 제외한 다른 항목들을 넘겨준다.
					
					$('#checkedList option[value=' + ($(this).val() - 1) + ']').after($(this).clone());
				}
				
			});

			$('#checkList').empty();
			
		});
		
		
		$('#removeAll').click(function() {
			
				
			$('#checkedList option').each(function(i) {
				
				if ( $(this).val() == 1) { // 항목이 Oracle 일 때
					
					$('#checkList').prepend($(this).clone());
				} else { // checkList에 항목이 있다면 그 항목을 제외한 다른 항목들을 넘겨준다.
					
					$('#checkList option[value=' + ($(this).val() - 1) + ']').after($(this).clone());
				}
				
			});
				
			$('#checkedList').empty();
			
		});
	});
</script>
<title>jqueryEx2</title>
</head>
<body>

	<table>
		<caption>듣고 싶은 강의를 선택하시오.</caption>
		<tr align="center">
			<td>
				<select id="checkList" multiple style="width: 150px;height: 150px;">
					<option value="1">Oracle</option>
					<option value="2">mySql</option>
					<option value="3">Java</option>
					<option value="4">Spring</option>
					<option value="5">jQuery</option>
					<option value="6">ajax</option>
				</select>
			</td>
			<td style="width: 100px;">
				<input type="button" id="add" value="add >" style="width: 92px;"><br>
				<input type="button" id="remove" value="< remove" style="width: 92px;"><br><br>
				<input type="button" id="addAll" value="addAll >>" style="width: 92px;"><br>
				<input type="button" id="removeAll" value="<< removeAll" style="width: 92px;">
			</td>
			<td>
				<select id="checkedList" multiple style="width: 150px;height: 150px;"></select>
			</td>
		</tr>
	</table>
</body>
</html>