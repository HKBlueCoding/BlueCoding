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

window.onload = function (){

	bChest.style.display = "none";
	cChest.style.display = "none";
	dChest.style.display = "none";	
}