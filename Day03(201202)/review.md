
##  jQuery Core

each
- 객체를 순환한다.
  
```js

$('input:button'), document.forms[0]).css('background-color','aaf');


$('.div').each(function(i)){
    $(this).css('background-color' , '배열[i]');
}
//for문 대신 사용하는 것
```

index(subject) | find()
- 위치값을 반환하는 함수

```
텍스트로 표현하기

< : &lt , > : &gt

```


## function의 기능
1.  Hosing : 스크립트 실행과함께 function이 메모리에 상주

```js
a(); // 함수 선언전에 호출이 가능
b(); // 함수 선언전 호출이 불가능

function a(){}
var b = function(){}

```