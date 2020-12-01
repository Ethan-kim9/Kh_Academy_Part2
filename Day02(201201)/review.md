# jQuery


복습

-----

1. html + CSS + javascript를 통합한 `라이브러리`
2. 쉬운 접근방법을 제공 : 전체 랜더링 속도가 떨어진다.
3. Javascript 문법을 그대로 사용함
4. 대소문자는 구별하지만 ''와 ""는 구별하지 않는다. - Javascript

사용법 

    1. CDN
    2. 라이브러리를 해당 프로젝트내에 복사해 사용.
   
### JavaScript의 선언에 대해

1. Var : 로컬변수임을 나타낸다. (Function-scope)
2. let: (block-scope)
3. Const : 상수

---

모든 개발도구 설정시 꼭 확인해야할 것!

- UTF - 8 설정

- General 
  - Content Types
  - Workspace
- Web
  - HTML
  - CSS
  - JS
- Java
  
- 표준시간 (아시아 / 한국 확인)
- 라이브러리 설정 (JRE 와 톰켓) : 특히 <%@에서 오류가나는 경우는 모두 톰켓라이브러리 설정확인할 것  %>
  - Server - Runtime Environment을 통해, 셋업

Java - Installed JREs (셋업)

```
JRE 와 JDK ?
JRE : Java Runtime Environment (OS 의존적)
JDK : Java Development kit (OS에 독립적)
    (11버전 이후로는 JDK 만 있는 경우도 있다.)
 ```

 * NOSQL 타입의 DB는 JSON 형식으로 데이터를 보관하기도 한다.


----


# JSP 문법
```JSP
<%@ %>  // 지시문
<%= %>  // 표현식
<%! %>  // 선언문
<%  %> // Scriptlet : 자바코드

```