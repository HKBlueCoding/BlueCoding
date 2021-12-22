/**
 * 
 */
function funRev(nick, id) {
    var favo = confirm("리뷰를 등록하시겠습니까??");
    if (favo == true) {
        document.favo.submit();
    }
}


function reviewReply(revParentNO, bookNO) {

    window.open("/view/review/reply/add", "답글쓰기", "width=400, height=500, history=no, resizable=no, status=no, scrollbars=yes, menubar=no");

}

function pageBuy(pageNO) {
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
                        data: {
                            "pageNO": pageNO,
                            "id": id
                        },
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
            data: {"bookNO": bookNO},
            success: function(data) {
				if(data.ret > 0){
					alert('책 삭제에 성공하였습니다.');
					location.href="../../list";
				}
				
				if(data.ret == 0){
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
            data: {"pageNO": pageNO},
            success: function(data) {
				if(data.ret > 0){
					alert('페이지 삭제에 성공하였습니다.');
					location.href="../../list";
				}
				
				if(data.ret == 0){
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
            data: {"revNO": revNO},
            success: function(data) {
				if(data.ret > 0){
					alert('댓글 삭제에 성공하였습니다.');
					location.href="../../list";
				}
				
				if(data.ret == 0){
					alert('댓글 삭제에 실패하였습니다.');
				}
            },
            error: function(error) {
                alert('에러: ' + error);
            }
        }); // ajax 끝
    } // if문 끝
} // 펑션 끝