/**
 * 
 */
// 이전 페이지로 돌아가기

function funbtn() {
	if (confirm("이전 페이지로 돌아가시겠습니까??")) {
		javascript: history.back();
	}
	else {
		return;
	}
}



function funRev(nick, id) {
	var favo = confirm("리뷰를 등록하시겠습니까??");
	if (favo == true) {
		document.favo.submit();
	}
}


function reviewReply(revParentNO, bookNO) {

	window.open("/view/review/reply/add", "답글쓰기", "width=400, height=500, history=no, resizable=no, status=no, scrollbars=yes, menubar=no");

}

function pageBuy(pageNO, authorId) {
	var id = $("#id").val();
	if (id == null || id == "") {
		alert('로그인 후 결제가 가능합니다.');
		return;
	}

	// [구매한 내역을 조회]
	$.ajax({
		type: 'POST',
		url: '../page/check',
		dataType: 'json',
		data: {
			"pageNO": pageNO,
			"id": id
		},
		success: function(data) {

			if (data.rs > 0) {
				alert('이미 구매한 회차입니다.');
				return;
			} else {

				// [만약 구매한 내역이 없다면 해당 메세지를 표시]
				var buy = confirm("해당 회차를 구매 하시겠습니까?");

				// 만약 구매 수락시 ajax로 해당 페이지 구매
				if (buy == true) {
					$.ajax({
						type: 'POST',
						url: '../page/buy',
						dataType: 'json',
						data: {"pageNO": pageNO, "id": id, "authorId": authorId},
						success: function(data) {
							if (data.ret > 0) {
								alert('회차 구매에 성공하였습니다. 해당 페이지로 이동합니다');
								location.href = "../../view/page?pageNO=" + pageNO;
							} else {
								alert('잔액이 부족합니다');
							}
						},
						error: function(error) {
							alert('에러: ' + error);
						}
					}); // ajax 끝

				} // if문 끝
			}
		},
		error: function(error) {
			alert('에러: ' + error);
		}
	}); // ajax 끝

} // 펑션 끝

// [책 삭제 + 자식 페이지 삭제]
function bookViewDelte(bookNO) {

	var acc = confirm('해당 책을 삭제 하시겠습니까?\n삭제하면 모든 회차도 지워집니다.');
	// 만약 수락하면...
	if (acc == true) {
		$.ajax({
			type: 'POST',
			url: '../../delete',
			dataType: 'json',
			data: { "bookNO": bookNO },
			success: function(data) {
				if (data.ret > 0) {
					alert('책 삭제에 성공하였습니다.');
					location.href = "../../list";
				}

				if (data.ret == 0) {
					alert('책 삭제에 실패하였습니다.');
				}
			},
			error: function(error) {
				alert('에러: ' + error);
			}
		}); // ajax 끝
	} // if문 끝
} // 펑션 끝

// [페이지 하나 삭제]
function pageDelete(pageNO) {

	var acc = confirm('해당 페이지를 삭제하시겠습니까?');
	// 만약 수락하면...
	if (acc == true) {
		$.ajax({
			type: 'POST',
			url: '../../view/delete',
			dataType: 'json',
			data: { "pageNO": pageNO },
			success: function(data) {
				if (data.ret > 0) {
					alert('페이지 삭제에 성공하였습니다.');
					location.href = "../../list";
				}

				if (data.ret == 0) {
					alert('페이지 삭제에 실패하였습니다.');
				}
			},
			error: function(error) {
				alert('에러: ' + error);
			}
		}); // ajax 끝
	} // if문 끝
} // 펑션 끝


// [댓글 삭제]
function deleteReview(revNO) {

	var acc = confirm('해당 댓글을 삭제하시겠습니까?\n삭제해도 답글은 유지됩니다.');
	// 만약 수락하면...
	if (acc == true) {
		$.ajax({
			type: 'POST',
			url: '/view/review/delete',
			dataType: 'json',
			data: { "revNO": revNO },
			success: function(data) {
				if (data.ret > 0) {
					alert('댓글 삭제에 성공하였습니다.');
					location.reload();
				}

				if (data.ret == 0) {
					alert('댓글 삭제에 실패하였습니다.');
				}
			},
			error: function(error) {
				alert('에러: ' + error);
			}
		}); // ajax 끝
	} // if문 끝
} // 펑션 끝



