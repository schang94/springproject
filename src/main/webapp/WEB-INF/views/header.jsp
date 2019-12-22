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
				</div>
				<div class="col-4 text-center">
					<a class="blog-header-logo text-dark" href="main">
						<h4>쇼핑몰 만들기</h4>
					</a>
				</div>
				<div class="col-4 d-flex justify-content-end align-items-center">
					<%
					String email = (String)session.getAttribute("email");
					if(email ==  null ||  email.equals("")){%>
					</a> <a class="p-2 small text-muted" href="join">회원가입</a>
					</a> <a class="p-2 small text-muted" href="login">로그인</a>
					<%}else{ %>
					</a> <a class="p-2 small text-muted" href="#">마이페이지</a>				
					</a> <a class="p-2 small text-muted" href="logout">로그아웃</a>				
					<%} %>
				</div>
			</div>
		</header>
		<nav class="navbar navbar-expand-lg">
			<ul class="navbar-nav mr-auto">
      			<li class="nav-item dropdown">
        			<a class="btn btn-default dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          			<img src="resources/img/menu.png">
	        		</a>
	        		<div class="dropdown-menu" aria-labelledby="navbarDropdown">
	        			<a class="dropdown-item" href="#">Action</a>
			          	<a class="dropdown-item" href="#">Another action</a>
			          	<div class="dropdown-divider"></div>
			          	<a class="dropdown-item" href="#">Something else here</a>
			        </div>
	      		</li>
    		</ul>
    		<div class="py-1 mb-2">
    			<ul class="navbar-nav">
    				<li class="nav-item">
			        	<a class="p-2 text-muted display-5" href="category">카테고리 추가</a>
			      	</li>
			      	<li class="nav-item">
			        	<a class="p-2 text-muted display-5" href="#">물품등록</a>
			      	</li>
    			</ul>
	  		</div>
		</nav>

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