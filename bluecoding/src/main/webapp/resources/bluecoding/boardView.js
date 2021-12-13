/**
 * 
 */
     function backToList(obj){
	    obj.action="list";
	    obj.submit();
     }
	 
	 function fn_remove_article(url,articleNO){
		 var form = document.createElement("form");
		 form.setAttribute("method", "post");
		 form.setAttribute("action", url);
	     var articleNOInput = document.createElement("input");
	     articleNOInput.setAttribute("type","hidden");
	     articleNOInput.setAttribute("name","articleNO");
	     articleNOInput.setAttribute("value", articleNO);
		 
	     form.appendChild(articleNOInput);
	     document.body.appendChild(form);
	     form.submit();
	 
	 }
	 
	 function fn_reply_form(url, parentNO){
		 var form = document.createElement("form");
		 form.setAttribute("method", "post");
		 form.setAttribute("action", url);
	     var parentNOInput = document.createElement("input");
	     parentNOInput.setAttribute("type","hidden");
	     parentNOInput.setAttribute("name","parentNO");
	     parentNOInput.setAttribute("value", parentNO);
		 
	     form.appendChild(parentNOInput);
	     document.body.appendChild(form);
		 form.submit();
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