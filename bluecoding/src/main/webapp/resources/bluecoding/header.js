/**
 * 
 */

/* [로그인 체크 ] */
function loginBtn() {
    /* [공백 체크후 값을 입력] */
    var id = $('#loginId').val().replace(/ /g, '');
    var pwd = $('#loginPwd').val().replace(/ /g, '');

    console.log('id=' + id + '/ pwd=' + pwd);
    console.log(pwd.length);
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

    document.frmLogin.submit();

}

// 게이지 설정
function gaugeSet(gauge) {
	//게이지 레벨로 색깔지정
	if(gauge < 100){
		$('#loginGauge').text('Lv 1 ('+gauge+'%)');
		$('#loginGauge').css("width", gauge+'%');
	
	}
	
	//[레벨 2]
	if(gauge >= 100 && gauge < 200){
		$('#loginGauge').text('Lv 2 ('+(gauge-100)+'%)');
		$('#loginGauge').css("width", (gauge-100)+'%');
		$('#loginGauge').attr("class","progress-bar bg-success");
		
	}
	
	//[레벨 3]
	if(gauge >= 200 && gauge < 300){
		$('#loginGauge').text('Lv 3 ('+(gauge-200)+'%)');
		$('#loginGauge').css("width", (gauge-200)+'%');
		$('#loginGauge').attr("class","progress-bar bg-info");
	}
	
	//[마지막 레벨]
	if(gauge >= 300){
		$('#loginGauge').text('Lv 4 (만랩입니다...)');
		$('#loginGauge').css("width", '100%');
		$('#loginGauge').attr("class","progress-bar bg-warning");
	}	
}

// [해당 유저의 QNA 이동]
function goQnaHome(id){
	
	// 로그인을 안했을경우
	if(id == null || id ==""){
		document.getElementById('loginClick').click();
		brake;
	}
	
	// 로그인 했을경우 qna로 이동
	location.href = '../../qna/home?id='+id;
	
}


// [캐시 충전]

function coinCharge(){
	
	window.open("../../kakaopay/buy","캐시충전", "width=1500, height=500, history=no, resizable=no, status=no, scrollbars=yes, menubar=no");
	
}

	