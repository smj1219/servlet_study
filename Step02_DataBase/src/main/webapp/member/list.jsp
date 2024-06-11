<%@page import="test.friend.dto.FriendDto"%>
<%@page import="java.util.List"%>
<%@page import="test.member.dao.MemberDao"%>
<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//MemberDao 객체를 이용해서 회원 목록을 얻어온다. 
	MemberDao dao=new MemberDao();
	List<MemberDto> list= dao.getList();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="insertform.jsp">회원 추가</a>
	<br>
	<a href="${pageContext.request.contextPath}/member/insertform.jsp">회원 추가</a>
	<h3>회원 목록입니다.</h3>
	<table>
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
		<%for(MemberDto tmp:list){ %>
			<tr>
				<td><%=tmp.getNum() %></td>
				<td><%=tmp.getName() %></td>
				<td><%=tmp.getAddr() %></td>
				<td><a href="${pageContext.request.contextPath }/member/delete.jsp?num=<%=tmp.getNum() %>">삭제</a></td>
				<td><a href="${pageContext.request.contextPath }/member/updateform.jsp?num=<%=tmp.getNum() %>">수정</a></td>
			</tr>
		<%} %>
		</tbody>
	</table>
</body>
</html>