<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<style type="text/css">
	.container {max-width: 960px;}
	.lh-condensed { line-height: 1.25; }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body class="homepage is-preload">
	<div class="container">
		<header class="blog-header py-3">
			<div
				class="row flex-nowrap justify-content-between align-items-center">
				<div class="col-4 pt-1">
					<a class="text-muted" href="main">Subscribe</a>
				</div>
				<div class="col-4 text-center">
					<a class="blog-header-logo text-dark" href="main">쇼핑몰 만들기</a>
				</div>
				<div class="col-4 d-flex justify-content-end align-items-center">
					<%
					String email = (String)session.getAttribute("email");
					if(email ==  null ||  email.equals("")){%>
					</a> <a class="btn btn-sm" href="join">회원가입</a>
					</a> <a class="btn btn-sm" href="login">로그인</a>
					<%}else{ %>
					</a> <a class="btn btn-sm" href="#">마이페이지</a>				
					</a> <a class="btn btn-sm" href="logout">로그아웃</a>				
					<%} %>
				</div>
			</div>
		</header>

		<div class="nav-scroller py-1 mb-2">
			<nav class="nav d-flex justify-content-between">
				<a class="p-2 text-muted" href="#">World</a> <a
					class="p-2 text-muted" href="#">U.S.</a> <a class="p-2 text-muted"
					href="#">Technology</a> <a class="p-2 text-muted" href="#">Design</a>
				<a class="p-2 text-muted" href="#">Culture</a> <a
					class="p-2 text-muted" href="#">Business</a> <a
					class="p-2 text-muted" href="#">Politics</a> <a
					class="p-2 text-muted" href="#">Opinion</a> <a
					class="p-2 text-muted" href="#">Science</a> <a
					class="p-2 text-muted" href="#">Health</a> <a
					class="p-2 text-muted" href="#">Style</a> <a class="p-2 text-muted"
					href="#">Travel</a>
			</nav>
		</div>

		<div class="jumbotron p-4 p-md-5 text-white rounded bg-dark">
			<div class="col-md-6 px-0">
				<h1 class="display-4 font-italic">Title of a longer featured
					blog post</h1>
				<p class="lead my-3">Multiple lines of text that form the lede,
					informing new readers quickly and efficiently about what’s most
					interesting in this post’s contents.</p>
				<p class="lead mb-0">
					<a href="#" class="text-white font-weight-bold">Continue
						reading...</a>
				</p>
			</div>
		</div>