// 찜하기

function funFavo() {
	var favo = confirm("상품을 찜하시겠습니까??");
	if (favo == true) {
		document.favo.action = "../view/favo/add";
		document.favo.method = "POST";
		document.favo.submit();
	}
}



// 리뷰 구현

$(document).ready(function() {
	$('#repBtn').click(function() {

		if ($.trim($("#revText").val()) == '') {
			alert("내용을 입력해주세요.");
			return false;
		}

		if ($.trim($("#revText").val().length) > 300) {
			alert("댓글은 300글자를 초과할 수 없습니다.");
			return false;
		}

		$.ajax({
			type: 'POST',
			url: '../view/review/add',
			dataType: "json",
			data: { "revText": $('#revText').val(), "id": $('#id').val(), "bookNO": $("#bookNO").val(), "nick": $("#nick").val() },
			success: function(data) {
				// data.server에서 보낸 map text
				alert('리뷰가 등록되었습니다.');
				$('#revText').val("");
				location.reload();
			},
			error: function(request, status, error) {
				alert('에러!! : ' + request.responseText + ":" + error);
			}
		}); //end ajax 
	}); //end on 
});



// 리뷰 수정

function replyClick(replyCnt) {
	var modDisplay = document.getElementsByClassName("mod")[(replyCnt - 1)].style.display;
	if (modDisplay == "none") {
		document.getElementsByClassName("mod")[(replyCnt - 1)].style.display = "block";
	} else {
		document.getElementsByClassName("mod")[(replyCnt - 1)].style.display = "none";
	}
	console.log('글번호' + mod);
 
}

function replyDone(revNO, replyCnt) {

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
		url: '../view/review/update',
		dataType: "json",
		data: { "revText": $('#ReText' + replyCnt).val(), "id": $('#id').val(), "bookNO": $("#bookNO").val(), "nick": $("#nick").val(), "revNO": revNO },
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



// 답글 구현

function replyReClick(replyCnt) {
	var reDisplay = document.getElementsByClassName("replyRe")[(replyCnt - 1)].style.display;
	if (reDisplay == "none") {
		document.getElementsByClassName("replyRe")[(replyCnt - 1)].style.display = "block";
	} else {
		document.getElementsByClassName("replyRe")[(replyCnt - 1)].style.display = "none";
	}
	console.log('글번호' + replyRe);

}

function replyInsert(revParentNO, replyCnt) {
	if ($.trim($('#RepReText' + replyCnt).val()) == '') {
		alert("내용을 입력해주세요.");
		return false;
	}

	if ($.trim($('#RepReText' + replyCnt).val().length) > 300) {
		alert("답글은 300글자를 초과할 수 없습니다.");
		return false;
	}
	$.ajax({
		type: 'POST',
		url: '../view/reviewRe/add',
		dataType: "json",
		data: { "revText": $('#RepReText' + replyCnt).val(), "id": $('#id').val(), "bookNO": $("#bookNO").val(), "nick": $("#nick").val(), "revParentNO": revParentNO, "revNO": $("#revNO").val() },
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



// 답글 수정

function replyClick(replyCnt) {
	var modDisplay = document.getElementsByClassName("mod")[(replyCnt - 1)].style.display;
	if (modDisplay == "none") {
		document.getElementsByClassName("mod")[(replyCnt - 1)].style.display = "block";
	} else {
		document.getElementsByClassName("mod")[(replyCnt - 1)].style.display = "none";
	}
	console.log('글번호' + mod);

}

function replyReDone(revParentNO, replyCnt) {

	if ($.trim($('#ReText' + replyCnt).val()) == '') {
		alert("내용을 입력해주세요.");
		return false;
	}

	if ($.trim($('#ReText' + replyCnt).val().length) > 300) {
		alert("답글은 300글자를 초과할 수 없습니다.");
		return false;
	}

	$.ajax({
		type: 'POST',
		url: '../view/review/update',
		dataType: "json",
		data: { "revText": $('#ReText' + replyCnt).val(), "id": $('#id').val(), "bookNO": $("#bookNO").val(), "nick": $("#nick").val(), "revNO": $("#revNO" + replyCnt).val(), "revParentNO": revParentNO },
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