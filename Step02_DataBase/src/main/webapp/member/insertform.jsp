<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/insertform.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h3>회원 추가 양식</h3>
		<form action="${pageContext.request.contextPath}/member/insert.jsp" method="post">
			<div class="mb-3 row">
				<label for="name" class="col-form-label col-sm-2">이름</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" name="name" id="name"/>
				</div>
			</div>
			<div class="mb-3 row">
				<label for="addr" class="col-form-label col-sm-2">주소</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" name="addr" id="addr"/>
				</div>
			</div>
		
			<div class="input-group mb-3">
				<input class="form-control" type="text" name="name" placeholder="이름 입력...." />
				<input class="form-control" type="text" name="addr" placeholder="주소 입력...." />
			</div>
			<button type="submit" class="btn btn-outline-primary">추가</button>
		</form>
	</div>
</body>
</html>