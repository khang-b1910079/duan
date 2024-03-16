<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Webtoeic - 로그인</title>
<link rel="stylesheet" href="<c:url value='/css/login.css'/>">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>


	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	<div class="login-page">
		<div class="form">
			<h2 class="form-signin-heading" style="text-align: center">WebToeic -
				로그인</h2>
			<hr>
			<c:if test="${param.error != null}">
				<div class="alert alert-danger">
					<p>사용자 이름 또는 암호가 올바르지 않습니다.</p>
				</div>
			</c:if>
			<c:if test="${param.logout != null}">
				<div class="alert alert-success">
					<p>당신은 성공적으로 로그 아웃했습니다.</p>
				</div>
			</c:if>
			<c:if test="${param.accessDenied != null}">
				<div class="alert alert-danger">
					<p>이 페이지에 액세스할 수 있는 권한이 없습니다.</p>
				</div>
			</c:if>

			<form class="login-form" method="POST" action="${contextPath}/login">

				<input type="text" placeholder="Email" name="email" required="required"
					style="padding: 10px;" /> <input type="password" placeholder="Mật khẩu"
					name="password" required="required" style="padding: 10px;" /> <input
					type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> <label
					style="padding-right: 130px; font-size: 15px;" id="label"> <input
					type="checkbox" class="form-check-input" id="" name="remember-me">
					로그인 유지
				</label> <input id="submit" type="submit" value="ĐĂNG NHẬP">
				<section class="section">
					<div class="container">
						<a class="btn btn-primary" style="margin-top: 10px;"
							href="/webtoeic/oauth2/authorization/facebook"> <i class="fa fa-facebook-square"></i> Đăng nhập với Facebook
						</a>
					</div>
				</section>
				<p class="message" style="font-size: 18; padding-top: 10px">
					계정 없음? <a href="<c:url value='/register'/> ">새 계정 생성</a>
				</p>
			</form>
		</div>
	</div>

	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

</body>
</html>