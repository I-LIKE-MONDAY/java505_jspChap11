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
<%
  String userId = request.getParameter("userId");
  String userPw = request.getParameter("userPw");

  if (userId.equals("admin") && userPw.equals("1234")) {
    Cookie cookieId = new Cookie("userId", userId);
    Cookie cookiePw = new Cookie("userPw", userPw);

//쿠키를 생성한 후에는 반드시 response 내장 객체의 `addCookie( )` 메소드로 쿠키를 설정해야 함
    response.addCookie(cookieId);
    response.addCookie(cookiePw);

    out.println("쿠키 생성이 성공하였습니다.");
    out.println(userId + "님 환영합니다.");
  }
  else {
      out.println("쿠키 생성이 실패하였습니다.");
  }
%>

<a href="cookie01.jsp">쿠키 생성</a>
<a href="cookie02.jsp">쿠키 확인</a>
<a href="cookie03.jsp">쿠키 삭제</a>
</body>
</html>
