/**
 * 
 */
function fn_enable_b1(obj) {
	document.getElementById("boardContent").disabled = false;
	document.getElementById("i_title_b1").disabled = false;
	document.getElementById("tr_btn_modify_b1").style.display = "block";
	document.getElementById("tr_btn_File").style.display = "block";
	document.getElementById("tr_btn_b1").style.display = "none";
	document.getElementById("tr_btn_b2").style.display = "none";
	document.getElementById("tr_btn_b3").style.display = "none";
}



// [이전 페이지 돌아가기]
function funbtn() {
	if (confirm("이전 페이지로 돌아가시겠습니까??")) {
		javascript: history.back();
	} else {
		return;
	}
}



// [게시판 원글 삭제]
function del(articleNO) {
	var chk = confirm("정말 글을 삭제하시겠습니까?");
	if (chk) {
		location.href = '/board/delete?articleNO=' + articleNO;
	}
}



// [댓글 구현]
$(document).ready(function() {
	$('#repBtn').click(function() {

		if ($.trim($("#boardReText").val()) == '') {
			alert("내용을 입력해주세요.");
			return false;
		}

		if ($.trim($("#boardReText").val().length) > 300) {
			alert("댓글은 300글자를 초과할 수 없습니다.");
			return false;
		}

		$.ajax({
			type: 'POST',
			url: '/board/boardReply/add',
			dataType: "json",
			data: { "boardReText": $('#boardReText').val(), "id": $('#id').val(), "articleNO": $("#articleNO").val(), "nick": $("#nick").val() },
			success: function(data) {
				// data.server에서 보낸 map text
				alert('댓글이 등록되었습니다.');
				$('#boardReText').val("");
				location.reload();
			},
			error: function(request, status, error) {
				alert('에러!! : ' + request.responseText + ":" + error);
			}
		}); //end ajax 
	}); //end on 
});



// [댓글 수정]
function replyClick(replyCnt) {
	// 먼저 기존에 열려있을지 모르니..
	$(".replyRe").css("display","none");
	
	var modDisplay = document.getElementsByClassName("mod")[(replyCnt - 1)].style.display;
	if (modDisplay == "none") {
		document.getElementsByClassName("mod")[(replyCnt - 1)].style.display = "block";
	} else {
		document.getElementsByClassName("mod")[(replyCnt - 1)].style.display = "none";
	}
	console.log('글번호' + mod);

}

function replyDone(replyNO, replyCnt) {
	if ($.trim($('#ReText' + replyCnt).val()) == '') {
		alert("내용을 입력해주세요.");
		return false;
	}

	if ($.trim($('#ReText' + replyCnt).val().length) > 300) {
		alert("댓글은 300글자를 초과할 수 없습니다.");
		return false;
	}
	$.ajax({
		type: 'POST',
		url: '/board/boardReply/update',
		dataType: "json",
		data: { "boardReText": $('#ReText' + replyCnt).val(), "id": $('#id').val(), "articleNO": $("#articleNO").val(), "nick": $("#nick").val(), "replyNO": replyNO },
		success: function(data) {
			// data.server에서 보낸 map text
			alert('수정이 완료되었습니다.');
			$('#ReText').val("");
			location.reload();
		},
		error: function(request, status, error) {
			alert('에러!! : ' + request.responseText + ":" + error);
		}
	}); //end ajax
}



// [댓글 답변 구현]
function replyReClick(replyCnt) {
	// 먼저 기존에 열려있는게 있을지 모르니..
	$(".mod").css("display","none");
	
	var reDisplay = document.getElementsByClassName("replyRe")[(replyCnt - 1)].style.display;
	if (reDisplay == "none") {
		document.getElementsByClassName("replyRe")[(replyCnt - 1)].style.display = "block";
	} else {
		document.getElementsByClassName("replyRe")[(replyCnt - 1)].style.display = "none";
	}

}

function replyInsert(reParentNO, replyCnt) {
	if ($.trim($('#RepReText' + replyCnt).val()) == '') {
		alert("내용을 입력해주세요.");
		return false;
	}

	if ($.trim($('#RepReText' + replyCnt).val().length) > 300) {
		alert("댓글은 300글자를 초과할 수 없습니다.");
		return false;
	}
	$.ajax({
		type: 'POST',
		url: '/board/bpardReplyRe/add',
		dataType: "json",
		data: { "boardReText": $('#RepReText' + replyCnt).val(), "id": $('#id').val(), "articleNO": $("#articleNO").val(), "nick": $("#nick").val(), "reParentNO": reParentNO, "replyNO": $("#replyNO").val() },
		success: function(data) {
			// data.server에서 보낸 map text
			if (data.ret == 0) {
				alert('답글 등록에 실패하였습니다.');
			} else {
				alert('답글이 등록되었습니다.');
				$('#RepReText').val("");
				location.reload();
			}
		},
		error: function(request, status, error) {
			alert('에러!! : ' + request.responseText + ":" + error);
		}
	}); //end ajax         	 
}



// [댓글 답변 수정]
function replyClick(replyCnt) {
	var modDisplay = document.getElementsByClassName("mod")[(replyCnt - 1)].style.display;
	if (modDisplay == "none") {
		document.getElementsByClassName("mod")[(replyCnt - 1)].style.display = "block";
	} else {
		document.getElementsByClassName("mod")[(replyCnt - 1)].style.display = "none";
	}
	console.log('글번호' + mod);

}

function replyReDone(reParentNO, replyCnt) {
	if ($.trim($('#ReText' + replyCnt).val()) == '') {
		alert("내용을 입력해주세요.");
		return false;
	}

	if ($.trim($('#ReText' + replyCnt).val().length) > 300) {
		alert("댓글은 300글자를 초과할 수 없습니다.");
		return false;
	}
	$.ajax({
		type: 'POST',
		url: '/board/boardReply/update',
		dataType: "json",
		data: { "boardReText": $('#ReText' + replyCnt).val(), "id": $('#id').val(), "articleNO": $("#articleNO").val(), "nick": $("#nick").val(), "replyNO": $("#replyNO" + replyCnt).val(), "reParentNO": reParentNO },
		success: function(data) {
			// data.server에서 보낸 map text
			alert('수정이 완료되었습니다.');
			$('#ReText').val("");
			location.reload();
		},
		error: function(request, status, error) {
			alert('에러!! : ' + request.responseText + ":" + error);
		}
	}); //end ajax
}



// [게시판 상세보기 댓글 삭제]
function delReply(replyNO) {
	var chk = confirm("정말 댓글을 삭제하시겠습니까?");
	if (chk) {
		$.ajax({
			type: 'POST',
			url: '../board/boardReply/delete',
			dataType: "json",
			data: { "replyNO": replyNO },
			success: function(data) {

				console.log(data);

				if (data.ret = 0) {
					alert('삭제에 실패했습니다.');

				} else {
					alert('삭제되었습니다.');
					location.reload();
				}
			},
			error: function(error) {
				alert('에러: ' + error);
			}

		})
	}
}



function funok3() {
	if (alert("정상적으로 등록되었습니다.") == true) {

	} else {
		alert("등록에 실패하였습니다.")
		return;
	}
}