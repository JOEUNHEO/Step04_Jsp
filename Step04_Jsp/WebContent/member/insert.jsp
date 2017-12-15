<%@page import="test.dao.MemberDao"%>
<%@page import="test.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert.jsp</title>
</head>
<body>
<%
	//인코딩
	request.setCharacterEncoding("utf-8");
	//폼 전송되는 내용을 추출해서
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	//MemberDto 에 담아서
	MemberDto dto = new MemberDto();
	dto.setName(name);
	dto.setAddr(addr);
	//MemberDao 객체를 이용해서 저장한다.
	boolean flag = MemberDao.getInstance().insert(dto);
%>
<script>
<%if(flag){%>
	alert("저장되었습니다.");
<%}else{%>
	alert("저장이 실패했습니다.");
<%}%>
location.href="list.jsp";
</script>
</body>
</html>