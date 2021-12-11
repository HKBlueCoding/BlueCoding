/**
 * 
 */

var bookList = document.getElementById('bookList');
var pageList = document.getElementById('pageList');
var bkDetails = document.getElementById('bkDetails');
var pgDetails = document.getElementById('pgDetails');

function bookOn(){
	pageList.style.display = "none";
	bookList.style.display = "block";
}

function pageOn(){
	pageList.style.display = "block";
	bookList.style.display = "none";
}

function bkModalOn(){
	pgDetails.style.display = "none";
	bkDetails.style.display = "block";
	
	
}

function pgModalOn() {
	bkDetails.style.display = "none";
	pgDetails.style.display = "block";
		
}