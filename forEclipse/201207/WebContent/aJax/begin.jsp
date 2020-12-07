<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BEGIN</title>
<style>
#result{
	width : 400px;
	height: 250px;
	background-color: #eee;
}
</style>
</head>
<body>
	<div id='begin'>
		<fieldset>
			<legend> Ajax의 특징</legend>
			<ul>
				<li>별도로 외부 플러그인이나 라이브러리, API(ex. ActiveX)등이 필요하지 않다.</li>
				<li>브라우저의 내부에 있는 자바스크립트만으로 처리가능하다.</li>
				<li>비동기 방식으로 서버와 통신해 브라우저의 새로고침 없이 특정 영역의 내용을 동적으로 변경할 수 있다.</li>
				<li>프로그램 방식을 Web에서 App 방식으로 처리할 수 있다.</li>
				<li>AJAX(Asynchronous JavaScript XML)비동기 방식의 자바스트립트 XML (최근엔
					XML 보다 JSON을 많이 사용)</li>
				<li>Ajax의 가장 중추적 역할을 하는 객체는 XML HttpRequest 이다.</li>
			</ul>
		</fieldset>

		<h3>간단한 테스트</h3>
		<p>(서버의 결과를 표시해 주기 위해 전체 화면이 새로고침 되는지? 아니면 필요한 부분만 새로고침 되는지?)</p>

		<form name='form' method='post'>
			<label> 정수를 입력하세요</label> 
			<input type='text' size='6' name='num' value='${param.num}'/> 
			<!-- value 값에 ${param.num}을 통해, 파라미터로 전달 된 값을 계속 표시할 수도 있다. -->
			<input type='submit' value='Check' />
		</form>
		<div id='result'>

		</div>
	</div>
<script>
// AJAX를 이용해서 처리결과를 result 영역에 삽입해주는 코드
	let form = document.form;

	form.onsubmit = function(){
		let parameter = "?num=" + form.num.value; 
		let request = new XMLHttpRequest();

		request.open('get', './aJax/CheckNum.jsp' + parameter); // 리퀘스트를 오픈한다. (요청 정보를 생성한다.)
		request.onreadystatechange // 상태변화가 감지되었을 때 (서버에서 처리가 모두 끝났을 경우에) 사용되는 함수 
		= function(){
			//requeste.status = 200 은 정상요청이라는 뜻, request.readyState = 4 는 정상적인 응답이라는 뜻
			if(request.status == 200 && request.readyState == 4){
				let req = document.getElementById('result');
				req.innerHTML = request.responseText;

				// 제이쿼리 $('#result').html(request.responseText);
				}
		}
		request.send(); // 요청 정보를 서버에 전송하는 것

		return false; //sub의 기능을 취소해줌
	}
</script>
</body>
</html>