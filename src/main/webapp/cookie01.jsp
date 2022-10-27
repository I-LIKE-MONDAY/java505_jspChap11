<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>쿠키 사용하기</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<form action="cookie01_process.jsp" method="post">
    <label for="user-id">아이디 : </label>
    <input type="text" id="user-id" name="userId" placeholder="아이디를 입력해주세요"><br>
    <label for="user-pw">비밀번호 : </label>
    <input type="text" id="user-pw" name="userPw" placeholder="비밀번호를 입력해주세요"><br>
    <button type="submit">버튼</button>
</form>

<a href="cookie01.jsp">쿠키 생성</a>
<a href="cookie02.jsp">쿠키 확인</a>
<a href="cookie03.jsp">쿠키 삭제</a>
</body>
</html>
