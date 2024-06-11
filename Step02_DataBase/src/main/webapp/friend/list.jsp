<%@page import="java.util.ArrayList"%>
<%@page import="test.member.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@page import="test.friend.dao.FriendDao"%>
<%@page import="test.friend.dto.FriendDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	FriendDao dao=new FriendDao();
	List<FriendDto> list=dao.getList();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>친구 목록입니다.</h3>
	<a href="${pageContext.request.contextPath}/friend/insertform.jsp">친구 추가</a>
	<table>
		<thead>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
	</thead>
		<tbody>
			<%for(FriendDto tmp:list){ %>
				<tr>
					<td><%=tmp.getNum() %></td>
					<td><%=tmp.getName() %></td>
					<td><%=tmp.getPhone() %></td>
					<td><a href="${pageContext.request.contextPath}/friend/delete.jsp?num=<%=tmp.getNum() %>">삭제</a></td>
					<td><a href="${pageContext.request.contextPath}/friend/updateform.jsp?num=<%=tmp.getNum() %>">수정</a></td>
				</tr>
			<%} %>
		</tbody>
	</table>
</body>
</html>