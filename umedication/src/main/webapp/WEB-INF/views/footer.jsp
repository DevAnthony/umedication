<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
	<div id="footer">
		<div class="container">
			<section>
				<header>
					<h2><spring:message code="catchphrase" /></h2>
					<span class="byline"><img
						src="<c:url value="/resources/images/urgo.png" />" /></span>
				</header>
				<ul class="contact">
					<li><a href="https://www.facebook.com/urgorevolutiongle/" target="_blank" class="fa fa-facebook"><span>Facebook</span></a></li>
					<li><a href="https://www.youtube.com/user/URGO21" target="_blank" class="fa fa-youtube"><span>Youtube</span></a></li>
				</ul>
			</section>
		</div>
	</div>
