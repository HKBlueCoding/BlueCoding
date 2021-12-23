/**
 * 
 */
// 댓글 구현

$(document).ready(function() {
	$('#repBtn').click(function() {
		$.ajax({
			type: 'POST',
			url: '/news/event/newsReply/add',
			dataType: "json",
			data: { "newsReText": $('#newsReText').val(), "id": $('#id').val(), "newsNO": $("#newsNO").val(), "nick": $("#nick").val() },
			success: function(data) {
				// data.server에서 보낸 map text
				alert('댓글이 등록되었습니다.');
				$('#newsReText').val("");
				location.reload();
			},
			error: function(request, status, error) {
				alert('에러!! : ' + request.responseText + ":" + error);
			}
		}); //end ajax 
	}); //end on 
});



// 댓글 수정

function replyClick(replyCnt) {
	var modDisplay = document.getElementsByClassName("mod")[(replyCnt - 1)].style.display;
	if (modDisplay == "none") {
		document.getElementsByClassName("mod")[(replyCnt - 1)].style.display = "block";
	} else {
		document.getElementsByClassName("mod")[(replyCnt - 1)].style.display = "none";
	}
	console.log('글번호' + mod);

}

function replyDone(replyNO, replyCnt) {
	$.ajax({
		type: 'POST',
		url: '/news/event/newsReply/update',
		dataType: "json",
		data: { "newsReText": $('#ReText' + replyCnt).val(), "id": $('#id').val(), "newsNO": $("#newsNO").val(), "nick": $("#nick").val(), "newsReplyNO": replyNO },
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



// 댓글 답글 구현

function replyReClick(replyCnt) {
	var reDisplay = document.getElementsByClassName("replyRe")[(replyCnt - 1)].style.display;
	if (reDisplay == "none") {
		document.getElementsByClassName("replyRe")[(replyCnt - 1)].style.display = "block";
	} else {
		document.getElementsByClassName("replyRe")[(replyCnt - 1)].style.display = "none";
	}
	console.log('글번호' + replyRe);

}

function replyInsert(nReParentNO, replyCnt) {
	$.ajax({
		type: 'POST',
		url: '../../news/event/newsReplyRe/add',
		dataType: "json",
		data: { "newsReText": $('#RepReText' + replyCnt).val(), "id": $('#id').val(), "newsNO": $("#newsNO").val(), "nick": $("#nick").val(), "nReParentNO": nReParentNO, "newsReplyNO": $("#newsReplyNO").val() },
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



// 댓글 답글 수정

function replyClick(replyCnt) {
	var modDisplay = document.getElementsByClassName("mod")[(replyCnt - 1)].style.display;
	if (modDisplay == "none") {
		document.getElementsByClassName("mod")[(replyCnt - 1)].style.display = "block";
	} else {
		document.getElementsByClassName("mod")[(replyCnt - 1)].style.display = "none";
	}
	console.log('글번호' + mod);

}

function replyReDone(nReParentNO, replyCnt) {
	$.ajax({
		type: 'POST',
		url: '/news/event/newsReply/update',
		dataType: "json",
		data: { "newsReText": $('#ReText' + replyCnt).val(), "id": $('#id').val(), "newsNO": $("#newsNO").val(), "nick": $("#nick").val(), "newsReplyNO": $("#newsReplyNO" + replyCnt).val(), "nReParentNO": nReParentNO },
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



// [이벤트 게시판 삭제]
function delEvent(newsNO) {
	var chk = confirm("정말 삭제하시겠습니까?");
	if (chk) {
		$.ajax({
			type: 'POST',
			url: '../event/delete',
			dataType: "json",
			data: { "newsNO": newsNO },
			success: function(data) {

				console.log(data);

				if (data.ret = 0) {
					alert('삭제에 실패했습니다.');

				} else {
					alert('삭제되었습니다.');
					location.href = '../event';
				}
			},
			error: function(error) {
				alert('에러: ' + error);
			}

		})
	}
}



// [게시판 상세보기 댓글 삭제]
function delReply(newsReplyNO) {
	var chk = confirm("정말 댓글을 삭제하시겠습니까?");
	if (chk) {
		$.ajax({
			type: 'POST',
			url: '../event/view/delete',
			dataType: "json",
			data: { "newsReplyNO": newsReplyNO },
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
