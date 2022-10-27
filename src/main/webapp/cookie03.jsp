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
  Cookie[] cookies = request.getCookies();

    // JSESSIONID 빼고 다 삭제해라
  for (int i = 0; i < cookies.length; i++) {
      if (!cookies[i].getName().equals("JSESSIONID")) {
          cookies[i].setMaxAge(0);
          response.addCookie(cookies[i]);
      }
  }
  response.sendRedirect("cookie02.jsp");
%>
<a href="cookie01.jsp">쿠키 생성</a>
<a href="cookie02.jsp">쿠키 확인</a>
<a href="cookie03.jsp">쿠키 삭제</a>

</body>
</html>
