<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>

<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>

<!-- common  -->
<link rel="stylesheet" href="/admin/css/common.css">
<link rel="stylesheet" href="/admin/css/login.css">

<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/830842237b.js" crossorigin="anonymous"></script>

<!-- reset css -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@4.0.1/reset.min.css" />

<meta charset="UTF-8">
<title>${pageTitle }</title>
</head>
<body>

	<section class="section">
		<div class="left_banner">
			<div class="logo_box">
				<img src="/img/white_logo_slogan.png" alt="logo" />
			</div>
			
			<div class="user_home_btn_box">
				<i class="fa-light fa-link"></i>
				<a  class="user_home_btn" href="#">HOMEPAGE</a>
			</div>
		
		</div>
		
		<div class="login_area">
			
			<div class="login_form_box">
			
				<form id="login_form" action="/timepod/admin/doLogin" method="post">
					
					<h3 class="login_tit">WELCOME</h3>
					
					<div class="login_info">
						<p>TIMEPOD ADMIN PAGE</p>
						<p><span>관리자 전용</span> 페이지입니다.</p>
					</div>
					
					<input type="text" name="loginId" id="login_id" placeholder="ID"/>
					<input type="password" name="loginPw" id="login_pw" placeholder="PW"/>
					<a href="#" class="forgot_account">Forgot Account?</a>
					<input type="submit" id="login_btn" value = "SUBMIT">	
				
				</form>
			
			
			</div>
	
			<a href="#" class="sign_up_btn">SIGN UP</a>
		
		</div>

	</section>

</body>
</html>