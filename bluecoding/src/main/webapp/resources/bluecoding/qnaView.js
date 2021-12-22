/**
 * 
 */

function fn_enable(obj) {
	document.getElementById("qnaListLimit").disabled = false;
	document.getElementById("qnaContent").disabled = false;
	document.getElementById("qnaContent2").disabled = false;
	document.getElementById("tr_btn_modify").style.display = "block";
	document.getElementById("tr_btn_File").style.display = "block";
	document.getElementById("tr_btn_one").style.display = "none";
	document.getElementById("tr_btn_two").style.display = "none";	
}

function fn_enableRe(obj) {
	document.getElementById("qnaReContent").disabled = false;
	document.getElementById("tr_btn_modify2").style.display = "block";
	document.getElementById("tr_btn_text").style.display = "block";
	document.getElementById("tr_btn_FileRe").style.display = "block";
	document.getElementById("tr_btn_two").style.display = "none";
	document.getElementById("tr_btn_Three").style.display = "none";
	document.getElementById("tr_btn_File").style.display = "none";
	document.getElementById("tr_btn_label").style.display = "none";
}

function fn_enableReUp(obj) {
	document.getElementById("qnaReContent").disabled = false;
	document.getElementById("tr_btn_modify3").style.display = "block";
	document.getElementById("tr_btn_text").style.display = "block";
	document.getElementById("tr_btn_FileRe").style.display = "block";
	document.getElementById("tr_btn_two").style.display = "none";
	document.getElementById("tr_btn_Three").style.display = "none";
	document.getElementById("tr_btn_File").style.display = "none";
	document.getElementById("tr_btn_label").style.display = "none";
}

function deleteConfirm(id) {
	var alter = confirm("Are you sure to delete " + id + "?");

	if (alter == true) {
		//삭제서블릿으로 이동
		location.href = url + '?articleNO=' + articleNO;

	} else {
		// 다시 리스트로
		location.href = 'list';
	}
}

function funbtn(obj) {
	if (confirm("수정을 취소하시겠습니까??")) {
		location.reload();
	} else {
		return;
	}
}
