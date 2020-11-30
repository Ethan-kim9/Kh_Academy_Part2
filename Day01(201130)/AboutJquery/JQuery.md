# JQuery

- html, CSS , Javascript 를 통합한 하나의 라이브러리
- 접근방법이 굉장히 쉽다. 하지만 처리속도가 낮다는 단점이 있다.
- 모든 JS 문법은 그대로 사용이 가능하다.
- 대소문자는 구별해주어야한다.
- '' "" 는 구별하지 않는다.
- 라이브러리를 사용하는 방법?
  - CDN ?  
  - 라이브러리를 해당 프로젝트에 복사해서 사용
- jQuery는 모든 것이 함수화 되어있기 떄문에 함수에 대한 이해가 필수이다.
  


```html
  <%@ page %>
  ```
  이부분에서 오류가 생기는 경우는, Tomcat 라이브러리 임포트가 잘못된 경우이다.

  -Project - properties 를 통해서 해결 가능하다.(라이브러리 추가)


  ## 1. Scriptlet : JAVA code Area   <% %>

  ```jsp
  
  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
  <%@ // 지시문(Direction) : 페이지의 성격을 정의한다.

  <%!
  %> 
  
  // 선언문 :
  
  <%
  $('#header').css('color','#f00');
  %> 
  // 이런식으로 헤더를 불러오고 css를 적용시킬 수 있다.
  ```
  
### 1.1 jQuery 문법

  CSS
  ```css
  id : #ele
  class : .ele

  #ele > ele
  #ele ele
  #ele[]
  
 /* { . . . } -> 를 $ 로 대체
 $(ele).css(key,value)
 */ 
```

# 2. DOM ? Document Object Model
: HTML 을 트리구조료 표현한 것
- Selectors, Attributes, Travrsing , Manipulation, CSS
- Event, Effects, Ajax


# 3. JSON
- 1. KEY: VALUE => {KEY : VALUE, KEY:VALUE, ...}
- 2. 배열 => [v1, v2, v3]