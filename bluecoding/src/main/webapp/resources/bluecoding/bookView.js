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

function pageBuy(pageNO){
	
	var buy = confirm("해당 회차를 구매 하시겠습니까?");
	
	// 만약 구매 수락시 ajax로 해당 페이지 구매
	if(buy == true){
		
   	  $.ajax({
		type:'POST', 
        url:'../page/buy',
      	dataType: 'json',
		data:{"pageNO": pageNO, "id": $("#id").val()},
        success: function(data){
        	
			if(data.ret > 0){ 
				alert('회차 구매에 성공하였습니다. 해당 페이지로 이동합니다');
			}else{
				alert('잔액이 부족합니다');
			}
      	},
      	error: function(error){
         	alert('에러: '+error);
      	}
   	 }); // ajax 끝
		
	} // if문 끝
	
}