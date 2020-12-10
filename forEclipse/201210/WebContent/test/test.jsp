<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>회원가입</title>
    <style>
      #signin_box {
        width: 500px;
        height: 300px;
        margin: 10px;
      }
      .signin_align {
        text-align: right;
      }
      #signinfield {
        padding-right: 150px;
      }
    </style>
  </head>
  <body>
    <div id="signin_box">
      <fieldset id="signinfield">
        <legend><p>회원가입</p></legend>
        <div class= "signin_align">
            <form id="signin">
                <label>아이디 </label>
                <input type="text" id="username" /><br />
                <label>패스워드 </label>
                <input
                type="password"
                id="userPw"
                minlength="5"
                pattern="[A-Za-z0-9]{4,10}"
                /><br />
                <label>패스워드 확인 </label>
                <input type="password" id="userPwCheck" /><font
                class="checkNotice"
                size="2"
                ></font>
                <br />
                <label>이름 </label>
                <input type="text" id="username" /><br />
                <label>성별 </label>
                <form class="gender">
                    <label>남 </label>
                    <input type="radio" />
                    <label>여 </label>
                    <input type="radio" />
                </form>
                <label>이메일</label>
                <input type="email" id="username" /><br />
                <button type="submit">회원가입</button>
                <button type="submit">취소</button>
            </form>
        </fieldset>
    </div>
    </div>
</body>
</html>
