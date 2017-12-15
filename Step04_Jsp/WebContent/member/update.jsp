<%@page import="test.dao.MemberDao"%>
<%@page import="test.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update.jsp</title>
</head>
<body>
<%
	
	request.setCharacterEncoding("utf-8");
	int num = Integer.parseInt(request.getParameter("num"));
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	//MemberDto 에 담아서
	MemberDto dto = new MemberDto(num, name, addr);
	//DB 에 저장하기
	boolean flag = MemberDao.getInstance().update(dto);
%>
<script>
<%if(flag){%>
	alert("수정되었습니다.");
<%}else{%>
	alert("수정이 실패했습니다.");
<%}%>
location.href="list.jsp";
</script>
</body>
</html>