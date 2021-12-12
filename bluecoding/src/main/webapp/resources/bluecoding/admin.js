/**
 * 
 */

var bookList = document.getElementById('bookList');
var pageList = document.getElementById('pageList');
var bkDetails = document.getElementById('bkDetails');
var pgDetails = document.getElementById('pgDetails');

function bookOn(){
	pageList.style.display = "none";
	bookList.style.display = "block";
}

function pageOn(){
	pageList.style.display = "block";
	bookList.style.display = "none";
}

function bkModalOn(){
	pgDetails.style.display = "none";
	bkDetails.style.display = "block";
	
	
}

function pgModalOn() {
	bkDetails.style.display = "none";
	pgDetails.style.display = "block";
		
}

/* [어드민 아이디] */

function adRegister(){
	
	var adId = prompt('아이디를 입력하세요');
	if(adId == null){ return; } 
	var adPwd = prompt('입력한 아이디:'+ adId+'\n비밀번호를 입력하세요');
	
	
}

/* [이달의 수익] */

function monthComm(){
	alert(3+'월\n이달의 수익은 '+ 99999 +'원 입니다.');
}