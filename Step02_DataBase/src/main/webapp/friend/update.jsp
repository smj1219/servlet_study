<%@page import="test.friend.dto.FriendDto"%>
<%@page import="test.friend.dao.FriendDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int num=Integer.parseInt(request.getParameter("num"));
	String name=request.getParameter("name");
	int phone=Integer.parseInt(request.getParameter("phone"));
	
	FriendDto dto=new FriendDto(num,name,phone);
	boolean isSucess=new FriendDao().update(dto);


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%if(isSucess){ %>
		<p>
			<strong><%=num %></strong>번 친구의 정보를 수정하였습니다.
			<a href="${pageContext.request.contextPath}/friend/list.jsp">친구 목록 확인하기</a>
		</p>
	<%} else{ %>
		alert("");
		
	<%} %>
</body>
</html>