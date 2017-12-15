<%@page import="test.dao.MemberDao"%>
<%@page import="test.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertform.jsp</title>
<link rel="stylesheet" href="../css/bootstrap.css" />
<style>
	a, a:link{
		text-decoration : none;
		color : #fff;
	}
</style>
</head>
<body>
<div class="container">
	<h3>저장 폼 입니다.</h3>
	<form class="form-inline" action="insert.jsp" method="post">
		<div class="form-group">
			<label for="name">이름</label>
			<input class="form-control" type="text" name="name" id="name" />
		</div>
		<div class="form-group">
			<label for="addr">주소</label>
			<input class="form-control" type="text" name="addr" id="addr" />
		</div>
		<button type="submit" class="btn btn-default">저장</button>
	</form>
	<button class="btn btn-primary"><a href="list.jsp">회원 목록 보기</a></button>
</div>
</body>
</html>