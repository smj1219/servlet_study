<%@page import="test.guest.dto.GuestDto"%>
<%@page import="test.guest.dao.GuestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//폼 전송되는 삭제할 글의 글번호와 비밀번호를 추출해서
	int num=Integer.parseInt(request.getParameter("num"));
	String pwd=request.getParameter("pwd");
	
	GuestDao dao=GuestDao.getInstance();
	// 삭제할 글정보를 얻어와서
	GuestDto dto=dao.getData(num);
	//비밀번호가 일치하는지 확인 (java에서 문자열의 내용이 같은지 비교할때는 .equals() 메소드 사용)
	if(pwd.equals(dto.getPwd())){
		//DB에서 실제로 삭제하고
		dao.delete(num);
		// /guest/list.jsp 페이지로 리다일렉트 이동하라는 응답하기
		String cPath=request.getContextPath();
		response.sendRedirect(cPath+"/guest/list.jsp");
	} 
	
	//삭제 실패임을 응답한다
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		alert("비밀번호가 일치하지 않습니다.");
		location.href="${pageContext.request.contextPath}/guest/list.jsp";
	</script>
</body>
</html>