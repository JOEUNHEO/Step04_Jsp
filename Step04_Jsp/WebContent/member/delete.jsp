<%@page import="test.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete.jsp</title>
</head>
<body>
<%
	int num = Integer.parseInt(request.getParameter("num"));

	boolean flag = MemberDao.getInstance().delete(num);
%>
<script>
<%if(flag){%>
	alert("삭제되었습니다.");
<%}else{%>
	alert("삭제가 실패했습니다.");
<%}%>
location.href="list.jsp";
</script>
</body>
</html>