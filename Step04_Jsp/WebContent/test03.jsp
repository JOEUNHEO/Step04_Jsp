<%@page import="java.util.Iterator"%>
<%@page import="javax.servlet.jsp.tagext.IterationTag"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test03.jsp</title>
</head>
<body>
<%
	List<String> names = new ArrayList<>();
	names.add("김구라");
	names.add("해골");
	names.add("원숭이");
	names.add("주뎅이");
	
	Iterator<String> it = names.iterator();
%>
<h3>친구 목록1</h3>
<ul>
	<%for(int i = 0; i < names.size(); i++) { %>
	<li><%=names.get(i) %></li>
	<%} %>
</ul>

<h3>친구 목록2</h3>
<ul>
	<%for(String tmp:names){ %>
	<li><%=tmp %></li>
	<%} %>
</ul>

<h3>친구 목록3</h3>
<ul>
	<%while(it.hasNext()) { %>
	<li><%=it.next() %></li>
	<%} %>
</ul>
</body>
</html>