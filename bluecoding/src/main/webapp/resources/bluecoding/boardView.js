/**
 * 
 */

function fn_enable_b1(obj) {
	document.getElementById("boardContent").disabled = false;
	document.getElementById("i_title_b1").disabled = false;
	document.getElementById("tr_btn_modify_b1").style.display = "block";
	document.getElementById("tr_btn_b1").style.display = "none";
	document.getElementById("tr_btn_b2").style.display = "none";
	document.getElementById("tr_btn_b3").style.display = "none";
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

function funbtn() {
	if (confirm("이전 페이지로 돌아가시겠습니까??")) {
		javascript: history.back();
	} else {
		return;
	}
}

function funok(articleNO) {
	if (confirm("글을 정말 삭제하시겠습니까??")) {
	
		location.href = '/board/delete?articleNO=' + articleNO;
		
	} else {
	
		brake;
		
	}
	
}