<%@page import="test.dao.MemberDao"%>
<%@page import="test.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/list.jsp</title>
<link rel="stylesheet" href="../css/bootstrap.css" />
<style>
	a, a:link{
		text-decoration : none;
		color : #fff;
	}
</style>
</head>
<body>
<%
	//회원 목록을 얻어온다.
	List<MemberDto> list = MemberDao.getInstance().getList();	
%>
<div class="container">
	<button class="btn btn-success"><a href="insertform.jsp">회원 추가</a></button>
	<table class="table">
		<caption>회원 목록</caption>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>주소</th>
				<th>삭제</th>
				<th>수정</th>
			</tr>
		</thead>
		<tbody>
			<%for(MemberDto tmp:list) {%>
				<tr>
					<td><%=tmp.getNum() %></td>
					<td><%=tmp.getName() %></td>
					<td><%=tmp.getAddr() %></td>
					<td><button class="btn btn-danger"><a href="delete.jsp?num=<%=tmp.getNum()%>">삭제</a></button></td>
					<td><button class="btn btn-warning"><a href="updateform.jsp?num=<%=tmp.getNum()%>">수정</a></button></td>
				</tr>
			<%} %>
		</tbody>
	</table>
</div>
</body>
</html>