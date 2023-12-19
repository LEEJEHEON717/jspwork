
function checkMember(){
		//alert("test...");
		//input의 name 속성을 변수에 할당
		let form = document.member;
		let id = form.id.value;
		let pw1 = form.passwd.value;
		let pw2 = form.passwd2.value;
		let name = form.name.value;
		let btnChk = form.btnChk.value;
		
		//정규 표현식
		//비밀번호
		let regexPw1 = /[0-9]+/; //숫자
		let regexPw2 = /[a-zA-Z]+/; //영문자
		let regexPw3 = /[~!@#$%^&*()_+|]+/; //특수문자
		
		//이름
		let regexName = /^[가-힣]+/;
		
		if(id.length < 4 || id.length > 15){
			alert("아이디는 4~15자까지 입력 가능");
			id.select();
			return false;
		}else if(pw1.length < 8 || !regexPw1.test(pw1) ||
				!regexPw2.test(pw1) || !regexPw3.test(pw1)){
			alert("비밀번호는 영문자, 숫자, 특수문자 포함해서 8자 이상 입력 가능");
			pw1.select();
			return false;
		}else if(pw1 !=pw2){ //pw1과 pw2 문자열이 일치하지 않으면
			alert("비밀번호를 동일하게 입력해 주세요.");
			pw1.select();
			return false;	
		}else if(!regexName.test(name)){ //pw1과 pw2 문자열이 일치하지 않으면
			alert("이름은 한글로 입력해주세요.");
			pw1.select();
			return false;	
		}else{
			form.submit(); //오류가 없으면 폼을 메인 컨트롤러로 전송
		}
	}
	
	function checkId(){
		//alert("test...");
		//input의 선택자(id)의 값으로 사용
		if(uid.value == ""){
			alert("아이디를 입력해주세요");
			t_id.focus();
			return false;
		}
		
		$.ajax({
			type: "get",
			dataType: "text",
			url: "/member/checkid", //http://localhost:8080/test/checkid
			data: {id: $("#uid").val()}, //id 속성이 서버로 전달됨
			success: function(data){
				if(data == "usable"){
					$("#btnChk").attr("value", "Y");	//버튼 value값을 'Y'로 설정				
					$("#message").text("사용할 수 있는 ID입니다.")					
				}else{ //data == "not_usable"
					$("#message").text("이미 가입된 ID입니다.")					
				}
			},
			error: function(){
				alert("에러 발생!!")
			}
		});
	}
