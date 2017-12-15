<%@page import="test.dao.MemberDao"%>
<%@page import="test.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
	List<MemberDto> list = MemberDao.getInstance().getList();
%>
</body>
<fieldset>
	<caption>Member 회원 목록</caption>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>주소</th>
			</tr>
		</thead>
		<tbody>
			<%for(MemberDto tmp:list) {%>
			<tr>
				<td><%=tmp.getNum() %></td>
				<td><%=tmp.getName() %></td>
				<td><%=tmp.getAddr() %></td>
			</tr>
			<%} %>
		</tbody>
	</table>
</fieldset>
</html>