/**
 * 
 */

let logInOut = function(){
/*	
	$('#btnLogin').on('click', function(){
		$('#frm_log').action = "./member/login.jsp";
		$('#frm_log').submit();
	});
	
	$('#btnLogout').on('click', function(){
		location.href = "./member/logout.jsp";
	});
	
*/
	// javascript version
	let btnLogin = document.getElementById('btnLogin');
	let btnLogout = document.getElementById('btnLogout');
	
	if(btnLogin != null){
		btnLogin.onclick = function(){
			let frm = document.frm_log;
			frm.action = './member/login.jsp';
			frm.submit();
		}
	}
	if(btnLogout != null){
		btnLogout.onclick = function(){
			location.href = './member/logout.jsp';
		}
	}
		
}