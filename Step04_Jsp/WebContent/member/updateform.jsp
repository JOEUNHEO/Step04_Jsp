<%@page import="test.dao.MemberDao"%>
<%@page import="test.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateform.jsp</title>
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
	//수정할 회원의 번호를 읽어온다.
	int num = Integer.parseInt(request.getParameter("num"));
	
	//회원 정보를 읽어온다.
	MemberDto dto = MemberDao.getInstance().getData(num);
		
	response.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
%>
<div class="container">
	<h3>수정 폼 입니다.</h3>
	<form class="form-horizontal" action="update.jsp" method="post">
		<div class="form-group">
			<div class="col-sm-9">
				<input class="form-control" type="hidden" name="num" value="<%=dto.getNum() %>" />
			</div>
		</div>
		<div class="form-group">
			<label for="name" class="col-sm-3 control-label">이름</label>
			<div class="col-sm-9">
				<input class="form-control" type="text" name="name" value="<%=dto.getName() %>" />
			</div>
		</div>
		<div class="form-group">
			<label for="addr" class="col-sm-3 control-label">주소</label>
			<div class="col-sm-9">
				<input class="form-control" type="text" name="addr" value="<%=dto.getAddr() %>" />
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-9 col-sm-offset-3">
				<button type="submit" class="btn btn-default">변경</button>	
			</div>
		</div>
	</form>
	<button class="btn btn-primary"><a href="list.jsp">회원 목록 보기</a></button>
</div>
</body>
</html>