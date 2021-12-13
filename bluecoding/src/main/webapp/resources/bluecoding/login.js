/**
 * 
 */

/* [공백 체크] */
var pattern = /\s/g;

$(document).ready(function() {
	$('#loginBtn').click(function() {
		alert('확인됨!!');

	}); //end on 
});

function loginBtn() {
	/* [공백 체크후 값을 입력] */
	var id = $('#id').val().replace(/ /g, '');
	var pwd = $('#pwd').val().replace(/ /g, '');



	alert('id=' + id + '/ pwd=' + pwd);

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
		type: 'GET',
		url: 'checkLogin',
		dataType: "json",
		data: { "id": id, "pwd": pwd},
		success: function(data) {
			// data.server에서 보낸 mapId
			alert('성공:' + data.id);
			
		},
		error: function(request, status, error) {
			alert('에러!! : ' + request.responseText + ":" + error);
		}
	});

}