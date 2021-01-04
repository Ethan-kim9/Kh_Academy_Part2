/**
 * 회원 관리에 관련된 스크립트
 * 작성자 : it여행자
 * 작성일 : 2020.12
 */
function getID(id){ return document.getElementById(id)}

var board = function(){
	var frm = document.frm_board;
	
	var url = 'index.jsp?inc=./board/'; //board.do?job=
	var job = "board.do?job=";
	
	
	var btnInsert = getID('btnInsert');
	var btnSelect = getID('btnSelect');
	var btnSave = getID('btnSave');
	var btnFind = getID('btnFind');
	var btnDelete = getID('btnDelete');
	var btnModify = getID('btnModify');
	var btnUpdate = getID('btnUpdate');
	var btnRepl	  = getID('btnRepl');
	var btnReplSave = getID('btnReplSave');
	
	
	//댓글 저장
	if(btnReplSave !=null){
		btnReplSave.onclick = function(){
			frm.enctype = 'multipart/form-data';
			frm.action= job + 'replR';
			frm.submit();
		}
	}
	// 댓글작성 화면을 호출해줌
	if(btnRepl != null){
		btnRepl.onclick = function(){
			frm.action= job + 'repl';
			frm.submit();
		}
	}
	
	
	//게시물 수정 및 저장
	if(btnUpdate != null){
		btnUpdate.onclick =function(){
			var passwordCheck = prompt("수정을 위해선 암호가 필요합니다.")
			if(passwordCheck != null){
				frm.pwd.value = pwd;
				frm.enctype = 'multipart/form-data';
				frm.action = job +'updateR';
				frm.submit();
			}
		}
	}
	
	
	if(btnModify != null){
		btnModify.onclick = function(){
			frm.action = job + 'update';
			frm.submit();
		}
	}
	
	if(btnDelete != null){
		btnDelete.onclick = function(){
			var question = confirm("정말 삭제하시겠습니까?");
			if(question != null){
				frm.pwd.value = question;
				frm.action = job + 'deleteR';
				frm.submit();
			}
		}
	}
	
	if(btnFind != null){
		btnFind.onclick = function(){
			frm.nowPage.value = 1;
			frm.action = job + 'select';
			frm.submit();
		}
	}
	if(btnSave != null){
		btnSave.onclick = function(){
			frm.enctype = 'multipart/form-data';
			frm.action = job + 'insertR';
			frm.submit();
		}
	}
	
	if(btnSelect != null){
		btnSelect.onclick = function(){
			frm.action = job + 'select';
			frm.submit();
		}
	}
	
	if(btnInsert != null){
		btnInsert.onclick = function(){
			
		frm.action = job + 'insert'; 
		frm.submit();
		}
	}
}


function goPage(page){
	var job = "board.do?job=";
	var frm = document.frm_board;
	frm.nowPage.value = page;
	frm.action = job + 'select';
	frm.submit();
}


function view(serial){
	var job = "board.do?job=";
	var frm = document.frm_board;
	frm.serial.value = serial;
	frm.action = job + 'view';
	frm.submit();
}














