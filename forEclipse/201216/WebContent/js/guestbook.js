/**
 * 
 */


let gb = function(){
	// 방명록 입력버튼이 클릭된 경우
	let btnInsert = document.getElementById('btnInsert');
	
	//자바 스크립트 1
	if(btnInsert != null){
		btnInsert.onclick = function(){
			let frm = document.frm_gb_insert;
			frm.action = './insert_result.jsp';
			frm.submit();	
		}
	}	
	
	//제이쿼리 2
	$('#btnInsert').click(function(){
		
	})
}