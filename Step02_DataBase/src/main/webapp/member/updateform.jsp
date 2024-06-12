<%@page import="test.member.dto.MemberDto"%>
<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 수정할 회원의 번호를 읽어온다.
	int num = Integer.parseInt(request.getParameter("num"));
	//2. DB에서 해당 회원의 정보를 얻어온다
	MemberDto dto=new MemberDao().getData(num);
	//3. 회원 수정 양식을 응답한다.
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/updateform.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h3>회원정보 수정 양식</h3>
		<form action="${pageContext.request.contextPath}/member/update.jsp" method="post">
			<div class="mb-3">
				<label for="num" class="form-label">번호</label>
				<input type="text" class="form-control" name="num" id="num" value="<%=dto.getNum() %>"readonly/>
			</div>
			<div class="mb-3">
				<label for="name" class="form-label">이름</label>
				<input type="text" class="form-control" name="name" id="name" value="<%=dto.getName() %>"/>
			</div>
			<div class="mb-3">
				<label for="addr" class="form-label">주소</label>
				<input type="text" class="form-control" name="addr" id="addr" value="<%=dto.getAddr() %>"/>
			</div>
			<button type="submit" class="btn btn-outline-primary btn-sm">수정확인</button>
			<button type="reset" class="btn btn-outline-secondary btn-sm">취소</button>
		</form>
	</div>
</body>
</html>