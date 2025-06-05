<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>

<!-- common  -->
<link rel="stylesheet" href="/admin/css/common.css">
<!-- header.css -->
<link rel="stylesheet" href="/admin/css/header.css">
<!-- admin java -->
<script src="/admin/js/admin.js"></script>

<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/830842237b.js" crossorigin="anonymous"></script>

<!-- reset css -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@4.0.1/reset.min.css" />


<title>${pageTitle }</title>
</head>
<body>

	<header class="header">
	
	<section class="section">

		<div class="logo">
			<a href="#">TIMEPOD</a>
		</div>
				
		<div class="profile">
			<div class="profile_img"></div>
			<p class="login_name">YEO</p>
			<p class="author_level">MASTER</p>			
		</div>
		
		

		<nav class="top_menu">
		<span class="line"></span>
			<ul>
				<li>
					<div><i class="fa-light fa-earth-americas"></i></div>
					<p>TIMEPOD</p>
				</li>
				<li>
					<div><i class="fa-light fa-arrow-up-right-from-square"></i></div>
					<a href="#">사이트이동</a>
				</li>
			</ul>
		<span class="line"></span>	
		</nav>
		
		<p class="main_menu_tit">사이트 관리</p>
		<nav class="main_menu">
		
			<ul>
				<li>
					<div>
						<div>
							<div><i class="fa-light fa-chart-pie"></i></div>
							<a href="#">대시보드</a>
						</div>
					</div>
				</li>
				
				<li>
					<div>
						<div>
							<div><i class="fa-light fa-circle-user"></i></div>
							<a class="menu" href="#">회원관리</a>
						</div>
						<span><i class="fa-thin fa-chevron-down"></i></span>
					</div>
						<ul class="main_sub_menu">
							<li><i class="fa-light fa-angle-right"></i><a href="#">회원정보</a></li>
							<li><i class="fa-light fa-angle-right"></i><a href="#">메일발송</a></li>
						</ul>

					</li>
					<li>
						<div>
							<div>
								<div>
									<i class="fa-light fa-tag"></i>
								</div>
								<a class="menu" href="#">상품관리</a>
							</div>
							<span><i class="fa-thin fa-chevron-down"></i></span>
						</div>

						<ul class="main_sub_menu">
							<li><i class="fa-light fa-angle-right"></i><a href="#">POD목록</a></li>
							<li><i class="fa-light fa-angle-right"></i><a href="#">POD관리</a></li>
						</ul>
					</li>
					<li>
					<div>
						<div>
							<div><i class="fa-light fa-bag-shopping"></i></div>
							<a class="menu"  href="#">구매·배송</a>
						</div>
						<span><i class="fa-thin fa-chevron-down"></i></span>
					</div>
					
					<ul class="main_sub_menu">
						<li><i class="fa-light fa-angle-right"></i><a href="#">구매내역</a></li>
						<li><i class="fa-light fa-angle-right"></i><a href="#">결제·배송</a></li>
						<li><i class="fa-light fa-angle-right"></i><a href="#">환불·취소</a></li>
					</ul>					
				</li>
				<li>
					<div>
						<div>
							<div><i class="fa-light fa-comments"></i></div>
							<a class="menu"  href="#">CS 관리</a>
						</div>
						<span><i class="fa-thin fa-chevron-down"></i></span>
					</div>
					<ul class="main_sub_menu">
						<li><i class="fa-light fa-angle-right"></i><a href="#">문의목록</a></li>
						<li><i class="fa-light fa-angle-right"></i><a href="#">문의처리상태</a></li>
					</ul>
				</li>
				<li>
					<div>
						<div>
							<div><i class="fa-light fa-bell"></i></div>
							<a class="menu"  href="#">PUSH</a>
						</div>
						<span><i class="fa-thin fa-chevron-down"></i></span>
					</div>
					<ul class="main_sub_menu">
						<li><i class="fa-light fa-angle-right"></i><a href="#">알림·푸쉬</a></li>
					</ul>
				</li>
				<li>
					<div>
						<div>
							<div><i class="fa-light fa-user-gear"></i></div>
							<a class="menu"  href="#">admin관리</a>
						</div>
						<span><i class="fa-thin fa-chevron-down"></i></span>
					</div>
					<ul class="main_sub_menu">
						<li><i class="fa-light fa-angle-right"></i><a href="#">관리자목록</a></li>
					</ul>
				</li>
			</ul>
		</nav>
		
		<ul class="bottom_menu">
			<li>
				<a href="#"><i class="fa-light fa-arrow-left-from-bracket"></i> LOGOUT</a>
			</li>
			<li class="closeBtn">
				<a href="#"><i class="fa-regular fa-angles-left"></i></a>
			</li>
		</ul>
		
	</section>

	</header>

</body>
</html>