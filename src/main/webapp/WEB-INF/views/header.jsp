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


	.dropdown-submenu:hover .dropdown-menu,
	.dropdown-submenu:focus .dropdown-menu {
	  display: block;
	  margin-top: -1px;
	  margin-left: -1px;
	  top: 0px;
	  left: 100%;
	  min-height: 100%;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="resources/js/category_menuEvent.js"></script>

</head>
<body class="homepage is-preload">
	<div class=container-lg>
		<header class="blog-header py-3">
			<div class="row flex-nowrap justify-content-between align-items-center">
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
		<nav class="navbar navbar-expand-lg mb-5 border-bottom">
			<ul class="navbar-nav mr-auto">
      			<li class="nav-item dropdown" id="nav_menu">
        			<a class="btn btn-default" href="https://www.naver.com/" id="111navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          			<img src="resources/img/menu.png">
	        		</a>
	        		<ul class="dropdown-menu add-to-ul" aria-labelledby="navbarDropdown">
			          	
			        </ul>
	      		</li>
    		</ul>
    		<div class="py-1 mb-2">
    			<ul class="navbar-nav">
    				<li class="nav-item">
			        	<a class="p-2 text-muted display-5" href="category">카테고리 추가</a>
			      	</li>
			      	<li class="nav-item">
			        	<a class="p-2 text-muted display-5" href="product">물품등록</a>
			      	</li>
    			</ul>
	  		</div>
		</nav>

		