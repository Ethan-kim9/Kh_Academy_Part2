<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name='frm' method='post'>
		id : <input type='text' name='mid' pattern='[\w!$_\-]{4,10}'><br />
		<p />
		<input type='button' onclick='go()' value='GO'>
		<script>
			function go() {
				var f = document.frm.checkValidity();

				if (f)
					document.frm.submit();
				else {
					alert(f)
				}
			}

			document.frm.oninvalid = function(e) {
				alert(e)
			}
		</script>
	</form>
</body>
</html>