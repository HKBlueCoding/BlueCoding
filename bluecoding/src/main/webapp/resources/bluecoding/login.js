/**
 * 
 */

// 세션안에 값을 가져옴
var login = window.sessionStorage.getItem("login");

/* [로그인 세션 체크] */

function loginTracking(){

}

/* [로그인 체크 ] */
function loginBtn() {
	/* [공백 체크후 값을 입력] */
	var id = $('#loginId').val().replace(/ /g, '');
	var pwd = $('#loginPwd').val().replace(/ /g, '');



	console.log('id=' + id + '/ pwd=' + pwd);

	if (id == null || pwd == null || id == "" || pwd == "") {
		alert('아이디 또는 비밀번호를 입력하세요');
		return;
	}

	if (id.length < 8 || id.length > 15) {
		alert('아이디는 8글자 이상, 15자리 이하입니다');
		return;
	}

	if (pwd.length < 10 || pwd.length > 16) {
		alert('비밀번호는 10글자 이상, 16자리 이하입니다');
		return;
	}
	
	/* ======== [로그인 체크] ========= */
	$.ajax({
		type: 'POST',
		url: '../../checkLogin',
		dataType: "json",
		data: { "id": id, "pwd": pwd},
		success: function(data) {
			// data.server에서 보낸 mapId
			alert('환영합니다 ' + data.nick+"님!!");
			alert(data.id);
			
			var newForm = document.createElement('form');
			newForm.method = 'POST'; 
			newForm.action = 'finishLogin';

			var input1 = document.createElement('input');
			
			input1.setAttribute("type", "hidden"); 
			input1.setAttribute("name", "id"); 
			input1.setAttribute("value", data.id); 
			
			var input2 = document.createElement('input');
			input2.setAttribute("type", "hidden"); 
			input2.setAttribute("name", "pwd");
			console.log(input1);
			console.log(input2);
			alert(input1);
			input2.setAttribute("value", data.pwd);
			
			newForm.appendChild(input1); 
			newForm.appendChild(input2);
			
			document.body.appendChild(newForm);
			
			newForm.submit();
				
		},
		error: function(request, error) {
			alert('에러!! : ' + request.responseText + ":" + error);
		}
		
	});

}