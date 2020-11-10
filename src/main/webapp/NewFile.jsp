<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


</body>
<script>
if($rId ==$rIdCheck.val()){
	console.log("if들어옴?" +$rId +"얘가 체크야"+$rIdCheck.val())
	
	$rePlace=$(	
			'<ul class="comments reply">'+
			'	<li>'+
			'   	<div class="comment">'+				
			'			<i class="fas fa-chevron-up"></i>'+
			'     		<div class="comment-block">'+
			'     			<input type="hidden" value="'+$rId+'">'+		
			'     			<span class="comment-by">'+
			'     				<strong >수정한거'+$rName+'</strong>'+
			'     			<span class="date float-right" style=" margin-left: 10px;">'+$rCreateDate+'</span>'+			
			'     			</span>'+
			'     			<p style="margin-bottom:15px;">'+$rContent+'</p>'+ 
			'     			<textarea style="width:85%; display: none;"></textarea>'+
			'      			<span class="float-right">'+
			'     					<span class="checkId"> <a href="javascript:void(0);" onclick="reAddReplyView(this);"><i class="fas fa-reply"></i> Reply</a></span>'+
			'     			</span>'+
			'     		</div>'+
			'     	</div>' +
			'	<li>'+
			'<ul>'
	
			);
	$li.append($rePlace);
}
	

	
}
</script>
</html>