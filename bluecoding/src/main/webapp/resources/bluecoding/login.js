/**
 * 
 */

// 세션안에 값을 가져옴
var login = sessionStorage.getItem("login");

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
		type: 'GET',
		url: '../../checkLogin',
		dataType: "json",
		data: { "id": id, "pwd": pwd},
		success: function(data) {
			// data.server에서 보낸 mapId
			alert('환영합니다 ' + data.nick+"님!!");
			$('#notLogin').css("display","none");
			$('#successLogin').css("display","block");
			
			//사용자의 모습으로 로그인
			$('#loginNick').text(data.nick);
			
			// 게이지 레벨로 색깔지정
			if(data.gauge < 100 ){
				$('#loginGauge').text('Lv 1 ('+data.gauge+'%)');
				$('#loginGauge').css("width", data.gauge+'%');
			}
			
			// [ lv 2 ]
			if(data.gauge >= 100 && data.gauge < 200){
				$('#loginGauge').text('Lv 2 ('+(data.gauge-100)+'%)');
				$('#loginGauge').css("width", (data.gauge-100)+'%');
				$('#loginGauge').attr("class","progress-bar bg-success");
			}
			
			// [ lv 3 ]
			if(data.gauge >= 200 && data.gauge < 300){
				$('#loginGauge').text('Lv 3 ('+(data.gauge-200)+'%)');
				$('#loginGauge').css("width", (data.gauge-200)+'%');
				$('#loginGauge').attr("class","progress-bar bg-info");
			}
			
			// [ 마지막 lv ]
			if(data.gauge >= 300){
				$('#loginGauge').text('Lv 4 (만랩입니다...)');
				$('#loginGauge').css("width", '100%');
				$('#loginGauge').attr("class","progress-bar bg-warning");
			}
			
			// 이미지가 없을시, 지정한 기본 이미지로 변경
			if(data.profile == null || data.profile== ""){
				// ??? 	
			}
			$('#loginCash').text(' 보유캐시: '+data.coin+'캐시');
			$('#loginInfo').attr("href","../../user/info?id="+data.id);
			
			// 세션 tracking으로 웹페이지 연동
			
			
			$('#loginBack').click();
		},
		error: function(request, error) {
			alert('에러!! : ' + request.responseText + ":" + error);
		}
		
	});

}

/* [로그인 세션 체크] */
	
window.onload = function(){ // 변수선언함
	
	// 세션의 값을 체크
	if(login == null || login == ""){
	
	}
	
}