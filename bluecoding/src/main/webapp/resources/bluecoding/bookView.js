/**
 * 
 */


function funRev(nick, id) {
	var favo = confirm("리뷰를 등록하시겠습니까??");
	if (favo == true) {
		document.favo.submit();
	}
}


function reviewReply(revParentNO, bookNO){
		
	window.open("/view/review/reply/add","답글쓰기", "width=400, height=500, history=no, resizable=no, status=no, scrollbars=yes, menubar=no");

}