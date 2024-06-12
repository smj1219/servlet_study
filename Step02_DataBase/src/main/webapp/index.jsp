<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/index.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
	<nav class="navbar bg-primary navbar-expand-md" data-bs-theme="dark">
		<div class="container">
			<a class="navbar-brand" href="${pageContext.request.contextPath }/index.jsp">Acorn</a>
			<button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target=".navbar-collapse">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse">
				<ul class="navbar-nav">
					<li class="nav-item">
						<a class="nav-link" href="${pageContext.request.contextPath }/member/list.jsp">회원목록</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="${pageContext.request.contextPath }/guest/list.jsp">방명록</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<h1>인텍스 페이지입니다</h1>
		<p>컨텍스트 경로(프로젝트명) : <strong>${pageContext.request.contextPath}</strong></p>
		<ul class="nav flex-column">
			<li class="nav-item">
			<a class="nav-link" href="${pageContext.request.contextPath}">Connection 객체 얻어오기 테스트</a></li>
			<li class="nav-item">
			<a class="nav-link" href="${pageContext.request.contextPath}/member/list.jsp">회원 목록 보기</a></li>
			<li class="nav-item">
			<a class="nav-link" href="${pageContext.request.contextPath}/friend/list.jsp">친구 목록 보기</a></li>
			<li class="nav-item">
			<a class="nav-link" href="${pageContext.request.contextPath}/guest/list.jsp">방명록</a></li>
		</ul>
	</div>
</body>
</html>