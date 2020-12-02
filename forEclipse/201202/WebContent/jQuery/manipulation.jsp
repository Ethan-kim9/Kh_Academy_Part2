<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manipulation</title>
</head>
<body>
	<div id='main'>
		<div class='target'>TARGET</div>
		<div class='btn_box'>
			<input type='button' value='WRAP' id='btnWrap' onclick= 'printlog(this)'/> 
			<input type='button' value='APPEND' id='btnAppend' onclick= 'printlog(this)'/> 
			<input type='button' value='PREPEND' id='btnPrepend' onclick= 'printlog(this)' />
		</div>
	</div>
	<script>
	function printlog(button){
		console.log(button.value);
		let wrap = "<label><input type = 'checkbox' />확인 </label>";
			$('#main > .target').wrap(wrap);
		}

	</script>
</body>
</html>