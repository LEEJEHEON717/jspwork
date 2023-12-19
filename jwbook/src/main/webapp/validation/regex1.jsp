<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유효성 검사</title>
<style type="text/css">
	ul li{list-style: none; margin: 10px;}
</style>
<script type="text/javascript">
	function checkForm(){
		let form = document.loginForm;
		let name = form.uname.value;
		//let regex = /[0-9]+/  //숫자 여러개
		let regex = /^[a-zA-Z가-힣]+$/  //한글로 시작
		
		if(!regex.test(name)){
			alert("이름은 숫자로 시작할 수 없습니다.");
			form.uname.select();
			return false;
		}else{
			form.submit();
		}
	}
</script>
</head>
<body>
   <form action="test.jsp" method="post" name="loginForm">
		<ul>
			<li>
				<label for="name">이름 </label>
				<input type="text" id="uname" name="uname">
			</li>
			<li>
				<button type="button" onclick="checkForm()">로그인</button>
			</li>
		</ul>
	</form>
</body>
</html>