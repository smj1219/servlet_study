<%@page import="java.util.List"%>
<%@page import="test.guest.dto.GuestDto"%>
<%@page import="test.guest.dao.GuestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%
	//GuestDao 객체의 참조값 얻어오기
	GuestDao dao=GuestDao.getInstance();
	//글목록 얻어오기
	List<GuestDto> list=dao.getList();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>방명록 목록입니다.</h1>
		<a href="${pageContext.request.contextPath}/guest/insertform.jsp">글작성</a>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>작성자</th>
					<th>내용</th>
					<th>등록일</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<%for(GuestDto tmp:list){ %>
				<tr>
					<td><%=tmp.getNum() %></td>
					<td><%=tmp.getWriter() %></td>
					<td>
						<textarea rows="5" readonly><%=tmp.getContent() %></textarea>
					</td>
					<td><%=tmp.getRegdate() %></td>
					<td><a href="updateform.jsp?num=<%=tmp.getNum()%>">수정</a></td>
					<td>
						<form action="delete.jsp" method="post">
							<!-- 화면상에 보이지는 않지만 폼 전송될 때 같이 전송되는 input -->
							<input type="hidden" name="num" value="<%=tmp.getNum() %>" />
							<input type="text" name="pwd" />
							<button type="submit">삭제</button>
						</form>
					</td>
				</tr>
				<%} %>
			</tbody>
		</table>
	</div>
</body>
</html>