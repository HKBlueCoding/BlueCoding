/**
 * 
 */

 	var aChest =  document.getElementById('aa');
 	var bChest =  document.getElementById('bb');  	  
 	var cChest =  document.getElementById('cc');
	var dChest =  document.getElementById('dd');

function chest1(){
	
	bChest.style.display = "none";
	cChest.style.display = "none";
	dChest.style.display = "none";
	aChest.style.display = "block";
	 
}

function chest2(){
	
	aChest.style.display = "none";
	cChest.style.display = "none";
	dChest.style.display = "none";
	bChest.style.display = "block";
	 
}

function chest3(){
	
	aChest.style.display = "none";
	bChest.style.display = "none";
	dChest.style.display = "none";
	cChest.style.display = "block";
	 
}

function chest4(){	
	aChest.style.display = "none";
	bChest.style.display = "none";
	cChest.style.display = "none";
	dChest.style.display = "block";
	
	 
}

function withdraw(benefit){
	
	// 만약 benefit이 0이면
	if(benefit == 0){ 
		alert('수익이 없습니다.'); 
		return;
	}else{
		// 아닐 경우... newwindow로 
		window.open("../../ahthor/email","현금화 하기", "width=1500, height=500, history=no, resizable=no, status=no, scrollbars=yes, menubar=no");
	}
		
}

window.onload = function (){

	bChest.style.display = "none";
	cChest.style.display = "none";
	dChest.style.display = "none";	
}