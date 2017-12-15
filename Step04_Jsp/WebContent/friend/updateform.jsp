<%@page import="test.dao.MemberDao"%>
<%@page import="test.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateform.jsp</title>
</head>
<body>
<%
		//폼 전송되는 회원정보를 읽어와서
		request.setCharacterEncoding("utf-8");
		int num = Integer.parseInt(request.getParameter("num"));
		
		MemberDto dto = MemberDao.getInstance().getData(num);
		String name = dto.getName();
		String addr = dto.getAddr();
		//응답한다.
		//응답 인코딩 설정
		response.setCharacterEncoding("utf-8");
		//응답 컨텐츠 설정
		response.setContentType("text/html;charset=utf-8");
%>
	
	<form action="update.jsp" method="post">
		<input type="hidden" name="num" value="<%=num %>" />
		<label for="name">이름</label>
		<input type="text" name="name" value="<%=name %>" />
		<label for="addr">주소</label>
		<input type="text" name="addr" value="<%=addr %>" />
		<button type="submit">변경</button>
	</form>
</body>
</html>