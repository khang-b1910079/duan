<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>결과 읽기</title>
</head>
<body>
	<h3 style="text-decoration: underline;">결과:</h3>
	<br>
	<h4>총 정답 문장 수: ${total}/100</h4>
	<h4>정답 수 Listening: ${correctListening}/50</h4>
	<h4>정답 수 Reading: ${correctReading}/50</h4>

	<br>
	<a style="text-decoration: none;"
		href="<%=request.getContextPath()%>/listExam"> &larr; 다른 테스트를 해보세요</a>
	<br>
	<br>
	<a style="text-decoration: none;"
		href="<%=request.getContextPath()%>/listVocab"> &larr; 어휘 연습</a>
	<br>
	<br>
	<a style="text-decoration: none;" href="#"> &larr; 문법 연습</a>
	<br>
	<br>

</body>
</html>