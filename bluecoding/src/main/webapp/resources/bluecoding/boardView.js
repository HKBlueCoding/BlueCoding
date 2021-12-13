
	 function fn_enable(obj){
		 document.getElementById("boardContent").disabled=false;
		 document.getElementById("i_title").disabled=false;
		 document.getElementById("tr_btn_modify").style.display="block";
		 document.getElementById("tr_btn_one").style.display="none"; 
		 document.getElementById("tr_btn_two").style.display="none"; 
		 document.getElementById("tr_btn_three").style.display="none"; 
	 }
	 
	 function deleteConfirm(id) {
			var alter = confirm("Are you sure to delete " + id + "?");
			
			if(alter == true) {
				//삭제서블릿으로 이동
				location.href= url + '?articleNO='+articleNO;
				
			} else {
				// 다시 리스트로
				location.href='list';
			}
		}