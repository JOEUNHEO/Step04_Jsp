<%@page import="java.util.List"%>
<%@page import="test.dao.MemberDao"%>
<%@page import="test.dto.MemberDto"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member.jsp</title>
<style>
	a, a:link{
		text-decoration:none;
		color: green;
	}
</style>
</head>
<body>
<%
	List<MemberDto> list = MemberDao.getInstance().getList();
	
%>
	<form action="insert.jsp" method="post">
		<label for="num">번호</label>
		<input type="text" name="num" id="num" />
		<label for="name">이름</label>
		<input type="text" name="name" id="name" />
		<label for="addr">주소</label>
		<input type="text" name="addr" id="addr" />
		<button type="submit">저장</button>
	</form>
			
	<fieldset>
		<table>
			<caption>Member 정보 내역</caption>
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>주소</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<%for(MemberDto tmp:list) {%>
				<tr>
					<td><%=tmp.getNum() %></td>
					<td><%=tmp.getName() %></td>
					<td><%=tmp.getAddr() %></td>
					<td><a href="updateform.jsp?num=<%=tmp.getNum()%>">수정</a></td>
					<td><a href="delete.jsp?num=<%=tmp.getNum()%>">삭제</a></td>
				</tr>
				<%} %>
			</tbody>
		</table>	
	</fieldset>
	
</body>
</html>