/**
 *
 */

let guestbook = function () {
  // 방명록 입력버튼이 클릭된 경우
  let btnInsert = document.getElementById("btnInsert");

  //자바 스크립트 1
  if (btnInsert != null) {
    btnInsert.onclick = function () {
      let frm = document.frm_gb_insert;
      frm.action = "./guestbook/insert_result.jsp";
      frm.submit();
    };
  }
  /*
	
	//제이쿼리 2
	$('#btnInsert').click(function(){
		$('#frm_gb_insert').action='./insert_result.jsp'
		$('#frm_gb_insert').submit();
	})
	
	*/

  let btnDelete = document.getElementById("btnDelete");
  if (btnDelete != null) {
    btnDelete.onclick = function () {};
  }
};
/**
 *  방명록글씨 삭제하는 경우
 */
function funcDelete(frm) {
  let pwd = prompt("방명록을 삭제하시려면 작성시의 암호를 입력해주세요.");
  frm.pwd.value = pwd;
  frm.action = "./guestbook/delete_result.jsp";
  frm.submit();
}

/**
 * 방명록의 글씨를 업데이트 하는 경우
 */

function funcUpdate(frm) {}
