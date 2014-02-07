<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="/test/docs/js/jquery-1.10.2.js"></script>
<title>Insert title here</title>
<script>
(function($){
	$(document).ready(function(){
		$('#update').click(function(){
			$.ajax({
				type:'GET',
				url:'hello-ajax.html',
				success:function(html,textStatus){
					$('body').append(html);
				},
				error:function(xhr,textStatus,errorThrown){
					alert('An error occurred '+ (errorThrown ? errorThrown:xhr.status));
				}
			});	
		});		
	});
})(jQuery);
</script>
</head>
<body>
<button id="update" >click me</button>
</body>
</html>