<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


	<c:forEach var="m" items="${ dataMain}">
	<li class="dropdown-submenu">
		<a class="dropdown-item" href="#">${m.c_main}</a>
		<div class="dropdown-menu top add-to-dropdown-div">	
		<c:forEach var="a" items="${ dataAll }">
			<c:if test="${ m.c_main.equals(a.c_main) }">
				<a class="dropdown-item" href="#">${a.c_sub}</a>		
			</c:if>
		</c:forEach>
  		</div>
	</li>
	</c:forEach>
