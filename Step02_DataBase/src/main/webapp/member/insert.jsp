<%@page import="java.util.List"%>
<%@page import="test.member.dto.MemberDto"%>
<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 폼에 전송되는 이름과 주소를 추출한다.
	String name=request.getParameter("name");
	String addr=request.getParameter("addr");
	//MemberDto 객체에 담는다
	MemberDto dto=new MemberDto();
	dto.setName(name);
	dto.setAddr(addr);
	//2. DB에 저장한다.
	MemberDao dao=new MemberDao();
	boolean isSuccess=dao.insert(dto);
	//3. 응답한다.
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/insertform.jsp</title>
</head>
<body>
	<div class="container">
	<h3>알림</h3>
	<%if(isSuccess){ %>
		<p>
			<strong><%=name %></strong> 님의 정보를 저장했습니다
			<a href="${pageContext.request.contextPath}/member/list.jsp">목록보기</a>
		</p>
	<%}else{ %>
		<p>
			회원정보 저장 실패!
			<a href="${pageContext.request.contextPath}/member/insertform.jsp">다시 작성</a>
		</p>
	<%} %>
	</div>

</body>
</html>