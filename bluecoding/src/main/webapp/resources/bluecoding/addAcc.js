/**
 * 
 */

/**
 * 
 */

$(document).ready(function() {

	// [아이디 중복체크& 띄어쓰기 체크]
	$('#id').change(function() {
		$.ajax({
			type: 'GET',
			url: '../admin/dupId',
			dataType: "json",
			data: { "id": $('#id').val() },
			success: function(data) {
				// data.server에서 보낸 mapId
				if (data.rs == 1) { 
					// 1이면 값이 없는것
				}else {
					alert('이미 존재하는 아이디입니다.');
					// 입력한 값을 지우고 
					// focus 를 다시 이동하고
					$('#id').val("");
					$('#id').focus();
				}
			},
			error: function(request, error) {
				alert('에러!! : ' + request.responseText + ":" + error);
			}
		}); //end ajax
		return;
	}); //end on
}); 

$(document).ready(function() {
	// [비밀번호 확인&띄어쓰기 체크]
	$('#pwdCheck').change(function() {

		var pwd = $('#pwd').val();
		var pwdCheck = $('#pwdCheck').val();
		
		if(pwd == pwdCheck){
		
		}else{
			alert('비밀번호가 일치하지 않습니다');
			$('#pwd').val("");
			$('#pwdCheck').val("");
		}
	});
});