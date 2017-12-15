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
		//폼 전송되는 회원정보를 읽어와서
		request.setCharacterEncoding("utf-8");
		int num = Integer.parseInt(request.getParameter("num"));
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		
		MemberDto dto = new MemberDto(num, name, addr);
		boolean flag = MemberDao.getInstance().update(dto);
		//응답한다.
		//응답 인코딩 설정
		response.setCharacterEncoding("utf-8");
		//응답 컨텐츠 설정
		response.setContentType("text/html;charset=utf-8");
%>
<script>
<%if(flag){%>
	alert("수정되었습니다.");
<%}else{%>
	alert("수정이 실패했습니다.");
<%}%>
location.href='Member.jsp';
</script>
</body>
</html>